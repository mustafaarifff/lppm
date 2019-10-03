<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use yii\widgets\Pjax;
use backend\assets\AppAssetPage;


/* @var $this yii\web\View */
/* @var $searchModel common\models\PengabdianSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Pengabdian');
$this->params['breadcrumbs'][] = $this->title;
AppAssetPage::register($this);

?>
<div class="content">
    <div class="row" data-toggle="appear">
        <div class="col-12 col-xl-12">
            <div class="block">
                <div class="block-content block-content-full">
                    <div class="pengabdian-index">

                        <h1><?= Html::encode($this->title) ?></h1>
                        <?php Pjax::begin(); ?>
                        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

                        <p>
                            <?= Html::a(Yii::t('app', 'Tambah Pengabdian'), ['create'], ['class' => 'btn btn-success']) ?>
                        </p>

                        <?= GridView::widget([
                            'dataProvider' => $dataProvider,
                            'filterModel' => $searchModel,
                            'columns' => [
                                ['class' => 'yii\grid\SerialColumn'],

                                'no_sk',
                                'penulis:ntext',
                                'judul',
                                [
                                    'label' => 'cluster',
                                    'attribute' => 'id_cluster',
                                    'value' => 'cluster.nama_cluster',
                                    'filter' => Html::activedropDownList($searchModel, 'id_cluster', $cluster ,['class'=>'form-control', 'prompt'=>'-pilih cluster-'])                        
                                ],
                                [
                                    'label' => 'fakultas',
                                    'attribute' => 'id_fakultas',
                                    'value' => 'fakultas.nama_fakultas',
                                    'filter' => Html::activedropDownList($searchModel, 'id_fakultas', $fakultas ,['class'=>'form-control', 'prompt'=>'-pilih fakultas-'])
                                ],
                                [
                                    'label' => 'rak',
                                    'attribute' => 'id_rak',
                                    'value' => 'rak.nama_rak',
                                    'filter' => Html::activedropDownList($searchModel, 'id_rak', $rak ,['class'=>'form-control', 'prompt'=>'-pilih rak-'])
                                ],
                                // 'id_cluster',
                                // 'id_fakultas',
                                // 'id_rak',
                                'tahun',
                                //'pendanaan',
                                //'sumber_dana',
                                //'file:ntext',

                                [
                                    'class' => 'yii\grid\ActionColumn',
                                    'template' => '{view} {update} {delete} {myButton}',  // the default buttons + your custom button
                                    'buttons' => [
                                        'view' => function ($url, $model, $key) {     // render your custom button
                                            return "<a class='btn btn-lg btn-circle btn-alt-danger mr-5 mb-5' href='" . \yii\helpers\Url::to(['pengabdian/view', 'id' => $model->no_sk]) . "'><span class='fa fa-list'></span></a>";
                                        },
                                        'update' => function ($url, $model, $key) {     // render your custom button
                                            return "<a class='btn btn-lg btn-circle btn-alt-warning mr-5 mb-5' href='" . \yii\helpers\Url::to(['pengabdian/update', 'id' => $model->no_sk]) . "'><span class='fa fa-pencil'></span></a>";
                                        },
                                        'delete' => function ($url, $model, $key) {     // render your custom button
                                            return "<a class='btn btn-lg btn-circle btn-alt-primary mr-5 mb-5' href='" . \yii\helpers\Url::to(['pengabdian/delete', 'id' => $model->no_sk]) . "'><span class='fa fa-trash'></span></a>";
                                        }
                                    ],
                                    'contentOptions' => ['style' => 'width: 165px;'],
                                ],
                            ],
                        ]); ?>
                        <?php Pjax::end(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
