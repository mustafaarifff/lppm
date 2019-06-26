<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Jurnal */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Jurnals', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="jurnal-view">

    <h1><?= Html::encode($this->title) ?></h1>



    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'issn',
            'penulis:ntext',
            'judul',
            'tema',
            'volume',
            'nomor',
            'tahun',
            'stok',
            'keterangan:ntext',
            'id_rak',
        ],
    ]) ?>

</div>
