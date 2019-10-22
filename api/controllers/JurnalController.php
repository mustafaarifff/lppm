<?php

namespace api\controllers;

use yii\rest\ActiveController;
/**
 * JurnalController implements the CRUD actions for Jurnal model.
 */
class JurnalController extends ActiveController
{
    public $modelClass = 'common\models\Jurnal';

    public function actions() 
    { 
        $actions = parent::actions();
        $actions['index']['prepareDataProvider'] = [$this, 'prepareDataProvider'];
        return $actions;
    }

    public function prepareDataProvider() 
    {
        $searchModel = new \common\models\JurnalSearch();    
        return $searchModel->search(\Yii::$app->request->queryParams);
    }
}
