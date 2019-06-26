<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $searchModel app\models\JurnalSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Jurnals';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="jurnal-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php Pjax::begin(); ?>
    <?php echo $this->render('_search', ['model' => $searchModel]); ?>



    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id',
            'issn',
            'penulis:ntext',
            'judul',
            'tema',
            'volume',
            'nomor',
            'tahun',
            //'stok',
            //'keterangan:ntext',
            [
                'label' => 'Rak',
                'attribute' => 'id_rak',
                'value' => 'rak.nama_rak',
                'filter' => Html::activedropDownList($searchModel, 'id_rak', $rak ,['class'=>'form-control', 'prompt'=>'-pilih rak-'])
            ],

            // ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
