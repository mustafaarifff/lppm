<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class LoginAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
//        'css/site.css',
        'assets/css/codebase.min.css'
    ];
    public $js = [
        "assets/js/codebase.core.min.js",
        "assets/js/codebase.app.min.js",
//        "assets/js/pages/op_auth_signin.min.js"
    ];
    public $depends = [
//        'yii\web\YiiAsset',
//        'yii\bootstrap\BootstrapAsset',
    ];
}
