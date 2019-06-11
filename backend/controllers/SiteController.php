<?php

namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use common\auth\Auth;
use common\models\Penelitian;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $penelitian = Penelitian::find()->count();
        $tahunPenelitian = Penelitian::find()->select('tahun')->distinct()->orderBy('tahun')->all();
        
        $i = 0;
        foreach($tahunPenelitian as $tahun){
            // echo $tahun['tahun']."<br>";
            $tahunP[$i] = $tahun['tahun'];
            $tp[$tahun['tahun']] = Penelitian::find()->select('tahun')->where(['tahun' => $tahun['tahun']])->count();
            $cluster[$tahun['tahun']] = Penelitian::find()->with(['cluster'])->select('id_cluster')->where(['tahun' => $tahun['tahun']])->distinct()->all();
            foreach($cluster[$tahunP[$i]] as $cls){
                $hitungCluster[$tahun['tahun']][$cls['cluster']['nama_cluster']] = Penelitian::find()->with(['cluster'])->where(['tahun' => $tahun['tahun'], 'id_cluster' => [$cls['cluster']['id_cluster']]])->count();
            }
            $i++;
        }
        
        $this->layout = Auth::getrole();
        return $this->render('index', [
            'penelitian' => $penelitian,    
            'tp' => $tp,
            'tahunP' => $tahunP,
            'cluster' => $cluster,
            'hitungCluster'=> $hitungCluster,
        ]);
        
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {

        $this->layout = 'main-login';
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $model->password = '';

            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
