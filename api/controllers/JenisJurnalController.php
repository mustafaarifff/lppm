<?php

namespace api\controllers;

use yii\rest\ActiveController;

/**
 * JenisJurnalController implements the CRUD actions for JenisJurnal model.
 */
class JenisJurnalController extends ActiveController
{
    public $modelClass = 'common\models\JenisJurnal';

    public function actions() 
    { 
        $actions = parent::actions();
        $actions['index']['prepareDataProvider'] = [$this, 'prepareDataProvider'];
        return $actions;
    }

    public function prepareDataProvider() 
    {
        $searchModel = new \common\models\JenisJurnalSearch();    
        return $searchModel->search(\Yii::$app->request->queryParams);
    }
}
