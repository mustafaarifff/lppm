<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Outcome */

$this->title = 'Create Outcome';
$this->params['breadcrumbs'][] = ['label' => 'Outcomes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="outcome-create">

    <h2><?= Html::encode($this->title) ?></h2>

    <?= $this->render('_form', [
        'model' => $model,
        'jenisJurnal' => $jenisJurnal,
    ]) ?>

</div>
