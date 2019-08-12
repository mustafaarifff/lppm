<?php

namespace frontend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Outcome;

/**
 * OutcomeSearch represents the model behind the search form of `app\models\Outcome`.
 */
class OutcomeSearch extends Outcome
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'jenis_outcome', 'penulis', 'judul', 'tema', 'volume', 'nomor', 'tahun', 'file', 'upload_by'], 'safe'],
            [['jenis_jurnal'], 'integer'],
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
        $query = Outcome::find();

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
            'jenis_jurnal' => $this->jenis_jurnal,
            'tahun' => $this->tahun,
        ]);

        $query->andFilterWhere(['like', 'id', $this->id])
            ->andFilterWhere(['like', 'jenis_outcome', $this->jenis_outcome])
            ->andFilterWhere(['like', 'penulis', $this->penulis])
            ->andFilterWhere(['like', 'judul', $this->judul])
            ->andFilterWhere(['like', 'tema', $this->tema])
            ->andFilterWhere(['like', 'volume', $this->volume])
            ->andFilterWhere(['like', 'nomor', $this->nomor])
            ->andFilterWhere(['like', 'upload_by', $this->upload_by])
            ->andFilterWhere(['like', 'file', $this->file]);

        return $dataProvider;
    }
}
