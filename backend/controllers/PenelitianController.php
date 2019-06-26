<?php

namespace backend\controllers;

use Yii;
use common\models\Penelitian;
use common\models\PenelitianSearch;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\UploadForm;
use yii\web\UploadedFile;
use common\models\Cluster;
use common\models\Fakultas;
use common\models\Rak;
use yii\helpers\ArrayHelper;
use common\auth\Auth;

/**
 * PenelitianController implements the CRUD actions for Penelitian model.
 */
class PenelitianController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        $this->layout= Auth::getRole();
        
        return Auth::behaviors([
            'deny' => function ($rule, $action){
                $this->redirect(['site/login']);
            },
        ]);
    }
    // public function behaviors()
    // {
    //     $this->layout= Auth::getRole();

    //     return Auth::behaviors([
    //         'deny' => function ($rule, $action){
    //             $this->redirect(['site/login']);
    //         },
    //     ]);
    // }

    /**
     * Lists all Penelitian models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PenelitianSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        $cluster = Cluster::find()->all();
        $cluster = ArrayHelper::map($cluster,'id_cluster','nama_cluster');

        $fakultas = Fakultas::find()->all();
        $fakultas = ArrayHelper::map($fakultas,'id_fakultas','nama_fakultas');

        $rak = Rak::find()->all();
        $rak = ArrayHelper::map($rak,'id_rak','nama_rak');

        // $search = Yii::$app->request->queryParams;

        // $query = Penelitian::find()->joinWith('cluster');
        // $query = Penelitian::find()->joinWith('fakultas');
        // $query = Penelitian::find()->joinWith('rak');
        
        // if(!empty($search['id_cluster'])){
        // $query->andFilterWhere(['like', 'id_cluster', $search['id_cluster']]);
        //     }

        // if(!empty($search['id_fakultas'])){
        //     $query->andFilterWhere(['like', 'id_fakultas', $search['id_fakultas']]);
        //     }

        // if(!empty($search['id_rak'])){
        //     $query->andFilterWhere(['like', 'rak.id_rak', $search['id_rak']]);
        //     }

        // $dataProvider = new ActiveDataProvider([
        //     'query' => $query,
        // ]);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'cluster' => $cluster,
            'fakultas' => $fakultas,
            'rak' => $rak,
        ]);
    }
    // public function actionIndex()
    // {
    //     $searchModel = new PenelitianSearch();
    //     $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

    //     return $this->render('index', [
    //         'searchModel' => $searchModel,
    //         'dataProvider' => $dataProvider,
    //     ]);
    // }

    /**
     * Displays a single Penelitian model.
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
     * Creates a new Penelitian model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {        
        $model = new Penelitian();

        $cluster = Cluster::find()->all();
        $cluster = ArrayHelper::map($cluster,'id_cluster','nama_cluster');

        $fakultas = Fakultas::find()->all();
        $fakultas = ArrayHelper::map($fakultas,'id_fakultas','nama_fakultas');

        $rak = Rak::find()->all();
        $rak = ArrayHelper::map($rak,'id_rak','nama_rak');

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            // var_dump(Yii::$app->request->post());
            // exit;
            return $this->redirect(['view', 'id' => $model->no_sk]);
        }

        return $this->render('create', [
            'model' => $model,
            'cluster' => $cluster,
            'fakultas' => $fakultas,
            'rak' => $rak,
        ]);
    }

    public function actionUpload()
    {
        $model = new UploadForm();

        if (Yii::$app->request->isPost) {
            $model->file = UploadedFile::getInstance($model, 'file');

            if ($model->validate()) {
                $model->file->saveAs('uploads/' . $model->file->baseName . '.' . $model->file->extension);
            }
        }

        return $this->render('upload', ['model' => $model]);
    }

    /**
     * Updates an existing Penelitian model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        $cluster = Cluster::find()->all();
        $cluster = ArrayHelper::map($cluster,'id_cluster','nama_cluster');

        $fakultas = Fakultas::find()->all();
        $fakultas = ArrayHelper::map($fakultas,'id_fakultas','nama_fakultas');
        
        $rak = Rak::find()->all();
        $rak = ArrayHelper::map($rak,'id_rak','nama_rak');

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->no_sk]);
        }

        return $this->render('update', [
            'model' => $model,
            'cluster' => $cluster,
            'fakultas' => $fakultas,
            'rak' => $rak,
        ]);
    }


    /**
     * Deletes an existing Penelitian model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Penelitian model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Penelitian the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Penelitian::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
