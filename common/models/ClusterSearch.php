<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Cluster;

/**
 * ClusterSearch represents the model behind the search form of `common\models\Cluster`.
 */
class ClusterSearch extends Cluster
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_cluster'], 'integer'],
            [['nama_cluster'], 'safe'],
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
        $query = Cluster::find();

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
        ]);

        $query->andFilterWhere(['like', 'nama_cluster', $this->nama_cluster]);

        return $dataProvider;
    }
}
