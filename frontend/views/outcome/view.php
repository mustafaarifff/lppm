<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Outcome */

if(substr($model->file,0,3) == 'ps-'){
    $jenisFile = "Prosiding Seminar";
} else if($model->volume == '-'){
    $jenisFile = "Buku";
} else if($model->penulis == '-'){
    $jenisFile = "Jurnal";
}

$this->title = $jenisFile . ' : ' .$model->judul;
$this->params['breadcrumbs'][] = ['label' => 'Outcomes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="outcome-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_buku], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_buku], [
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
                    return "<tr><th>{$attribute['label']}</th><td>{$attribute['value']}</td></tr>";
                }
            }
        },
        'attributes' => [
            'id_buku',
            'penulis:ntext',
            'judul',
            'jenisJurnal.nama_jenis_jurnal',
            'tema',
            'volume',
            'edisi',
            'tahun',
            'file:ntext',
        ],
    ]) ?>

</div>
