<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "jenis_jurnal".
 *
 * @property int $id
 * @property string $nama_jenis_jurnal
 */
class JenisJurnal extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'jenis_jurnal';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_jenis_jurnal'], 'required'],
            [['nama_jenis_jurnal'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nama_jenis_jurnal' => 'Jenis Jurnal',
        ];
    }
    
    public function formName()
    {
        return '';
    }
}
