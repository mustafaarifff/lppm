<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\JurnalSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="jurnal-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'issn') ?>

    <?= $form->field($model, 'penulis') ?>

    <?= $form->field($model, 'judul') ?>

    <?= $form->field($model, 'tema') ?>

    <?php // echo $form->field($model, 'volume') ?>

    <?php // echo $form->field($model, 'nomor') ?>

    <?php // echo $form->field($model, 'tahun') ?>

    <?php // echo $form->field($model, 'stok') ?>

    <?php // echo $form->field($model, 'keterangan') ?>

    <?php // echo $form->field($model, 'id_rak') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
