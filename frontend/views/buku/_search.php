<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\Rak;
/* @var $this yii\web\View */
/* @var $model app\models\BukuSearch */
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

    <?= $form->field($model, 'id_rak')->dropDownList(
        ArrayHelper::map(Rak::find()->all(),'id_rak','nama_rak'),['prompt'=>'-pilih rak-']) ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Reset', ['index'], ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
