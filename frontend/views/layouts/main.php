<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?><?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,800%7CWork+Sans:200,300%7CJosefin+Sans:100"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <?php $this->head() ?>
    <style>
        .uk-container {
            box-sizing: content-box;
            max-width: 1028px !important;
        }
    </style>

</head>
<body class="">
<?php $this->beginBody() ?>
<div class="uk-offcanvas-content">
    <div class="uk-section-primary tm-section-intro">
        <div uk-sticky="media: 960;show-on-up: true;animation: uk-animation-slide-top;cls-inactive: uk-navbar-transparent;top: 400"
             class="uk-navbar-container tm-navbar-container uk-light uk-sticky uk-navbar-transparent" style="">
            <div class="uk-container uk-container-expand">
                <nav class="uk-navbar">
                    <div class="uk-navbar-left">
                        <?= Html::a(
                            Yii::t('app',
                                '<span data-uk-icon="icon: desktop"></span>&nbsp;LPPM UIN SUSKA'
                            ),
                            ['site/index'],
                            ['class' => 'uk-navbar-item uk-logo']
                        ) ?>
                    </div>
                    <div class="uk-navbar-center uk-visible@m">

                        <ul class="uk-navbar-nav">
                            <li><a href="<?= Yii::$app->urlManager->createURL('site/syarat') ?>"><strong>Syarat & Ketentuan</strong></a></li>
                            <li><a href="<?= Yii::$app->urlManager->createURL('site/faq') ?>"><strong>FAQ</strong></a></li>
                            <li><a href="<?= Yii::$app->urlManager->createURL('site/contact1') ?>"><strong>Contact</strong></a></li>
                            <?= Yii::$app->user->isGuest ? "" : "<li><a href='".Yii::$app->urlManager->createURL('outcome/index')."'><strong>Outcome</strong></a></li>" ?>
                        </ul>

                    </div>
                    <div class="uk-navbar-right">
                        <?= Yii::$app->user->isGuest ? Html::a(
                            Yii::t('app',
                                '<span data-uk-icon="icon: sign-in" title="Sign-In"></span>'
                            ),
                            ['site/login'],
                            ['class' => 'uk-navbar-toggle']
                        ) : (
                            '<span>'.strtoupper(Yii::$app->user->identity->username).'</span>'.
                            Html::beginForm(['/site/logout'], 'post')
                            . Html::submitButton(
                                '<span data-uk-icon="icon: sign-out" title="Sign-Out"></span>',
                                ['class' => 'btn btn-link logout', 'style' => 'color:#fff', 'alt' => 'sign-out']
                            )
                            . Html::endForm()
                        ) ?>
                        <a class="uk-navbar-toggle " href="#search" data-uk-search-icon data-uk-toggle></a>
                        <a class="uk-navbar-toggle uk-hidden@m" href="#offcanvas" data-uk-navbar-toggle-icon
                           data-uk-toggle></a>
                    </div>

                </nav>
            </div>
        </div>
    </div>

    <div class="uk-section uk-section-small">
        <div class="uk-container">
            <?= Breadcrumbs::widget([
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ]) ?>
            <?= Alert::widget() ?>
            <?= $content ?>
        </div>
    </div>

    <div class="uk-section uk-section-default">
        <div class="uk-container">
        </div>
    </div>
    <footer class="uk-section tm-primary-color-dark uk-light uk-text-center">
        <div class="uk-container">
            <div>
                <ul class="uk-subnav uk-flex-center">
                    <li><a href="<?= Yii::$app->urlManager->createURL('site/syarat') ?>"><strong>Syarat & Ketentuan</strong></a></li>
                    <li><a href="<?= Yii::$app->urlManager->createURL('site/faq') ?>"><strong>FAQ</strong></a></li>
                    <li><a href="<?= Yii::$app->urlManager->createURL('site/contact1') ?>"><strong>Contact</strong></a></li>
                    <?= Yii::$app->user->isGuest ? "" : "<li><a href='".Yii::$app->urlManager->createURL('outcome/index')."'><strong>Outcome</strong></a></li>" ?>
                </ul>
            </div>
            <div class="uk-margin-medium">
                <div data-uk-grid class="uk-child-width-auto uk-grid-small uk-flex-center uk-grid">
                    <div class="uk-first-column">
                        <a href="#" data-uk-icon="icon: github" class="uk-icon-link uk-icon"></a>
                    </div>
                    <div>
                        <a href="#" data-uk-icon="icon: twitter" class="uk-icon-link uk-icon"></a>
                    </div>
                    <div>
                        <a href="#" data-uk-icon="icon: instagram"
                           class="uk-icon-link uk-icon"></a>
                    </div>
                    <div>
                        <a href="#" data-uk-icon="icon: facebook" class="uk-icon-link uk-icon"></a>
                    </div>
                </div>
            </div>
            <div class="uk-margin-medium tm-text-xsmall uk-text-meta copyright">
                Copyright &copy <?= date('Y') ?> by <a href="#">AHMAD FAUZI RAHMAN S.T, M.T.A</a>
            </div>
        </div>
    </footer>

    <div id="search" class="uk-flex-top uk-background-primary uk-modal-search uk-light" data-uk-modal>
        <button class="uk-modal-close-full uk-close-large" type="button" data-uk-close></button>
        <div class="uk-modal-dialog uk-text-center uk-margin-auto-vertical uk-padding-large">
            <?=
            Html::beginForm(['/site/check'], 'post',
                ['class' => "uk-search uk-search-large uk-margin-auto"]);
            ?>
            <input class="uk-search-input uk-text-center" name="id" type="search"
                   placeholder="Masukkan No Npwp...">
            <?= Html::endForm()
            ?>
        </div>
    </div>
    <div id="offcanvas" data-uk-offcanvas="flip: true; overlay: true">
        <div class="uk-offcanvas-bar">

            <button class="uk-offcanvas-close" type="button" data-uk-close></button>

            <ul class="uk-nav uk-nav-default">
                <li class="uk-nav-header uk-logo">Menu</li>
                <li><a href="#"><strong>Syarat & Ketentuan</strong></a></li>
                <li><a href="#"><strong>FAQ</strong></a></li>
                <li><a href="#"><strong>Contact</strong></a></li>
                <?= Yii::$app->user->isGuest ? '' : '<li><a href="#"><strong>Outcome</strong></a></li>' ?>
                
            </ul>

        </div>
    </div>
</div>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
