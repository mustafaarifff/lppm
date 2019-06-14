<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Outcome */
/* @var $form yii\widgets\ActiveForm */
?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<div class="outcome-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>
    <?php 
        if(substr($model['file'],0,3) == 'ps-'){
            $model->jenis_file = "ps";
        } else if($model['volume'] == '-'){
            $model->jenis_file = "bk";
        } else if($model['penulis'] == '-'){
            $model->jenis_file = "jn";
        }
    ?>
    <?= $form->field($model, 'jenis_file')->dropDownList(
        [
            'bk' => 'Buku',
            'jn' => 'Jurnal',
            'ps' => 'Prosiding Seminar',
        ],
        ['prompt' => '- Pilih jenis publikasi -'],
    ); ?>

    <?= $form->field($model, 'id_buku')->textInput(['maxlength' => true, 'class' => 'uk-input uk-form-large tm-form-xlarge uk-border-rounded']) ?>

    <?= $form->field($model, 'penulis')->textarea(['rows' => 6, 'class' => 'uk-textarea uk-form-large tm-form-xlarge uk-border-rounded']) ?>

    <?= $form->field($model, 'judul')->textInput(['maxlength' => true, 'class' => 'uk-input uk-form-large tm-form-xlarge uk-border-rounded']) ?>

    <?= $form->field($model, 'jenis_jurnal')->dropDownList($jenisJurnal, ['prompt'=>'-pilih jenis jurnal-'])->label('Jenis Jurnal') ?>

    <?= $form->field($model, 'tema')->textInput(['maxlength' => true, 'class' => 'uk-input uk-form-large tm-form-xlarge uk-border-rounded']) ?>

    <?= $form->field($model, 'volume')->textInput(['maxlength' => true, 'class' => 'uk-input uk-form-large tm-form-xlarge uk-border-rounded']) ?>

    <?= $form->field($model, 'edisi')->textInput(['maxlength' => true, 'class' => 'uk-input uk-form-large tm-form-xlarge uk-border-rounded']) ?>

    <?= $form->field($model, 'tahun')->textInput(['maxlength' => true, 'class' => 'uk-input uk-form-large tm-form-xlarge uk-border-rounded']) ?>
    
    <?php

        $file = null;
        $upload = 'Browse..';
        if($model->file != null){
            $file = Html::a($model->file, ['download', 'name' => $model->file])." ";
            $upload = 'Change File';
        } 
    
    ?>

    <?= $form->field($model, 'file', [
        'template' => '{label}
                        <br>'.$file.'<label id="label_file" class="btn btn-primary">'.$upload.' {input}</label> <span id="ket_file"></span>
                        {hint}
                        {error}'
    ])->fileInput(['style' => 'display:none']) ?>

    <div class="uk-text-center">
        <?= Html::submitButton('Save', ['class' => 'tm-button tm-button-xlarge', 'id' => 'outcome-save']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<script>
    $(document).ready(function () {
        $('#label_file').change(function() {
            var files = event.target.files
            // console.log(files.length);
            if(files.length>0){
                $("#ket_file").text(files[0].name);
            } else {
                $("#ket_file").text('');
            }
        });

        var jenis_file = $('#outcome-jenis_file').val();
        if(jenis_file == 'bk'){
            buku();
        } else if(jenis_file == 'jn'){
            jurnal();
        } else if(jenis_file == 'ps'){
            ps();
        } else{
            other();
        }

        $(document.body).on('change', '#outcome-jenis_file', function () {
            var val = $('#outcome-jenis_file').val();
            if(val == "bk" ) {
                // $('#outcome-id_buku').show();
                buku();
            } else if(val == "jn") {
                jurnal();
            } else if(val == "ps"){
                ps();
            } else {
                other();
            }
        });
    });
    
    function buku(){
        document.getElementById('outcome-id_buku').parentNode.style.display='block';
        document.getElementById('outcome-penulis').parentNode.style.display='block';
        document.getElementById('outcome-id_buku').value='<?= (isset($model["id_buku"])) ? $model["id_buku"] : "" ?>';
        document.getElementById('outcome-penulis').value=`<?= (isset($model["penulis"])) ? $model["penulis"] : "" ?>`;
        document.getElementById('outcome-jenis_jurnal').parentNode.style.display='none';
        document.getElementById('outcome-jenis_jurnal').value='0';
        document.getElementById('outcome-judul').parentNode.style.display='block';
        document.getElementById('outcome-tema').parentNode.style.display='none';
        document.getElementById('outcome-tema').value='-';
        document.getElementById('outcome-volume').parentNode.style.display='none';
        document.getElementById('outcome-volume').value='-';
        document.getElementById('outcome-edisi').parentNode.style.display='none';
        document.getElementById('outcome-edisi').value='-';
        document.getElementById('outcome-tahun').parentNode.style.display='block';
        document.getElementById('label_file').parentNode.style.display='block';
        document.getElementById('outcome-save').parentNode.style.display='block';
    }

    function jurnal(){
        document.getElementById('outcome-id_buku').parentNode.style.display='block';
        document.getElementById('outcome-id_buku').value='<?= (isset($model["id_buku"])) ? $model["id_buku"] : "" ?>';
        document.getElementById('outcome-penulis').parentNode.style.display='none';
        document.getElementById('outcome-penulis').value='-';
        document.getElementById('outcome-jenis_jurnal').parentNode.style.display='block';
        document.getElementById('outcome-jenis_jurnal').value='<?= (isset($model["jenis_jurnal"])) ? $model["jenis_jurnal"] : "" ?>';
        document.getElementById('outcome-judul').parentNode.style.display='block';
        document.getElementById('outcome-tema').parentNode.style.display='block';
        document.getElementById('outcome-volume').parentNode.style.display='block';
        document.getElementById('outcome-edisi').parentNode.style.display='block';
        document.getElementById('outcome-tema').value='<?= (isset($model["tema"])) ? $model["tema"] : "" ?>';
        document.getElementById('outcome-volume').value='<?= (isset($model["volume"])) ? $model["volume"] : "" ?>';
        document.getElementById('outcome-edisi').value='<?= (isset($model["edisi"])) ? $model["edisi"] : "" ?>';
        document.getElementById('outcome-tahun').parentNode.style.display='block';
        document.getElementById('label_file').parentNode.style.display='block';
        document.getElementById('outcome-save').parentNode.style.display='block';
    }

    function ps(){
        document.getElementById('outcome-id_buku').parentNode.style.display='none';
        document.getElementById('outcome-id_buku').value='<?= (isset($model["id_buku"])) ? $model["id_buku"] : "-" ?>';
        document.getElementById('outcome-penulis').parentNode.style.display='block';
        document.getElementById('outcome-penulis').value=`<?= (isset($model["penulis"])) ? $model["penulis"] : "" ?>`;
        document.getElementById('outcome-jenis_jurnal').parentNode.style.display='none';
        document.getElementById('outcome-jenis_jurnal').value='0';
        document.getElementById('outcome-judul').parentNode.style.display='block';
        document.getElementById('outcome-tema').parentNode.style.display='none';
        document.getElementById('outcome-tema').parentNode.style.display='none';
        document.getElementById('outcome-volume').parentNode.style.display='none';
        document.getElementById('outcome-edisi').parentNode.style.display='none';
        document.getElementById('outcome-tahun').parentNode.style.display='block';
        document.getElementById('outcome-tema').value='-';
        document.getElementById('outcome-tema').value='-';
        document.getElementById('outcome-volume').value='-';
        document.getElementById('outcome-edisi').value='-';
        document.getElementById('label_file').parentNode.style.display='block';
        document.getElementById('outcome-save').parentNode.style.display='block';
    }

    function other(){
        document.getElementById('outcome-id_buku').parentNode.style.display='none';
        document.getElementById('outcome-penulis').parentNode.style.display='none';
        document.getElementById('outcome-jenis_jurnal').parentNode.style.display='none';
        document.getElementById('outcome-judul').parentNode.style.display='none';
        document.getElementById('outcome-tema').parentNode.style.display='none';
        document.getElementById('outcome-volume').parentNode.style.display='none';
        document.getElementById('outcome-edisi').parentNode.style.display='none';
        document.getElementById('outcome-tahun').parentNode.style.display='none';
        document.getElementById('label_file').parentNode.style.display='none';
        document.getElementById('outcome-save').parentNode.style.display='none';
    }

</script>