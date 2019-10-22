<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "outcome".
 *
 * @property string $id
 * @property string $jenis_outcome
 * @property string $penulis
 * @property string $judul
 * @property int $jenis_jurnal
 * @property string $tema
 * @property string $volume
 * @property string $nomor
 * @property string $tahun
 * @property string $file
 * @property string $upload_by
 */
class Outcome extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'outcome';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'jenis_outcome', 'penulis', 'judul', 'volume', 'nomor', 'tahun', 'file'], 'required'],
            [['jenis_outcome', 'penulis', 'file'], 'string'],
            [['jenis_jurnal'], 'integer'],
            [['tahun'], 'safe'],
            [['id'], 'string', 'max' => 20],
            [['judul', 'tema'], 'string', 'max' => 255],
            [['volume', 'nomor'], 'string', 'max' => 6],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ISBN/ISSN',
            'jenis_outcome' => 'Jenis Outcome',
            'penulis' => 'Penulis',
            'judul' => 'Judul',
            'jenis_jurnal' => 'Jenis Jurnal',
            'tema' => 'Tema',
            'volume' => 'Volume',
            'nomor' => 'Nomor',
            'tahun' => 'Tahun',
            'file' => 'File',
            'upload_by' => 'Upload By',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getJenisJurnal()
    {
        return $this->hasOne(JenisJurnal::className(), ['id' => 'jenis_jurnal']);
    }
    
    public function formName()
    {
        return '';
    }
}
