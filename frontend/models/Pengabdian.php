<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pengabdian".
 *
 * @property string $no_sk
 * @property string $penulis
 * @property string $judul
 * @property int $id_cluster
 * @property int $id_fakultas
 * @property int $id_rak
 * @property string $tahun
 * @property double $pendanaan
 * @property string $sumber_dana
 * @property string $file
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
            [['no_sk', 'penulis', 'judul', 'id_cluster', 'id_fakultas', 'id_rak', 'tahun', 'pendanaan', 'sumber_dana', 'file'], 'required'],
            [['penulis', 'file'], 'string'],
            [['id_cluster', 'id_fakultas', 'id_rak'], 'integer'],
            [['tahun'], 'safe'],
            [['pendanaan'], 'number'],
            [['no_sk'], 'string', 'max' => 30],
            [['judul', 'sumber_dana'], 'string', 'max' => 255],
            [['no_sk'], 'unique'],
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
            'id_cluster' => 'Cluster',
            'id_fakultas' => 'Fakultas',
            'id_rak' => 'Rak',
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
}
