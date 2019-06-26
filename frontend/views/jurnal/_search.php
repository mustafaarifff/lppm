<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\Rak;
/* @var $this yii\web\View */
/* @var $model app\models\JurnalSearch */
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

    <?php // echo $form->field($model, 'id') ?>

    <?= $form->field($model, 'issn') ?>

    <?= $form->field($model, 'penulis') ?>

    <?= $form->field($model, 'judul') ?>

    <?= $form->field($model, 'tema') ?>

    <?= $form->field($model, 'volume') ?>

    <?= $form->field($model, 'nomor') ?>

    <?= $form->field($model, 'tahun') ?>

    <?php // echo $form->field($model, 'stok') ?>

    <?php // echo $form->field($model, 'keterangan') ?>

    <?= $form->field($model, 'id_rak')->dropDownList(
        ArrayHelper::map(Rak::find()->all(),'id_rak','nama_rak'),['prompt'=>'-pilih rak-']) ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Reset', ['index'], ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
