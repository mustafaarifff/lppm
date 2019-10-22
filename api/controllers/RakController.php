<?php

namespace api\controllers;

use yii\rest\ActiveController;

/**
 * RakController implements the CRUD actions for Rak model.
 */
class RakController extends ActiveController
{
    public $modelClass = 'common\models\Rak';

    public function actions() 
    { 
        $actions = parent::actions();
        $actions['index']['prepareDataProvider'] = [$this, 'prepareDataProvider'];
        return $actions;
    }

    public function prepareDataProvider() 
    {
        $searchModel = new \common\models\RakSearch();    
        return $searchModel->search(\Yii::$app->request->queryParams);
    }
}
