<?php

use yii\helpers\Html;
use backend\assets\AppAssetPage;

/* @var $this yii\web\View */
/* @var $model common\models\Buku */

$this->title = Yii::t('app', 'Update Buku: {name}', [
    'name' => $model->isbn,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Bukus'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->isbn, 'url' => ['view', 'id' => $model->isbn]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="buku-update">
    <div class="content">
        <div class="row" data-toggle="appear">
            <div class="col-12 col-xl-12">
                <div class="block">
                    <div class="block-content block-content-full">
                    <h1><?= Html::encode($this->title) ?></h1>

                    <?= $this->render('_form', [
                        'model' => $model,
                    ]) ?>

                </div>
                </div>
            </div>
        </div>
    </div>
</div>