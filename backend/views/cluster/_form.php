<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Cluster */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="cluster-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nama_cluster')->textInput(['placeholder'=>"Nama Cluster"]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
