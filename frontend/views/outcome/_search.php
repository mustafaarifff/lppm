<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\OutcomeSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="outcome-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'jenis_outcome')->dropDownList(
        [ 
            'Buku' => 'Buku', 
            'Jurnal' => 'Jurnal', 
            'Prosiding Seminar' => 'Prosiding Seminar', 
        ], [
            'prompt' => '- Semua -'
        ]); 
    ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'penulis') ?>

    <?= $form->field($model, 'judul') ?>

    <?php // $form->field($model, 'jenis_jurnal') ?>

    <?php // echo $form->field($model, 'tema') ?>

    <?php // echo $form->field($model, 'volume') ?>

    <?php // echo $form->field($model, 'nomor') ?>

    <?php  echo $form->field($model, 'tahun') ?>

    <?php  echo $form->field($model, 'upload_by') ?>

    <?php // echo $form->field($model, 'file') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Reset', ['index'], ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
