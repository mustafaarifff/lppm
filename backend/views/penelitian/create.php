<?php

use yii\helpers\Html;
use backend\assets\AppAssetPage;

/* @var $this yii\web\View */
/* @var $model common\models\Penelitian */

$this->title = Yii::t('app', 'Tambah Penelitian');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Penelitians'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
AppAssetPage::register($this);
// var_dump(Yii::$app->request->post());
//             exit;

?>

<div class="penelitian-create">
    <div class="content">
        <div class="row" data-toggle="appear">
            <div class="col-12 col-xl-12">
                <div class="block">
                    <div class="block-content block-content-full">
                        <h1><?= Html::encode($this->title) ?></h1>

                        <?= $this->render('_form', [
                            'model' => $model,
                            'cluster' => $cluster,
                            'fakultas' => $fakultas,
                            'rak' => $rak,
                        ])
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
