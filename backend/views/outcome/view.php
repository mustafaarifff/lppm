<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\assets\AppAssetPage;

/* @var $this yii\web\View */
/* @var $model common\models\Outcome */

$this->title = $model->judul;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Outcomes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
AppAssetPage::register($this);
?>
<div class="outcome-view">
    <div class="content">
        <div class="row" data-toggle="appear">
            <div class="col-12 col-xl-12">
                <div class="block">
                    <div class="block-content block-content-full">
                        <h1><?= Html::encode($this->title) ?></h1>

                        <p>
                            <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                            <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
                                'class' => 'btn btn-danger',
                                'data' => [
                                    'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                                    'method' => 'post',
                                ],
                            ]) ?>
                            <?= Html::a('<span class="fa fa-download"></span> Download', ['download', 'name' => $model->file], [
                                'class' => 'btn btn-success'
                            ]) ?>
                        </p>

                        <?= DetailView::widget([
                            'model' => $model,
                            'template' => function($attribute, $index, $widget){
                                if($attribute['value'] != '-'){
                                    if($attribute['value'] != null){
                                        return "<tr><th>{$attribute['label']}</th><td>".nl2br($attribute['value'])."</td></tr>";
                                    }
                                }
                            },
                            'attributes' => [
                                'id',
                                'jenis_outcome',
                                'penulis:ntext',
                                'judul',
                                'jenis_jurnal',
                                'tema',
                                'volume',
                                'nomor',
                                'tahun',
                                'file:ntext',
                                'upload_by',
                            ],
                        ]) ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

