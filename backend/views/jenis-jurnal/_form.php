<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\JenisJurnal */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="jenis-jurnal-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nama_jenis_jurnal')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
