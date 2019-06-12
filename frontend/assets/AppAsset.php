<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web/themes/minimal/';
    public $css = [
        'css/minimal-main.css',
        'css/theme.css',
        'css/uikit.min.css',
    ];
    public $js = [
        'js/uikit.min.js',
        'js/uikit-icons.min.js',
        "js/canvas.min.js"
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
