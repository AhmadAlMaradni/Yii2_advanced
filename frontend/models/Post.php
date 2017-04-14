<?php

namespace frontend\models;
use frontend\models\Categories;
use frontend\models\User;
use frontend\models\tags;


use Yii;

/**
 * This is the model class for table "post".
 *
 * @property integer $id
 * @property string $title
 * @property string $description
 * @property integer $user_id
 * @property integer $category_id
 */
class Post extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'post';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'description', 'user_id', 'category_id'], 'required'],
            [['description'], 'string'],
            [['user_id', 'category_id'], 'integer'],
            [['title'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'description' => 'Description',
            'user_error()id' => 'User ID',
            'category_id' => 'Category ID',
        ];
    }



    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategory()
    {
        return $this->hasOne(Categories::className(), ['id' => 'category_id']);
    }


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPostTags()
    {
        return $this->hasMany(posttags::className(), ['PostsID' => 'id'])->with('tag');
    }


     public function getCateg()
    {
        return Categories::find()->select('name')->indexBy('id')->column();
    }


     public function getTag()
    {
        return tags::find()->select('name')->indexBy('id')->column();
    }

}
