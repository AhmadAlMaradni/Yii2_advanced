<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\PostSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Posts';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="post-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Post', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
        ['class' => 'yii\grid\SerialColumn'],

        'id',
        [
        'attribute'=>'username',
        'value'=>'user.username',],

        'title',
        'description:ntext',
        ['attribute'=>'category','value'=>'category.name',],

        ['attribute'=>'tag','value'=> function($data) {
                    return implode(', ', ArrayHelper::map($data->postTags, 'TagsID', 'tag.Name'));
                }],

        ['attribute'=>'View','format' => 'raw', 'value'=> function($model) {
                    return '<a href="view?id='.$model->id.'" class="glyphicon glyphicon-eye-open"></a>';
                }],  
        ],
        ]); ?>
    </div>
