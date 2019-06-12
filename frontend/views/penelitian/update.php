<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Penelitian */

$this->title = 'Update Penelitian: ' . $model->no_sk;
$this->params['breadcrumbs'][] = ['label' => 'Penelitians', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->no_sk, 'url' => ['view', 'id' => $model->no_sk]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="penelitian-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
