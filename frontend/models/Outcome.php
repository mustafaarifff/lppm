<?php

namespace app\models;

use Yii;
use yii\web\UploadedFile;

/**
 * This is the model class for table "summary".
 *
 * @property string $id_buku
 * @property string $penulis
 * @property string $judul
 * @property string $tema
 * @property string $volume
 * @property string $edisi
 * @property int $id_rak
 * @property string $tahun
 * @property int $stok
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
        return 'summary';
    }

    /**
     * {@inheritdoc}
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            [['id_buku', 'penulis', 'judul', 'volume', 'edisi', 'tahun'], 'required'],
            [['file'], 'required', 'on' =>  'create'],
            [['penulis', 'file'], 'string'],
            [
                ['file'], 'file', 
                'extensions' => ['pdf'],
                'wrongExtension' => 'Only PDF files are allowed for {attribute}.',
                'wrongMimeType' => 'Only PDF files are allowed for {attribute}.',
                'mimeTypes'=>['application/pdf'],
            ],
            [['tahun'], 'number'],
            [['id_buku'], 'string', 'max' => 20],
            [['judul', 'tema'], 'string', 'max' => 255],
            [['volume', 'edisi'], 'string', 'max' => 6],
            [['id_buku'], 'unique'],
            [['jenis_file'], 'safe']
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_buku' => 'ISBN/ISSN',
            'penulis' => 'Penulis',
            'judul' => 'Judul',
            'tema' => 'Tema',
            'volume' => 'Volume',
            'edisi' => 'Edisi',
            'tahun' => 'Tahun',
            'file' => 'File',
        ];
    }
    
}
