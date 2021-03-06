<?php
namespace frontend\controllers;

use Yii;
use app\models\Outcome;
use yii\base\InvalidArgumentException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use frontend\models\PasswordResetRequestForm;
use frontend\models\ResetPasswordForm;
use frontend\models\SignupForm;
use frontend\models\ContactForm;

use yii\data\ActiveDataProvider;
use app\models\Penelitian;
use app\models\Pengabdian;
use app\models\User;
use frontend\auth\Auth;
use app\models\Buku;
use app\models\Jurnal;
use common\models\Pengabdian as CommonPengabdian;

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
        $this->layout= Auth::getRole();
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
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
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Displays grafik.
     *
     * @return mixed
     */
    public function actionGrafik()
    {
        $penelitian = Penelitian::find()->count();
        $tahunPenelitian = Penelitian::find()->select('tahun')->distinct()->orderBy('tahun')->all();
        $pengabdian = Pengabdian::find()->count();
        $tahunPengabdian = Pengabdian::find()->select('tahun')->distinct()->orderBy('tahun')->all();
        $buku = Buku::find()->count();
        $tahunBuku = Buku::find()->select('tahun')->distinct()->orderBy('tahun')->all();
        $jurnal = Jurnal::find()->count();
        $tahunJurnal =Jurnal::find()->select('tahun')->distinct()->orderBy('tahun')->all();


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


        return $this->render('grafik', [
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
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            // return $this->goBack();
            // $user = User::find()->select('outcome')->where(['id' => Yii::$app->user->identity->id])->all();
            // $dataProvider = new ActiveDataProvider([
            //     'query' => Outcome::find()->where(['id_buku' => \yii\helpers\Json::decode($user[0]['outcome'])]),
            // ]);
            // return $this->render('//outcome/index', [
            //     'dataProvider' => $dataProvider,
            // ]);
            return $this->redirect(['my-outcome/index']);
        } else {
            $model->password = '';

            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logs out the current user.
     *
     * @return mixed
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return mixed
     */
    public function actionContact()
    {
        return $this->render('contact1');   
    }

    /**
     * Displays about page.
     *
     * @return mixed
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    /**
     * Signs user up.
     *
     * @return mixed
     */
    public function actionSignup()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->request->post())) {
            if ($user = $model->signup()) {
                if (Yii::$app->getUser()->login($user)) {
                    return $this->goHome();
                }
            }
        }

        return $this->render('signup', [
            'model' => $model,
        ]);
    }

    /**
     * Requests password reset.
     *
     * @return mixed
     */
    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');

                return $this->goHome();
            } else {
                Yii::$app->session->setFlash('error', 'Sorry, we are unable to reset password for the provided email address.');
            }
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

    /**
     * Resets password.
     *
     * @param string $token
     * @return mixed
     * @throws BadRequestHttpException
     */
    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);
        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->session->setFlash('success', 'New password saved.');

            return $this->goHome();
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }

}
