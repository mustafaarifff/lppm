<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Pengabdian;

/**
 * PengabdianSearch represents the model behind the search form of `app\models\Pengabdian`.
 */
class PengabdianSearch extends Pengabdian
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['no_sk', 'penulis', 'judul', 'tahun', 'sumber_dana', 'file'], 'safe'],
            [['id_cluster', 'id_fakultas', 'id_rak'], 'integer'],
            [['pendanaan'], 'number'],
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
        $query = Pengabdian::find();

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
            'id_cluster' => $this->id_cluster,
            'id_fakultas' => $this->id_fakultas,
            'id_rak' => $this->id_rak,
            'tahun' => $this->tahun,
            'pendanaan' => $this->pendanaan,
        ]);

        $query->andFilterWhere(['like', 'no_sk', $this->no_sk])
            ->andFilterWhere(['like', 'penulis', $this->penulis])
            ->andFilterWhere(['like', 'judul', $this->judul])
            ->andFilterWhere(['like', 'sumber_dana', $this->sumber_dana])
            ->andFilterWhere(['like', 'file', $this->file]);

        return $dataProvider;
    }
}
