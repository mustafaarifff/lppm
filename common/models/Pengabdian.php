<?php

namespace common\models;

use Yii;
use yii\web\UploadedFile;

/**
 * This is the model class for table "pengabdian".
 *
 * @property string $no_sk
 * @property string $penulis
 * @property string $judul
 * @property int $id_cluster
 * @property int $id_fakultas
 * @property string $tahun
 * @property double $pendanaan
 * @property string $sumber_dana
 * @property string $file
 * @property Cluster $cluster
 * @property Fakultas $fakultas
 * @property Rak $rak
 */
class Pengabdian extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pengabdian';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['no_sk', 'penulis', 'judul', 'id_cluster', 'id_fakultas', 'id_rak', 'tahun', 'pendanaan', 'sumber_dana'], 'required'],
            [['penulis', 'file'], 'string'],
            [['id_cluster', 'id_fakultas', 'id_rak'], 'integer'],
            [['tahun'], 'safe'],
            [['pendanaan'], 'number'],
            [['no_sk'], 'string', 'max' => 30],
            [['judul', 'sumber_dana'], 'string', 'max' => 255],
            [['no_sk'], 'unique'],
            [['file'], 'file'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'no_sk' => 'No Surat Pengesahan',
            'penulis' => 'Penulis',
            'judul' => 'Judul',
            'id_cluster' => 'Id Cluster',
            'id_fakultas' => 'Id Fakultas',
            'id_rak' => 'Id Rak',
            'tahun' => 'Tahun',
            'pendanaan' => 'Pendanaan',
            'sumber_dana' => 'Sumber Dana',
            'file' => 'File',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCluster()
    {
        return $this->hasOne(Cluster::className(), ['id_cluster' => 'id_cluster']);
    }
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFakultas()
    {
        return $this->hasOne(Fakultas::className(), ['id_fakultas' => 'id_fakultas']);
    }
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRak()
    {
        return $this->hasOne(Rak::className(), ['id_rak' => 'id_rak']);
    }
    
    public function formName()
    {
        return '';
    }
}
