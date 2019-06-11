<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.1.5/js/uikit.min.js"></script>
<h2>Tambah Outcome</h2>
<form method="get" class="uk-form-stacked uk-margin-medium-top uk-margin-medium-bottom tm-form-contact">
    <div class="uk-margin-medium-bottom">
        <label class="uk-form-label uk-margin-small-bottom" for="form-stacked-text">Jenis Publikasi</label>
        <div class="uk-form-controls">
            <select class="uk-input uk-form-large tm-form-xlarge uk-border-rounded" name="jenis" id="">
                <!-- <option disabled selected value> -- pilih jenis publikasi -- </option> -->
                <option value="buku">Buku</option>
                <option value="jurnal">Jurnal</option>
                <option value="seminar">Prosiding Seminar</option>
            </select>
        </div>
    </div>
    <div class="uk-margin-medium-bottom">
        <label class="uk-form-label uk-margin-small-bottom" for="form-stacked-text">Id</label>
        <div class="uk-form-controls">
            <input class="uk-input uk-form-large tm-form-xlarge uk-border-rounded" name="id" id="form-judul" type="text" placeholder="Masukkan id...">
        </div>
    </div>
    <div class="uk-margin-medium-bottom">
        <label class="uk-form-label uk-margin-small-bottom" for="form-stacked-text">Judul</label>
        <div class="uk-form-controls">
            <input class="uk-input uk-form-large tm-form-xlarge uk-border-rounded" name="judul" id="form-judul" type="text" placeholder="Masukkan judul...">
        </div>
    </div>
    <div class="uk-margin-medium-bottom">
        <label class="uk-form-label uk-margin-small-bottom" for="form-stacked-text">Penulis</label>
        <div class="uk-form-controls">
            <textarea class="uk-textarea uk-form-large tm-form-xlarge uk-border-rounded" name="penulis"  id="form-penulis" placeholder="Masukkan nama penulis..."></textarea>
        </div>
    </div>
    <div class="uk-margin-medium-bottom">
        <label class="uk-form-label uk-margin-small-bottom" for="form-stacked-text">Tema</label>
        <div class="uk-form-controls">
            <input class="uk-input uk-form-large tm-form-xlarge uk-border-rounded" name="tema" id="form-tema" type="text" placeholder="Masukkan tema...">
        </div>
    </div>
    <div class="uk-margin-medium-bottom">
        <label class="uk-form-label uk-margin-small-bottom" for="form-stacked-text">Volume</label>
        <div class="uk-form-controls">
            <input class="uk-input uk-form-large tm-form-xlarge uk-border-rounded" name="volume" id="form-volume" type="text" placeholder="Masukkan volume..">
        </div>
    </div>
    <div class="uk-margin-medium-bottom">
        <label class="uk-form-label uk-margin-small-bottom" for="form-stacked-text">Edisi</label>
        <div class="uk-form-controls">
            <input class="uk-input uk-form-large tm-form-xlarge uk-border-rounded" name="edisi" id="form-edisi" type="text" placeholder="Masukkan edisi...">
        </div>
    </div>
    <div class="uk-margin-medium-bottom">
        <label class="uk-form-label uk-margin-small-bottom" for="form-stacked-text">Tahun</label>
        <div class="uk-form-controls">
            <input class="uk-input uk-form-large tm-form-xlarge uk-border-rounded" name="tahun" id="form-tahun" type="text" placeholder="Masukkan tahun...">
        </div>
    </div>
    <div class="uk-margin-large-bottom">
        <label class="uk-form-label uk-margin-small-bottom" for="form-stacked-text">Attachment</label>
        <div class="js-upload uk-placeholder uk-text-center uk-margin-remove uk-border-rounded">
            <span data-uk-icon="icon: cloud-upload"></span>
            <span class="uk-text-middle">Attach files by dropping them here or</span>
            <div data-uk-form-custom>
                <input type="file" name="file[]" multiple>
                <span class="uk-link">selecting one</span>
            </div>
        </div>

        <progress id="js-progressbar" class="uk-progress" value="0" max="100" hidden></progress>

        <script>
            var bar = document.getElementById('js-progressbar');

            UIkit.upload('.js-upload', {

                url: '',
                multiple: true,

                beforeSend: function() {
                    console.log('beforeSend', arguments);
                },
                beforeAll: function() {
                    console.log('beforeAll', arguments);
                },
                load: function() {
                    console.log('load', arguments);
                },
                error: function() {
                    console.log('error', arguments);
                },
                complete: function() {
                    console.log('complete', arguments);
                },

                loadStart: function(e) {
                    console.log('loadStart', arguments);

                    bar.removeAttribute('hidden');
                    bar.max = e.total;
                    bar.value = e.loaded;
                },

                progress: function(e) {
                    console.log('progress', arguments);

                    bar.max = e.total;
                    bar.value = e.loaded;
                },

                loadEnd: function(e) {
                    console.log('loadEnd', arguments);

                    bar.max = e.total;
                    bar.value = e.loaded;
                },

                completeAll: function() {
                    console.log('completeAll', arguments);

                    setTimeout(function() {
                        bar.setAttribute('hidden', 'hidden');
                    }, 1000);

                    //alert('Upload Completed');
                }

            });
        </script>
    </div>
    <div class="uk-text-center">
        <input class="tm-button tm-button-xlarge" id="form-submit" type="submit" name="send" value="Send">
    </div>
</form>

<script>
 
</script>
