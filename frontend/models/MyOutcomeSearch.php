<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Outcome;
// use app\models\User;

/**
 * OutcomeSearch represents the model behind the search form of `app\models\Outcome`.
 */
class MyOutcomeSearch extends Outcome
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'jenis_outcome','penulis', 'judul', 'tema', 'volume', 'nomor', 'tahun', 'file'], 'safe'],
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
        // $user = User::find()->select('username')->where(['id' => Yii::$app->user->identity->id])->all();
        // $query = Outcome::find();
        // $query = Outcome::find()->where(['id' => \yii\helpers\Json::decode($user[0]['outcome'])]);
        $query = Outcome::find()->where(['upload_by' => Yii::$app->user->identity->username]);

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
            ->andFilterWhere(['like', 'file', $this->file]);
        
            // echo $query->createCommand()->getRawSql();
        return $dataProvider;
    }
}
