<?php

namespace frontend\controllers;

use Yii;
use app\models\Outcome;
use frontend\models\OutcomeSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use frontend\auth\Auth;

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
     * Lists all Outcome models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new OutcomeSearch();
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
