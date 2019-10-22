<?php

namespace api\controllers;

use yii\rest\ActiveController;

/**
 * PengabdianController implements the CRUD actions for Pengabdian model.
 */
class PengabdianController extends ActiveController
{
    public $modelClass = 'common\models\Pengabdian';

    public function actions() 
    { 
        $actions = parent::actions();
        $actions['index']['prepareDataProvider'] = [$this, 'prepareDataProvider'];
        return $actions;
    }

    public function prepareDataProvider() 
    {
        $searchModel = new \common\models\PengabdianSearch();    
        return $searchModel->search(\Yii::$app->request->queryParams);
    }
}
