<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property int $id
  * @property string $username
  * @property string $auth_key
  * @property string $password_hash
  * @property string $password_reset_token
  * @property string $email
  * @property int $status
  * @property string $hak_akses
  * @property int $created_at
  * @property int $updated_at
 * @property string $outcome
 */
class User extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['username', 'auth_key', 'password_hash', 'email', 'hak_akses', 'created_at', 'updated_at'], 'required'],
            [['status', 'created_at', 'updated_at'], 'integer'],
            [['outcome'], 'string'],
            [['password_reset_token', 'email'], 'string', 'max' => 255],
            [['username'], 'string', 'max' => 20],
            [['password_hash'], 'string', 'max' => 60],
            [['auth_key'], 'string', 'max' => 32],
            [['hak_akses'], 'string', 'max' => 100],
            [['username'], 'unique'],
            [['email'], 'unique'],
            [['password_reset_token'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => 'Username',
            'auth_key' => 'Auth Key',
            'password_hash' => 'Password Hash',
            'password_reset_token' => 'Password Reset Token',
            'email' => 'Email',
            'status' => 'Status',
            'hak_akses' => 'Hak Akses',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'outcome' => 'Outcome',
        ];
    }
}
