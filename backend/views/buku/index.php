<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use backend\assets\AppAssetPage;
/* @var $this yii\web\View */
/* @var $searchModel common\models\BukuSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Bukus');
$this->params['breadcrumbs'][] = $this->title;
AppAssetPage::register($this);
?>
<div class="content">
    <div class="row" data-toggle="appear">
        <div class="col-12 col-xl-12">
            <div class="block">
                <div class="block-content block-content-full">
                    <div class="buku-index">

                        <h1><?= Html::encode($this->title) ?></h1>
                        <?php Pjax::begin(); ?>
                        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

                        <p>
                            <?= Html::a(Yii::t('app', 'Create Buku'), ['create'], ['class' => 'btn btn-success']) ?>
                        </p>

                        <?= GridView::widget([
                            'dataProvider' => $dataProvider,
                            'filterModel' => $searchModel,
                            'columns' => [
                                ['class' => 'yii\grid\SerialColumn'],

                                'isbn',
                                'judul_buku',
                                'penulis:ntext',
                                'tahun',
                                'stok',
                                //'id_rak',

                                ['class' => 'yii\grid\ActionColumn'],
                            ],
                        ]); ?>
                        <?php Pjax::end(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

