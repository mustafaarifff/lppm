<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cluster".
 *
 * @property int $id_cluster
 * @property string $nama_cluster
 */
class Cluster extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'cluster';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_cluster'], 'required'],
            [['nama_cluster'], 'string', 'max' => 100],

        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_cluster' => 'Id Cluster',
            'nama_cluster' => 'Nama Cluster',
        ];
    }
}
