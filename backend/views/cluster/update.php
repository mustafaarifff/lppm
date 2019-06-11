<?php

use yii\helpers\Html;
use backend\assets\AppAssetPage;
/* @var $this yii\web\View */
/* @var $model common\models\Cluster */

$this->title = Yii::t('app', 'Update Cluster: {name}', [
    'name' => $model->nama_cluster,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Clusters'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_cluster, 'url' => ['view', 'id' => $model->id_cluster]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
AppAssetPage::register($this);
?>
<div class="cluster-update">
    <div class="content">
        <div class="row" data-toggle="appear">
            <div class="col-12 col-xl-12">
                <div class="block">
                    <div class="block-content block-content-full">
                        <h1><?= Html::encode($this->title) ?></h1>

                        <?= $this->render('_form', [
                            'model' => $model,
                        ]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>