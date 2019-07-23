<?php

namespace frontend\auth;

use Yii;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;

class Auth extends AuthAbstract
{
    /**
     * Roles and permission
     *
     * @var array $roles
     */
    protected static $roles = [
        'dosen' => [
            'my-outcome.index',
            'my-outcome.create',
            'my-outcome.update',
            'my-outcome.view',
            'my-outcome.delete',
        ],
    ];

    private static $controller;
    private static $action;

    /**
     * Periksa authorization
     *
     * @param $action
     * @param $user
     *
     * @return bool
     */
    public static function authorization($action, $user = null)
    {
        self::$action = $action->id;
        self::$controller = $action->controller->id;

        $user = isset(Yii::$app->user->identity->hak_akses) ?
            Yii::$app->user->identity->hak_akses : $user;

        if ($user) {
            if (isset(self::$roles[$user])) {
                return in_array(
                    self::$controller . '.' . self::$action,
                    self::$roles[$user]
                );
            }
        }

        return self::checkOpenAuth();
    }

    /**
     * handle all behaviors of controller class
     *
     * @param array $params
     * @return array
     */
    public static function behaviors($params)
    {
        $params = new \ArrayObject($params, \ArrayObject::ARRAY_AS_PROPS);

        self::setOpenAuth('site', 'login');

        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => [
                    'logout',
                    'index',
                    'create',
                    'balas',
                    'update',
                    'delete'
                ],
                'rules' => [
                    [
                        'actions' => [
                            'logout',
                            'index',
                            'create',
                            'balas',
                            'update',
                            'delete'
                        ],
                        'allow' => true,
                        'matchCallback' =>
                            isset($params->match) ? $params->match :
                                function ($rule, $action) {
                                    return Auth::authorization($action);
                                },
                    ],
                ],

                'denyCallback' =>
                    isset($params->deny) ?
                        $params->deny : new \Exception()
            ],
            
        ];
    }

    private static $openAuth = [];

    /**
     * memeriksa akses control yang terbuka
     *
     * @return bool
     */
    public static function checkOpenAuth()
    {
        if (self::$controller && self::$action) {
            return in_array(self::$controller . '.' . self::$action,
                self::$openAuth) ? true : false;
        }

        return false;
    }

    /**
     * mengatur controller dengan action yang terbuka
     *
     * @param $controller
     * @param $action
     */
    public static function setOpenAuth($controller, $action)
    {
        self::$openAuth[] = $controller . "." . $action;
    }

    /**
     * mengambil role saat ini
     *
     * @return string
     */
    public static function getRole()
    {
		if(isset(Yii::$app->user->identity->hak_akses)){
			return Yii::$app->user->identity->hak_akses;
		} else {
			return false;
		}
    }

    /**
     * memeriksa role
     *
     * @return string
     */
    public static function checkRole($role)
    {
        return Yii::$app->user->identity->hak_akses === $role;
    }
}
