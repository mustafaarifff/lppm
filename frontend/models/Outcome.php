<?php

namespace app\models;

use Yii;
use yii\web\UploadedFile;

/**
 * This is the model class for table "summary".
 *
 * @property string $id
 * @property string $penulis
 * @property string $judul
 * @property string $tema
 * @property string $volume
 * @property string $nomor
 * @property string $tahun
 * @property string $file
 */
class Outcome extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     * @var UploadedFile file attribute
     */

    // public $file;
    public $jenis_file;
    
    public static function tableName()
    {
        return 'outcome';
    }

    /**
     * {@inheritdoc}
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            [['id', 'jenis_outcome', 'penulis', 'judul', 'volume', 'nomor', 'tahun'], 'required'],
            [['jenis_jurnal'], 'integer'],
            [['file'], 'required', 'on' =>  'create'],
            [['jenis_outcome', 'penulis', 'file'], 'string'],
            [
                ['file'], 'file', 
                'extensions' => ['pdf'],
                'wrongExtension' => 'Only PDF files are allowed for {attribute}.',
                'wrongMimeType' => 'Only PDF files are allowed for {attribute}.',
                'mimeTypes'=>['application/pdf'],
            ],
            [['tahun'], 'number'],
            [['id'], 'string', 'max' => 20],
            [['judul', 'tema'], 'string', 'max' => 255],
            [['volume', 'nomor'], 'string', 'max' => 6],
            [['id'], 'unique'],
            [['jenis_file'], 'safe']
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
        ];
    }
    
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getJenisJurnal()
    {
        return $this->hasOne(JenisJurnal::className(), ['id' => 'jenis_jurnal']);
    }
}
