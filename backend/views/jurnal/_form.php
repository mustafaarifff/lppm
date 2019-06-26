<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Jurnal */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="jurnal-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'issn')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'penulis')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tema')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'volume')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nomor')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tahun')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'stok')->textInput() ?>

    <?= $form->field($model, 'keterangan')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'id_rak')->dropDownList($rak, ['prompt'=>'-pilih rak-'])->label('Rak') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
