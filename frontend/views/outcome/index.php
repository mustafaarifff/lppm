<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Outcomes';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="outcome-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php Pjax::begin(); ?>
    <?php echo $this->render('_search', ['model' => $searchModel]); ?>
    <p>
        <?= Html::a('Create Outcome', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_buku',
            'judul',
            'penulis:ntext',
            // 'tema',
            // 'volume',
            //'edisi',
            'tahun',
            // 'file:ntext',
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update} {download} {delete} {myButton}',  // the default buttons + your custom button
                'buttons' => [
                    'view' => function ($url, $model, $key) {     // render your custom button
                        return "<a class='btn btn-lg btn-circle btn-alt-danger mr-5 mb-5' title='Lihat' href='" . \yii\helpers\Url::to(['outcome/view', 'id' => $model->id_buku]) . "'><span class='fa fa-list'></span></a>";
                    },
                    'update' => function ($url, $model, $key) {     // render your custom button
                        return "<a class='btn btn-lg btn-circle btn-alt-warning mr-5 mb-5' title='Edit' href='" . \yii\helpers\Url::to(['outcome/update', 'id' => $model->id_buku]) . "'><span class='fa fa-pencil'></span></a>";
                    },
                    'download' => function ($url, $model, $key) {     // render your custom button
                        return "<a class='btn btn-lg btn-circle btn-alt-primary mr-5 mb-5' title='Download' href='" . \yii\helpers\Url::to(['outcome/download', 'name' => $model->file]) . "'><span class='fa fa-download'></span></a>";
                    },
                    'delete' => function ($url, $model, $key) {     // render your custom button
                        return "<a class='btn btn-lg btn-circle btn-alt-primary mr-5 mb-5' title='Hapus' data-confirm='Are you sure you want to delete this item?' data-method='post' href='" . \yii\helpers\Url::to(['outcome/delete', 'id' => $model->id_buku]) . "'><span class='fa fa-trash'></span></a>";
                    },
                    
                ],
                'contentOptions' => ['style' => 'width: 240px;'],


            ],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>