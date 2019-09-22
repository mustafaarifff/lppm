<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\PengabdianSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pengabdians';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pengabdian-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Pengabdian', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'no_sk',
            'penulis:ntext',
            'judul',
            'id_cluster',
            'id_fakultas',
            //'id_rak',
            //'tahun',
            //'pendanaan',
            //'sumber_dana',
            //'file:ntext',

            // ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
