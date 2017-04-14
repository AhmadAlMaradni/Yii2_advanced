<?php

/* @var $this yii\web\View */
use yii\helpers\Url;

$this->title = 'OpenSooq';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>OpenSooq Community!</h1>

        <p class="lead">you are welcome to opensooq where you can write anything you want.</p>

        <p><a class="btn btn-lg btn-success" href=<?php echo Url::base().'/post'; ?> >write Post</a></p>
    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-xs-8">

                <img src="https://media.arabnet.me/site_media/uploads/home_page_images/2014/11/05/opensooq-home.png" >

                
            </div>
            <div class="col-xs-8">
                <h2>All You Want</h2>

                <img src="http://www.talk-business.co.uk/wp-content/uploads/2016/01/shutterstock_143808508-632x421.jpg" >

                
            </div>
        </div>

    </div>
</div>
