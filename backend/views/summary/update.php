<?php

use yii\helpers\Html;
use backend\assets\AppAssetPage;

/* @var $this yii\web\View */
/* @var $model common\models\Summary */

$this->title = Yii::t('app', 'Update Summary: {name}', [
    'name' => $model->id_buku,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Summaries'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_buku, 'url' => ['view', 'id' => $model->id_buku]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
AppAssetPage::register($this);

?>
<div class="summary-update">
    <div class="content">
        <div class="row" data-toggle="appear">
            <div class="col-12 col-xl-12">
                <div class="block">
                    <div class="block-content block-content-full">
                        <h1><?= Html::encode($this->title) ?></h1>

                        <?= $this->render('_form', [
                            'model' => $model,
                            'rak' => $rak,
                            'jenisJurnal' => $jenisJurnal,
                        ]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
