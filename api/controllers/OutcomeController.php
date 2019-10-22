<?php

namespace api\controllers;

use yii\rest\ActiveController;
use yii\data\ActiveDataProvider;

/**
 * OutcomeController implements the CRUD actions for Outcome model.
 */
class OutcomeController extends ActiveController
{
    public $modelClass = 'common\models\Outcome';

    public function actions() 
    { 
        $actions = parent::actions();
        $actions['index']['prepareDataProvider'] = [$this, 'prepareDataProvider'];
        return $actions;
    }

    public function prepareDataProvider() 
    {
        $searchModel = new \common\models\OutcomeSearch();    
        return $searchModel->search(\Yii::$app->request->queryParams);
    }
}
