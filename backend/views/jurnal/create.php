<?php

use yii\helpers\Html;
use backend\assets\AppAssetPage;

/* @var $this yii\web\View */
/* @var $model common\models\Jurnal */

$this->title = Yii::t('app', 'Create Jurnal');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Jurnals'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
AppAssetPage::register($this);
?>
<div class="jurnal-create">
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
