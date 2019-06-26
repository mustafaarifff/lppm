<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\assets\AppAssetPage;

/* @var $this yii\web\View */
/* @var $model common\models\Buku */

$this->title = $model->isbn;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Bukus'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
AppAssetPage::register($this);
?>
<div class="buku-view">
    <div class="content">
        <div class="row" data-toggle="appear">
            <div class="col-12 col-xl-12">
                <div class="block">
                    <div class="block-content block-content-full">
                        <h1><?= Html::encode($this->title) ?></h1>

                        <p>
                            <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->isbn], ['class' => 'btn btn-primary']) ?>
                            <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->isbn], [
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
                                'isbn',
                                'judul_buku',
                                'penulis:ntext',
                                'tahun',
                                'stok',
                                'id_rak',
                            ],
                        ]) ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
