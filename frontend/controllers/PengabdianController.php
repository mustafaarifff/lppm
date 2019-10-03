<?php

namespace frontend\controllers;

use Yii;
use app\models\Pengabdian;
use app\models\PengabdianSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\Cluster;
use app\models\Fakultas;
use app\models\Rak;
use yii\helpers\ArrayHelper;
use frontend\auth\Auth;

/**
 * PengabdianController implements the CRUD actions for Pengabdian model.
 */
class PengabdianController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        $this->layout= Auth::getRole();
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
     * Lists all Pengabdian models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PengabdianSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        
        $cluster = Cluster::find()->all();
        $cluster = ArrayHelper::map($cluster,'id_cluster','nama_cluster');

        $fakultas = Fakultas::find()->all();
        $fakultas = ArrayHelper::map($fakultas,'id_fakultas','nama_fakultas');

        $rak = Rak::find()->all();
        $rak = ArrayHelper::map($rak,'id_rak','nama_rak');

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'cluster' => $cluster,
            'fakultas' => $fakultas,
            'rak' => $rak,
        ]);
    }

    /**
     * Displays a single Pengabdian model.
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
     * Creates a new Pengabdian model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Pengabdian();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->no_sk]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Pengabdian model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->no_sk]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Pengabdian model.
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
     * Finds the Pengabdian model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Pengabdian the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Pengabdian::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
