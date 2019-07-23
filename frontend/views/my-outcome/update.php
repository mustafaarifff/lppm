<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Outcome */

$this->title = 'Update Outcome: ' . $model->judul;
$this->params['breadcrumbs'][] = ['label' => 'Outcomes', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->judul, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="outcome-update">

    <h2><?= Html::encode($this->title) ?></h2>

    <?= $this->render('_form', [
        'model' => $model,
        'jenisJurnal' => $jenisJurnal,
    ]) ?>

</div>
