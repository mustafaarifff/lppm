<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\Cluster;
use common\models\Fakultas;
use common\models\Rak;

/* @var $this yii\web\View */
/* @var $model frontend\models\PenelitianSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="penelitian-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'no_sk') ?>

    <?= $form->field($model, 'penulis') ?>

    <?= $form->field($model, 'judul') ?>

    <?= $form->field($model, 'id_cluster')->dropDownList(
        ArrayHelper::map(Cluster::find()->all(),'id_cluster','nama_cluster'),['prompt'=>'-pilih cluster-']) ?>

    <?= $form->field($model, 'id_fakultas')->dropDownList(
        ArrayHelper::map(Fakultas::find()->all(),'id_fakultas','nama_fakultas'),['prompt'=>'-pilih fakultas-']) ?>

    <?= $form->field($model, 'id_rak')->dropDownList(
        ArrayHelper::map(Rak::find()->all(),'id_rak','nama_rak'),['prompt'=>'-pilih rak-']) ?>

    <?= $form->field($model, 'tahun') ?>

    <?php // echo $form->field($model, 'pendanaan') ?>

    <?php // echo $form->field($model, 'sumber_dana') ?>

    <?php // echo $form->field($model, 'file') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Reset', ['index'], ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
