<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Pengabdian */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pengabdian-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'no_sk')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'penulis')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'id_cluster')->dropDownList($cluster, ['prompt'=>'-pilih cluster-'])->label('Cluster') ?>

    <?= $form->field($model, 'id_rak')->dropDownList($rak, ['prompt'=>'-pilih rak-'])->label('Rak') ?>

    <?= $form->field($model, 'id_fakultas')->dropDownList($fakultas, ['prompt'=>'-pilih fakultas-'])->label('Fakultas') ?>

    <?= $form->field($model, 'tahun')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pendanaan')->textInput() ?>

    <?= $form->field($model, 'sumber_dana')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'file')->fileInput() ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
