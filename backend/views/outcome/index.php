<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use backend\assets\AppAssetPage;
/* @var $this yii\web\View */
/* @var $searchModel common\models\OutcomeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Outcomes');
$this->params['breadcrumbs'][] = $this->title;
AppAssetPage::register($this);
?>
<div class="content">
    <div class="row" data-toggle="appear">
        <div class="col-12 col-xl-12">
            <div class="block">
                <div class="block-content block-content-full">
                    <div class="outcome-index">

                        <h1><?= Html::encode($this->title) ?></h1>
                        <?php Pjax::begin(); ?>
                        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

                        <p>
                            <?= Html::a(Yii::t('app', 'Create Outcome'), ['create'], ['class' => 'btn btn-success']) ?>
                        </p>

                        <?= GridView::widget([
                            'dataProvider' => $dataProvider,
                            'filterModel' => $searchModel,
                            'columns' => [
                                ['class' => 'yii\grid\SerialColumn'],

                                // 'jenis_outcome',
                                [
                                    'label' => 'Jenis Outcome',
                                    'attribute' => 'jenis_outcome',
                                    'filter' => Html::activedropDownList($searchModel, 'jenis_outcome', ['Buku' => 'Buku', 'Jurnal' => 'Jurnal', 'Prosiding Seminar' => 'Prosiding Seminar', 
                                    ],['class'=>'form-control', 'prompt'=>'-pilih cluster-'])                                
                                ],
                                'id',
                                'judul',
                                'penulis:ntext',
                                // 'jenis_jurnal',
                                //'tema',
                                //'volume',
                                //'nomor',
                                'tahun',
                                //'file:ntext',
                                [
                                    'attribute' => 'upload_by',
                                    'headerOptions' => ['style' => 'width:120px'],
                                ],

                                [
                                    'class' => 'yii\grid\ActionColumn',
                                    'template' => '{view} {update} {download} {delete} {myButton}',  // the default buttons + your custom button
                                    'buttons' => [
                                        'view' => function ($url, $model, $key) {     // render your custom button
                                            return "<a class='btn btn-lg btn-circle btn-alt-danger mr-5 mb-5' href='" . \yii\helpers\Url::to(['outcome/view', 'id' => $model->id]) . "'><span class='fa fa-list'></span></a>";
                                        },
                                        'update' => function ($url, $model, $key) {     // render your custom button
                                            return "<a class='btn btn-lg btn-circle btn-alt-warning mr-5 mb-5' href='" . \yii\helpers\Url::to(['outcome/update', 'id' => $model->id]) . "'><span class='fa fa-pencil'></span></a>";
                                        },
                                        'download' => function ($url, $model, $key) {     // render your custom button
                                            return "<a class='btn btn-lg btn-circle btn-alt-primary mr-5 mb-5' title='Download' href='" . \yii\helpers\Url::to(['outcome/download', 'name' => $model->file]) . "'><span class='fa fa-download'></span></a>";
                                        },
                                        'delete' => function ($url, $model, $key) {     // render your custom button
                                            return "<a class='btn btn-lg btn-circle btn-alt-primary mr-5 mb-5' data-confirm='Are you sure you want to delete this item?' data-method='POST' href='" . \yii\helpers\Url::to(['outcome/delete', 'id' => $model->id]) . "'><span class='fa fa-trash'></span></a>";
                                        }
                                    ],
                                    'contentOptions' => ['style' => 'width: 215px;'],

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
