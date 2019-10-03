<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $searchModel app\models\PengabdianSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pengabdian';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pengabdian-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php Pjax::begin(); ?>
    <?php echo $this->render('_search', ['model' => $searchModel]); ?>

    <!-- <p>
        <?= Html::a('Create Pengabdian', ['create'], ['class' => 'btn btn-success']) ?>
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
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {download}',  // the default buttons + your custom button
                'buttons' => [
                    'view' => function ($url, $model, $key) {     // render your custom button
                        return "<a class='btn btn-lg btn-circle btn-alt-danger mr-5 mb-5' title='Lihat' href='" . \yii\helpers\Url::to(['pengabdian/view', 'id' => $model->no_sk]) . "'><span class='fa fa-list'></span></a>";
                    },
                    // 'download' => function ($url, $model, $key) {     // render your custom button
                    //     return "<a class='btn btn-lg btn-circle btn-alt-primary mr-5 mb-5' title='Download' href='" . \yii\helpers\Url::to(['outcome/download', 'name' => $model->file]) . "'><span class='fa fa-download'></span></a>";
                    // },
                    
                ],
                'contentOptions' => ['style' => 'width: 130px;'],
            //'pendanaan',
            //'sumber_dana',
            //'file:ntext',

            // ['class' => 'yii\grid\ActionColumn'],
        ],
    ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
