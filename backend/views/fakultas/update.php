<?php

use yii\helpers\Html;
use backend\assets\AppAssetPage;

/* @var $this yii\web\View */
/* @var $model common\models\Fakultas */

$this->title = Yii::t('app', 'Update Fakultas: {name}', [
    'name' => $model->nama_fakultas,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Fakultas'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_fakultas, 'url' => ['view', 'id' => $model->id_fakultas]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
AppAssetPage::register($this);
?>
<div class="fakultas-update">
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
