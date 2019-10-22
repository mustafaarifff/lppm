<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "jurnal".
 *
 * @property int $id
 * @property string $issn
 * @property string $penulis
 * @property string $judul
 * @property string $tema
 * @property string $volume
 * @property string $nomor
 * @property string $tahun
 * @property int $stok
 * @property string $keterangan
 * @property int $id_rak
 * @property Rak $rak
 */
class Jurnal extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'jurnal';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['issn', 'penulis', 'judul', 'tema', 'volume', 'nomor', 'tahun', 'stok', 'keterangan', 'id_rak'], 'required'],
            [['penulis', 'keterangan'], 'string'],
            [['tahun'], 'safe'],
            [['stok', 'id_rak'], 'integer'],
            [['issn'], 'string', 'max' => 20],
            [['judul', 'tema'], 'string', 'max' => 255],
            [['volume', 'nomor'], 'string', 'max' => 6],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'issn' => 'Issn',
            'penulis' => 'Penulis',
            'judul' => 'Judul',
            'tema' => 'Tema',
            'volume' => 'Volume',
            'nomor' => 'Nomor',
            'tahun' => 'Tahun',
            'stok' => 'Stok',
            'keterangan' => 'Keterangan',
            'id_rak' => 'Id Rak',
        ];
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
