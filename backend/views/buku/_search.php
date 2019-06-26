<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\BukuSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="buku-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'isbn') ?>

    <?= $form->field($model, 'judul_buku') ?>

    <?= $form->field($model, 'penulis') ?>

    <?= $form->field($model, 'tahun') ?>

    <?= $form->field($model, 'stok') ?>

    <?php // echo $form->field($model, 'id_rak') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
