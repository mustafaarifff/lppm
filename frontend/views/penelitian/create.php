<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Penelitian */

$this->title = 'Create Penelitian';
$this->params['breadcrumbs'][] = ['label' => 'Penelitians', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="penelitian-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
