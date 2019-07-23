<?php

namespace frontend\controllers;

use Yii;
use app\models\Outcome;
use frontend\models\MyOutcomeSearch;
use app\models\User;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use app\models\JenisJurnal;
use yii\helpers\ArrayHelper;
use frontend\auth\Auth;

/**
 * OutcomeController implements the CRUD actions for Outcome model.
 */
class MyOutcomeController extends Controller
{
    
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        // return [
        //     'verbs' => [
        //         'class' => VerbFilter::className(),
        //         'actions' => [
        //             'delete' => ['POST'],
        //         ],
        //     ],
        // ];
        return Auth::behaviors([
            'deny' => function ($rule, $action){
                $this->redirect(['site/login']);
            },
        ]);
    }


    /**
     * Lists all Outcome models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new MyOutcomeSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Outcome model.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Outcome model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Outcome();
        $model->scenario = 'create';
        $fileName = $model->id;

        $jenisJurnal = JenisJurnal::find()->all();
        $jenisJurnal = ArrayHelper::map($jenisJurnal,'id','nama_jenis_jurnal');

        if ($model->load(Yii::$app->request->post())) {
            
            if($model->jenis_outcome == 'Prosiding Seminar'){
                $model->id = 'PS' . Yii::$app->formatter->asTimestamp(date('Y-d-m h:i:s'));
            }
            
            $file = UploadedFile::getInstance($model, 'file');
            $model->file = $model->id . '.' . $file->extension;
            
            if($model->save()){
                $this->actionSaveToUser($model->id);
                $file->saveAs('uploads/' . $model->id . '.' . $file->extension);
                return $this->redirect(['view', 'id' => $model->id]);
            } else{
                // print_r($model->errors);
                // exit;
            }
        }

        return $this->render('create', [
            'model' => $model,
            'jenisJurnal' => $jenisJurnal,
        ]);
    }

    /**
     * Updates an existing Outcome model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $jenisJurnal = JenisJurnal::find()->all();
        $jenisJurnal = ArrayHelper::map($jenisJurnal,'id','nama_jenis_jurnal');

        $fileLama = $model->file;
        if ($model->load(Yii::$app->request->post())) {
            $model->file = $fileLama;
            $file = UploadedFile::getInstance($model, 'file');
            if($model->save()){
                if($file != null){
                    $file->saveAs('uploads/' . $fileLama);
                }
                return $this->redirect(['view', 'id' => $model->id]);
            }
        }

        return $this->render('update', [
            'model' => $model,
            'jenisJurnal' => $jenisJurnal,
        ]);
    }

    /**
     * Deletes an existing Outcome model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        if($this->findModel($id)->delete()){
            $this->actionDeleteFromUser($id);
            Yii::$app->session->setFlash('success', "Berhasil menghapus publikasi");
        }

        return $this->redirect(['index']);
    }

    /**
     * Finds the Outcome model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Outcome the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Outcome::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionSaveToUser($id){
        $user = User::find()->select('outcome')->where(['id' => Yii::$app->user->identity->id])->all();
        $db_user = User::findOne(Yii::$app->user->identity->id);
        // var_dump($db_user);
        // exit;
        $outcomes[] = \yii\helpers\Json::decode($user[0]['outcome']);
        $outcome = $outcomes[0];
        $outcome[] = $id;
        
        $db_user->outcome = \yii\helpers\Json::encode($outcome);
        $db_user->save();
    }

    public function actionDeleteFromUser($id){
        $user = User::find()->select('outcome')->where(['id' => Yii::$app->user->identity->id])->all();
        $db_user = User::findOne(Yii::$app->user->identity->id);

        $outcomes[] = \yii\helpers\Json::decode($user[0]['outcome']);
        $outcome = $outcomes[0];
        // print_r($outcome);
        if (($key = array_search($id, $outcome)) !== false) {
            unset($outcome[$key]); 
        }
        // print_r($outcome);
        $db_user->outcome = \yii\helpers\Json::encode($outcome);
        $db_user->save();
    }

    public function actionDownload($name) {
        $path = Yii::getAlias('@webroot') . '/uploads';
     
        $file = $path . '/' . $name;
     
        if (file_exists($file)) {
     
            return Yii::$app->response->sendFile($file);
     
        } else {
            throw new NotFoundHttpException("File tidak ditemukan");
        }
     }
}
