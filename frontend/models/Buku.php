<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "buku".
 *
 * @property string $isbn
 * @property string $judul_buku
 * @property string $penulis
 * @property string $tahun
 * @property int $stok
 * @property int $id_rak
 */
class Buku extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'buku';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['isbn', 'judul_buku', 'penulis', 'tahun', 'stok', 'id_rak'], 'required'],
            [['penulis'], 'string'],
            [['tahun'], 'safe'],
            [['stok', 'id_rak'], 'integer'],
            [['isbn'], 'string', 'max' => 20],
            [['judul_buku'], 'string', 'max' => 255],
            [['isbn'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'isbn' => 'ISBN',
            'judul_buku' => 'Judul Buku',
            'penulis' => 'Penulis',
            'tahun' => 'Tahun',
            'stok' => 'Stok',
            'id_rak' => 'Rak',
        ];
    }
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRak()
    {
        return $this->hasOne(Rak::className(), ['id_rak' => 'id_rak']);
    }
}
