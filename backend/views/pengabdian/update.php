<?php

use yii\helpers\Html;
use backend\assets\AppAssetPage;

/* @var $this yii\web\View */
/* @var $model common\models\Pengabdian */

$this->title = Yii::t('app', 'Update Pengabdian: {name}', [
    'name' => $model->no_sk,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Pengabdians'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->no_sk, 'url' => ['view', 'id' => $model->no_sk]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
AppAssetPage::register($this);

?>
<div class="pengabdian-update">
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
                        ]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
