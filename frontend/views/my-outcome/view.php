<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Outcome */

$this->title = $model->judul;
$this->params['breadcrumbs'][] = ['label' => 'Outcomes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="outcome-view">

    <h2><?= Html::encode($this->title) ?></h2>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
        <?= Html::a('<span class="fa fa-download"></span> Download', ['download', 'name' => $model->file], [
            'class' => 'btn btn-success'
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'template' => function($attribute, $index, $widget){
            if($attribute['value'] != '-'){
                if($attribute['value'] != null){
                    return "<tr><th>{$attribute['label']}</th><td>".nl2br($attribute['value'])."</td></tr>";
                }
            }
        },
        'attributes' => [
            'upload_by',
            'jenis_outcome',
            'id',
            'penulis:ntext',
            'judul',
            'jenisJurnal.nama_jenis_jurnal',
            'tema',
            'volume',
            'nomor',
            'tahun',
            'file:ntext',
        ],
    ]) ?>

</div>
