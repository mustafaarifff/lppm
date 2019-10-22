<?php

namespace api\controllers;

use yii\rest\ActiveController;

/**
 * FakultasController implements the CRUD actions for Fakultas model.
 */
class FakultasController extends ActiveController
{
    public $modelClass = 'common\models\Fakultas';

    public function actions() 
    { 
        $actions = parent::actions();
        $actions['index']['prepareDataProvider'] = [$this, 'prepareDataProvider'];
        return $actions;
    }

    public function prepareDataProvider() 
    {
        $searchModel = new \common\models\FakultasSearch();    
        return $searchModel->search(\Yii::$app->request->queryParams);
    }
}
