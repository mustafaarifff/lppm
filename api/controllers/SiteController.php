<?php

namespace api\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use common\auth\Auth;
use common\models\Penelitian;
use common\models\Pengabdian;
use common\models\Buku;
use common\models\Jurnal;

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
        $pengabdian = Pengabdian::find()->count();
        $buku = Buku::find()->count();
        $jurnal = Jurnal::find()->count();
        $tahunPenelitian = Penelitian::find()->select('tahun')->distinct()->orderBy('tahun')->all();
        $tahunPengabdian = Pengabdian::find()->select('tahun')->distinct()->orderBy('tahun')->all();
        $tahunBuku = Buku::find()->select('tahun')->distinct()->orderBy('tahun')->all();
        $tahunJurnal = Jurnal::find()->select('tahun')->distinct()->orderBy('tahun')->all();
        $tj =null;
        $tahunJ =null;
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
        
        $k = 0;
        foreach($tahunPengabdian as $tahun){
            $tahunPb[$k] = $tahun['tahun'];
            $tpb[$tahun['tahun']] = Pengabdian::find()->select('tahun')->where(['tahun' => $tahun['tahun']])->count();
            $clusterPb[$tahun['tahun']] = Pengabdian::find()->with(['cluster'])->select('id_cluster')->where(['tahun' => $tahun['tahun']])->distinct()->all();
            foreach($clusterPb[$tahunP[$k]] as $cls){
                $hitungClusterPb[$tahun['tahun']][$cls['cluster']['nama_cluster']] = Pengabdian::find()->with(['cluster'])->where(['tahun' => $tahun['tahun'], 'id_cluster' => [$cls['cluster']['id_cluster']]])->count();
            }
            $k++;
        }

        $b = 0;
        foreach($tahunBuku as $thnbuku){
            $tahunB[$b] = $thnbuku['tahun'];
            $tb[$thnbuku['tahun']] = Buku::find()->select('tahun')->where(['tahun'=>$thnbuku['tahun']])->count();
            $b++;
        }
        $j = 0;
        foreach($tahunJurnal as $thnjurnal){
            $tahunJ[$j] = $thnjurnal['tahun'];
            $tj[$thnjurnal['tahun']] = Jurnal::find()->select('tahun')->where(['tahun'=>$thnjurnal['tahun']])->count();
            $j++;
        }

        $this->layout = Auth::getrole();
        return $this->render('index', [
            'penelitian' => $penelitian,    
            'tp' => $tp,
            'tahunP' => $tahunP,
            'cluster' => $cluster,
            'hitungCluster'=> $hitungCluster,

            'pengabdian' => $pengabdian,    
            'tpb' => $tpb,
            'tahunPb' => $tahunPb,
            'clusterPb' => $clusterPb,
            'hitungClusterPb'=> $hitungClusterPb,

            'buku'      =>  $buku,
            'tb'        =>  $tb,
            'tahunB'    =>  $tahunB,

            'jurnal'    =>  $jurnal,
            'tj'        =>  $tj,
            'tahunJ'    =>  $tahunJ,

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
