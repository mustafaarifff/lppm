<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use backend\assets\AppAssetPage;
/* @var $this yii\web\View */
/* @var $searchModel common\models\ClusterSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Cluster');
$this->params['breadcrumbs'][] = $this->title;
AppAssetPage::register($this);
?>

<div class="content">
    <div class="row" data-toggle="appear">
        <div class="col-12 col-xl-12">
            <div class="block">
                <div class="block-content block-content-full">
                    <div class="cluster-index">

                        <h1><?= Html::encode($this->title) ?></h1>
                        <?php Pjax::begin(); ?>
                        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

                        <p>
                            <?= Html::a(Yii::t('app', 'Tambah Cluster'), ['create'], ['class' => 'btn btn-success']) ?>
                        </p>

                        <?= GridView::widget([
                            'dataProvider' => $dataProvider,
                            'filterModel' => $searchModel,
                            'columns' => [
                                ['class' => 'yii\grid\SerialColumn'],

                                'id_cluster',
                                'nama_cluster',

                                [
                                    'class' => 'yii\grid\ActionColumn',
                                    'template' => '{view} {update} {delete} {myButton}',  // the default buttons + your custom button
                                    'buttons' => [
                                        'view' => function ($url, $model, $key) {     // render your custom button
                                            return "<a class='btn btn-lg btn-circle btn-alt-danger mr-5 mb-5' href='" . \yii\helpers\Url::to(['cluster/view', 'id' => $model->id_cluster]) . "'><span class='fa fa-list'></span></a>";
                                        },
                                        'update' => function ($url, $model, $key) {     // render your custom button
                                            return "<a class='btn btn-lg btn-circle btn-alt-warning mr-5 mb-5' href='" . \yii\helpers\Url::to(['cluster/update', 'id' => $model->id_cluster]) . "'><span class='fa fa-pencil'></span></a>";
                                        },
                                        'delete' => function ($url, $model, $key) {     // render your custom button
                                            return "<a class='btn btn-lg btn-circle btn-alt-primary mr-5 mb-5' href='" . \yii\helpers\Url::to(['cluster/delete', 'id' => $model->id_cluster]) . "'><span class='fa fa-trash'></span></a>";
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
