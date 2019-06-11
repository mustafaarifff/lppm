<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\assets\AppAssetPage;

/* @var $this yii\web\View */
/* @var $model common\models\Summary */

$this->title = $model->id_buku;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Summaries'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
AppAssetPage::register($this);

?>
<div class="summary-view">
    <div class="content">
        <div class="row" data-toggle="appear">
            <div class="col-12 col-xl-12">
                <div class="block">
                    <div class="block-content block-content-full">
                        <h1><?= Html::encode($this->title) ?></h1>

                        <p>
                            <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id_buku], ['class' => 'btn btn-primary']) ?>
                            <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id_buku], [
                                'class' => 'btn btn-danger',
                                'data' => [
                                    'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                                    'method' => 'post',
                                ],
                            ]) ?>
                        </p>

                        <?= DetailView::widget([
                            'model' => $model,
                            'attributes' => [
                                'id_buku',
                                'penulis:ntext',
                                'judul',
                                'tema',
                                'volume',
                                'edisi',
                                'rak.nama_rak',
                                'tahun',
                                'stok',
                                'file:ntext',
                            ],
                        ]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
