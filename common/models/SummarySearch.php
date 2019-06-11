<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Summary;

/**
 * SummarySearch represents the model behind the search form of `common\models\Summary`.
 */
class SummarySearch extends Summary
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_buku', 'penulis', 'judul', 'tema', 'volume', 'edisi', 'tahun', 'file'], 'safe'],
            [['id_rak', 'stok'], 'integer'],
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
        $query = Summary::find();

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
            'id_rak' => $this->id_rak,
            'tahun' => $this->tahun,
            'stok' => $this->stok,
        ]);

        $query->andFilterWhere(['like', 'id_buku', $this->id_buku])
            ->andFilterWhere(['like', 'penulis', $this->penulis])
            ->andFilterWhere(['like', 'judul', $this->judul])
            ->andFilterWhere(['like', 'tema', $this->tema])
            ->andFilterWhere(['like', 'volume', $this->volume])
            ->andFilterWhere(['like', 'edisi', $this->edisi])
            ->andFilterWhere(['like', 'file', $this->file]);

        return $dataProvider;
    }
}
