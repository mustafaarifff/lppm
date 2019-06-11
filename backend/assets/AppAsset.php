<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
//        'css/site.css',
        'assets/css/codebase.min.css'
    ];
    public $js = [
        "assets/js/core/jquery.min.js",
        "assets/js/codebase.core.min.js",
        "assets/js/codebase.app.min.js",
        "assets/js/plugins/chartjs/Chart.bundle.min.js",
        "assets/js/pages/be_pages_dashboard.min.js",
        "js/canvas.min.js"

    ];
    public $depends = [
//         'yii\web\YiiAsset',
// //        'yii\bootstrap\BootstrapAsset',
    ];
}
