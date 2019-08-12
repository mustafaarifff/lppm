<?php

namespace frontend\controllers;

use Yii;
use app\models\Penelitian;
use frontend\models\PenelitianSearch;
use yii\web\Controller;
use yii\data\ActiveDataProvider;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\UploadForm;
use yii\web\UploadedFile;
use app\models\Cluster;
use app\models\Fakultas;
use app\models\Rak;
use yii\helpers\ArrayHelper;
use frontend\auth\Auth;

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

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
             'cluster' => $cluster,
            'fakultas' => $fakultas,
            'rak' => $rak,
        ]);
    }

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

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
