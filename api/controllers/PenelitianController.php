<?php

namespace api\controllers;

use yii\rest\ActiveController;
use yii\data\ActiveDataProvider;

/**
 * PenelitianController implements the CRUD actions for Penelitian model.
 */
class PenelitianController extends ActiveController
{
    public $modelClass = 'common\models\Penelitian';

    public function actions() 
    { 
        $actions = parent::actions();
        $actions['index']['prepareDataProvider'] = [$this, 'prepareDataProvider'];
        return $actions;
    }

    public function prepareDataProvider() 
    {
        $searchModel = new \common\models\PenelitianSearch();    
        return $searchModel->search(\Yii::$app->request->queryParams);
    }
}
