<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Pengabdian */

$this->title = $model->no_sk;
$this->params['breadcrumbs'][] = ['label' => 'Pengabdians', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="pengabdian-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->no_sk], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->no_sk], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'no_sk',
            'penulis:ntext',
            'judul',
            'id_cluster',
            'id_fakultas',
            'id_rak',
            'tahun',
            'pendanaan',
            'sumber_dana',
            'file:ntext',
        ],
    ]) ?>

</div>
