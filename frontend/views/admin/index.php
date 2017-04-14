<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\PostSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */






$this->title = 'Admin page';

$this->params['breadcrumbs'][] = $this->title;
?>
<div class="post-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <br><br>
    <h3>Duplicate Posts</h3>

     <?= GridView::widget([
        'dataProvider' => $dupl,
        'columns' => [
            'title',
            'description',
        ],
    ]); ?>

<br><br>

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
                ['class' => 'yii\grid\ActionColumn'],
        ],
        ]); ?>
    </div>
