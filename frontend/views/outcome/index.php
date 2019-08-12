<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel frontend\models\OutcomeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Outcomes';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="outcome-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php Pjax::begin(); ?>
    <?php echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'jenis_outcome',
            'id',
            'judul',
            'penulis:ntext',
            // 'jenis_jurnal',
            //'tema',
            //'volume',
            //'nomor',
            //'id_rak',
            'tahun',
            [
                'attribute' => 'upload_by',
                'headerOptions' => ['style' => 'width:120px'],
            ],
            //'stok',
            //'file:ntext',

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {download}',  // the default buttons + your custom button
                'buttons' => [
                    'view' => function ($url, $model, $key) {     // render your custom button
                        return "<a class='btn btn-lg btn-circle btn-alt-danger mr-5 mb-5' title='Lihat' href='" . \yii\helpers\Url::to(['outcome/view', 'id' => $model->id]) . "'><span class='fa fa-list'></span></a>";
                    },
                    'download' => function ($url, $model, $key) {     // render your custom button
                        return "<a class='btn btn-lg btn-circle btn-alt-primary mr-5 mb-5' title='Download' href='" . \yii\helpers\Url::to(['outcome/download', 'name' => $model->file]) . "'><span class='fa fa-download'></span></a>";
                    },
                    
                ],
                'contentOptions' => ['style' => 'width: 130px;'],


            ],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
