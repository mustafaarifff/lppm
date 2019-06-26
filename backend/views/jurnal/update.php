<?php

use yii\helpers\Html;
use backend\assets\AppAssetPage;

/* @var $this yii\web\View */
/* @var $model common\models\Jurnal */

$this->title = Yii::t('app', 'Update Jurnal: {name}', [
    'name' => $model->id,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Jurnals'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
AppAssetPage::register($this);
?>
<div class="jurnal-update">
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

