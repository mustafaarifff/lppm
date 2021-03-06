<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Buku;

/**
 * BukuSearch represents the model behind the search form of `common\models\Buku`.
 */
class BukuSearch extends Buku
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['isbn', 'judul_buku', 'penulis', 'tahun'], 'safe'],
            [['stok', 'id_rak'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Buku::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'tahun' => $this->tahun,
            'stok' => $this->stok,
            'id_rak' => $this->id_rak,
        ]);

        $query->andFilterWhere(['like', 'isbn', $this->isbn])
            ->andFilterWhere(['like', 'judul_buku', $this->judul_buku])
            ->andFilterWhere(['like', 'penulis', $this->penulis]);

        return $dataProvider;
    }
}
