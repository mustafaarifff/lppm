<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Buku */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="buku-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'isbn')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'judul_buku')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'penulis')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'tahun')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'stok')->textInput() ?>

    <?= $form->field($model, 'id_rak')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
