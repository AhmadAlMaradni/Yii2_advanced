<?php

namespace frontend\models;
use frontend\models\tags;

use Yii;

/**
 * This is the model class for table "posttags".
 *
 * @property integer $PostsID
 * @property integer $TagsID
 */
class Posttags extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'posttags';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PostsID', 'TagsID'], 'required'],
            [['PostsID', 'TagsID'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'PostsID' => 'Posts ID',
            'TagsID' => 'Tags ID',
        ];
    }

    public function getTag()
    {
        return $this->hasOne(tags::className(), ['ID' => 'TagsID']);
    }
}
