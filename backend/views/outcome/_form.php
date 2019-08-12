<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Outcome */
/* @var $form yii\widgets\ActiveForm */
?>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<div class="outcome-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'jenis_outcome')->dropDownList(
        [ 
            'Buku' => 'Buku', 
            'Jurnal' => 'Jurnal', 
            'Prosiding Seminar' => 'Prosiding Seminar', 
        ], [
            'prompt' => '- Pilih jenis publikasi -'],
        ); 
    ?>

    <?= $form->field($model, 'id')->textInput(['readonly' => !$model->isNewRecord,'maxlength' => true]) ?>

    <?= $form->field($model, 'penulis')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'jenis_jurnal')->dropDownList($jenisJurnal, ['prompt'=>'-pilih jenis jurnal-'])->label('Jenis Jurnal') ?>

    <?= $form->field($model, 'tema')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'volume')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nomor')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tahun')->textInput(['maxlength' => true]) ?>

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

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success', 'id' => 'outcome-save']) ?>
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

        var jenis_outcome = $('#outcome-jenis_outcome').val();
        if(jenis_outcome == 'Buku'){
            buku();
        } else if(jenis_outcome == 'Jurnal'){
            jurnal();
        } else if(jenis_outcome == 'Prosiding Seminar'){
            ps();
        } else{
            other();
        }

        $(document.body).on('change', '#outcome-jenis_outcome', function () {
            var val = $('#outcome-jenis_outcome').val();
            if(val == "Buku" ) {
                // $('#outcome-id').show();
                buku();
            } else if(val == "Jurnal") {
                jurnal();
            } else if(val == "Prosiding Seminar"){
                ps();
            } else {
                other();
            }
        });
    });
    
    function buku(){
        document.getElementById('outcome-id').parentNode.style.display='block';
        document.getElementById('outcome-penulis').parentNode.style.display='block';
        document.getElementById('outcome-id').value='<?= (isset($model["id"])) ? $model["id"] : "" ?>';
        document.getElementById('outcome-penulis').value=`<?= (isset($model["penulis"])) ? $model["penulis"] : "" ?>`;
        document.getElementById('outcome-jenis_jurnal').parentNode.style.display='none';
        document.getElementById('outcome-jenis_jurnal').value='0';
        document.getElementById('outcome-judul').parentNode.style.display='block';
        document.getElementById('outcome-tema').parentNode.style.display='none';
        document.getElementById('outcome-tema').value='-';
        document.getElementById('outcome-volume').parentNode.style.display='none';
        document.getElementById('outcome-volume').value='-';
        document.getElementById('outcome-nomor').parentNode.style.display='none';
        document.getElementById('outcome-nomor').value='-';
        document.getElementById('outcome-tahun').parentNode.style.display='block';
        document.getElementById('label_file').parentNode.style.display='block';
        document.getElementById('outcome-save').parentNode.style.display='block';
    }

    function jurnal(){
        document.getElementById('outcome-id').parentNode.style.display='block';
        document.getElementById('outcome-id').value='<?= (isset($model["id"])) ? $model["id"] : "" ?>';
        document.getElementById('outcome-penulis').parentNode.style.display='none';
        document.getElementById('outcome-penulis').value='-';
        document.getElementById('outcome-jenis_jurnal').parentNode.style.display='block';
        document.getElementById('outcome-jenis_jurnal').value='<?= (isset($model["jenis_jurnal"])) ? $model["jenis_jurnal"] : "" ?>';
        document.getElementById('outcome-judul').parentNode.style.display='block';
        document.getElementById('outcome-tema').parentNode.style.display='block';
        document.getElementById('outcome-volume').parentNode.style.display='block';
        document.getElementById('outcome-nomor').parentNode.style.display='block';
        document.getElementById('outcome-tema').value='<?= (isset($model["tema"])) ? $model["tema"] : "" ?>';
        document.getElementById('outcome-volume').value='<?= (isset($model["volume"])) ? $model["volume"] : "" ?>';
        document.getElementById('outcome-nomor').value='<?= (isset($model["nomor"])) ? $model["nomor"] : "" ?>';
        document.getElementById('outcome-tahun').parentNode.style.display='block';
        document.getElementById('label_file').parentNode.style.display='block';
        document.getElementById('outcome-save').parentNode.style.display='block';
    }

    function ps(){
        document.getElementById('outcome-id').parentNode.style.display='none';
        document.getElementById('outcome-id').value='<?= (isset($model["id"])) ? $model["id"] : "-" ?>';
        document.getElementById('outcome-penulis').parentNode.style.display='block';
        document.getElementById('outcome-penulis').value=`<?= (isset($model["penulis"])) ? $model["penulis"] : "" ?>`;
        document.getElementById('outcome-jenis_jurnal').parentNode.style.display='none';
        document.getElementById('outcome-jenis_jurnal').value='0';
        document.getElementById('outcome-judul').parentNode.style.display='block';
        document.getElementById('outcome-tema').parentNode.style.display='none';
        document.getElementById('outcome-tema').parentNode.style.display='none';
        document.getElementById('outcome-volume').parentNode.style.display='none';
        document.getElementById('outcome-nomor').parentNode.style.display='none';
        document.getElementById('outcome-tahun').parentNode.style.display='block';
        document.getElementById('outcome-tema').value='-';
        document.getElementById('outcome-tema').value='-';
        document.getElementById('outcome-volume').value='-';
        document.getElementById('outcome-nomor').value='-';
        document.getElementById('label_file').parentNode.style.display='block';
        document.getElementById('outcome-save').parentNode.style.display='block';
    }

    function other(){
        document.getElementById('outcome-id').parentNode.style.display='none';
        document.getElementById('outcome-penulis').parentNode.style.display='none';
        document.getElementById('outcome-jenis_jurnal').parentNode.style.display='none';
        document.getElementById('outcome-judul').parentNode.style.display='none';
        document.getElementById('outcome-tema').parentNode.style.display='none';
        document.getElementById('outcome-volume').parentNode.style.display='none';
        document.getElementById('outcome-nomor').parentNode.style.display='none';
        document.getElementById('outcome-tahun').parentNode.style.display='none';
        document.getElementById('label_file').parentNode.style.display='none';
        document.getElementById('outcome-save').parentNode.style.display='none';
    }

</script>