<?php

namespace frontend\controllers;

use Yii;
use app\models\Outcome;
use app\models\User;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * OutcomeController implements the CRUD actions for Outcome model.
 */
class OutcomeController extends Controller
{
    
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }


    /**
     * Lists all Outcome models.
     * @return mixed
     */
    public function actionIndex()
    {
        $user = User::find()->select('outcome')->where(['id' => Yii::$app->user->identity->id])->all();
        $query = Outcome::find()->where(['id_buku' => \yii\helpers\Json::decode($user[0]['outcome'])]);
        
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        return $this->render('index', [
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

    // public function actionUpload()
    // {
    //     $model = new Outcome();

    //     if (Yii::$app->request->isPost) {
    //         $model->file = UploadedFile::getInstance($model, 'file');

    //         if ($model->file && $model->validate()) {                
    //             $model->file->saveAs('uploads/' . $model->file->baseName . '.' . $model->file->extension);
    //         }
    //     }

    //     return $this->render('upload', ['model' => $model]);
    // }

    /**
     * Creates a new Outcome model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Outcome();
        $model->scenario = 'create';
        $fileName = $model->id_buku;

        if ($model->load(Yii::$app->request->post())) {
            
            if($model->jenis_file == 'ps'){
                $model->id_buku = 'ps-' .Yii::$app->formatter->asTimestamp(date('Y-d-m h:i:s'));
            }
            
            $file = UploadedFile::getInstance($model, 'file');
            $model->file = $model->id_buku . '.' . $file->extension;
            
            if($model->save()){
                $this->actionSaveToUser($model->id_buku);
                $file->saveAs('uploads/' . $model->id_buku . '.' . $file->extension);
                return $this->redirect(['view', 'id' => $model->id_buku]);
            } else{
                // print_r($model->errors);
                // exit;
            }
        }

        return $this->render('create', [
            'model' => $model,
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
        $fileLama = $model->file;
        if ($model->load(Yii::$app->request->post())) {
            $model->file = $fileLama;
            $file = UploadedFile::getInstance($model, 'file');
            if($model->save()){
                if($file != null){
                    $file->saveAs('uploads/' . $fileLama);
                }
                return $this->redirect(['view', 'id' => $model->id_buku]);
            }
        }

        return $this->render('update', [
            'model' => $model,
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

    public function actionSaveToUser($id_buku){
        $user = User::find()->select('outcome')->where(['id' => Yii::$app->user->identity->id])->all();
        $db_user = User::findOne(Yii::$app->user->identity->id);
        // var_dump($db_user);
        // exit;
        $outcomes[] = \yii\helpers\Json::decode($user[0]['outcome']);
        $outcome = $outcomes[0];
        $outcome[] = $id_buku;
        
        $db_user->outcome = \yii\helpers\Json::encode($outcome);
        $db_user->save();
    }

    public function actionDeleteFromUser($id_buku){
        $user = User::find()->select('outcome')->where(['id' => Yii::$app->user->identity->id])->all();
        $db_user = User::findOne(Yii::$app->user->identity->id);

        $outcomes[] = \yii\helpers\Json::decode($user[0]['outcome']);
        $outcome = $outcomes[0];
        // print_r($outcome);
        if (($key = array_search($id_buku, $outcome)) !== false) {
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
