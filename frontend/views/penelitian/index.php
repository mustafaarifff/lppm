<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $searchModel frontend\models\PenelitianSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Penelitian';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="penelitian-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php  echo $this->render('_search', ['model' => $searchModel]); ?>

    <!-- <p>
        <?= Html::a('Create Penelitian', ['create'], ['class' => 'btn btn-success']) ?>
    </p> -->

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
        
            'no_sk',
            'penulis:ntext',
            'judul',
            [
                'label' => 'Cluster',
                'attribute' => 'id_cluster',
                'value' => 'cluster.nama_cluster',
                'filter' => Html::activedropDownList($searchModel, 'id_cluster', $cluster ,['class'=>'form-control', 'prompt'=>'-pilih cluster-'])
            ],
            [
                'label' => 'Fakultas',
                'attribute' => 'id_fakultas',
                'value' => 'fakultas.nama_fakultas',
                'filter' => Html::activedropDownList($searchModel, 'id_fakultas', $fakultas ,['class'=>'form-control', 'prompt'=>'-pilih fakultas-'])
            ],
            [
                'label' => 'Rak',
                'attribute' => 'id_rak',
                'value' => 'rak.nama_rak',
                'filter' => Html::activedropDownList($searchModel, 'id_rak', $rak ,['class'=>'form-control', 'prompt'=>'-pilih rak-'])
            ],
            'tahun',
            // 'id_cluster',
            // 'id_fakultas',
            //'id_rak',
            //'tahun',
            //'pendanaan',
            //'sumber_dana',
            //'file:ntext',

            // ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
