<?php

/* @var $this yii\web\View */
// use backend\assets\AppAsset;
use backend\assets\AppAssetPage;

$this->title = 'Dashboard';
// AppAsset::register($this);
AppAssetPage::register($this);
?>
<style>
    #backButton {
        border-radius: 4px;
        padding: 8px;
        border: none;
        font-size: 16px;
        background-color: #2eacd1;
        color: white;
        position: absolute;
        top: 20px;
        right: 35px;
        cursor: pointer;
    }

    .invisible {
        display: none;
    }
</style>
<!-- Page Content -->
<div class="content">
    <div class="row" data-toggle="appear">
        <!-- Row #1 -->
        <div class="col-6 col-xl-3">
            <a class="block block-link-pop text-right bg-primary" href="javascript:void(0)">
                <div class="block-content block-content-full clearfix border-black-op-b border-3x">
                    <div class="float-left mt-10 d-none d-sm-block">
                        <i class="si si-bar-chart fa-3x text-primary-light"></i>
                    </div>
                    <div class="font-size-h3 font-w600 text-white" data-toggle="countTo" data-speed="1000" data-to="<?= $pengabdian ?>">0
                    </div>
                    <div class="font-size-sm font-w600 text-uppercase text-white-op">PENGABDIAN</div>
                </div>
            </a>
        </div>
        <div class="col-6 col-xl-3">
            <a class="block block-link-pop text-right bg-earth" href="javascript:void(0)">
                <div class="block-content block-content-full clearfix border-black-op-b border-3x">
                    <div class="float-left mt-10 d-none d-sm-block">
                        <i class="si si-trophy fa-3x text-earth-light"></i>
                    </div>
                    <div class="font-size-h3 font-w600 text-white"><span data-toggle="countTo" data-speed="1000" data-to="<?= $penelitian ?>">0</span></div>
                    <div class="font-size-sm font-w600 text-uppercase text-white-op">PENELITIAN</div>
                </div>
            </a>
        </div>
        <div class="col-6 col-xl-3">
            <a class="block block-link-pop text-right bg-elegance" href="javascript:void(0)">
                <div class="block-content block-content-full clearfix border-black-op-b border-3x">
                    <div class="float-left mt-10 d-none d-sm-block">
                        <i class="si si-envelope-letter fa-3x text-elegance-light"></i>
                    </div>
                    <div class="font-size-h3 font-w600 text-white" data-toggle="countTo" data-speed="1000" data-to="<?= $buku ?>">0
                    </div>
                    <div class="font-size-sm font-w600 text-uppercase text-white-op">BUKU</div>
                </div>
            </a>
        </div>
        <div class="col-6 col-xl-3">
            <a class="block block-link-pop text-right bg-corporate" href="javascript:void(0)">
                <div class="block-content block-content-full clearfix border-black-op-b border-3x">
                    <div class="float-left mt-10 d-none d-sm-block">
                        <i class="si si-fire fa-3x text-corporate-light"></i>
                    </div>
                    <div class="font-size-h3 font-w600 text-white" data-toggle="countTo" data-speed="1000" data-to="<?= $jurnal ?>">0
                    </div>
                    <div class="font-size-sm font-w600 text-uppercase text-white-op">JURNAL</div>
                </div>
            </a>
        </div>
        <!-- END Row #1 -->
    </div>
    <div class="row">
        <div class="col-12 col-xs-3">
            <div class="block-content block-content-full clearfix border-black-op-b border-3x">

                <div id="chartContainer" style="height: 300px; width: 100%;"></div>
                <button class="btn invisible" id="backButton">< Back</button>

            </div>
        </div>
    </div>
</div>
<!-- END Page Content -->

<script>
    window.onload = function() {

        // var totalVisitors = 883000;
        var categories = [];
        var visitorsData = {
            "Data Penelitian,Pengabdian,Majalah & Buku Uin Suska Riau": [{
                click: visitorsChartDrilldownHandler,
                cursor: "pointer",
                explodeOnClick: false,
                innerRadius: "75%",
                legendMarkerType: "square",
                name: "Data Penelitian,Pengabdian,Majalah & Buku Uin Suska Riau",
                radius: "100%",
                showInLegend: true,
                startAngle: 90,
                type: "doughnut",
                dataPoints: [{
                        y: <?= $penelitian ?>,
                        name: "Penelitian",
                        color: "#E7823A"
                    },
                    {
                        y: <?= $pengabdian ?>,
                        name: "Pengabdian",
                        color: "#546BC1"
                    },
                    {
                        y: <?= $buku?>,
                        name: "Buku",
                        color: "#c537db"
                    },
                    {
                        y: <?= $jurnal?>,
                        name: "Jurnal",
                        color: "#2facb2"
                    }
                ]
            }],
            "Penelitian": [{
                color: "#E7823A",
                click: visitorsChartPenelitianHandler,
                cursor: "pointer",
                name: "Penelitian",
                type: "column",
                dataPoints: [
                    <?php
                        for($i=0; $i<count($tahunP); $i++){
                    ?>
                            {
                                label:"<?= $tahunP[$i] ?>",
                                y: <?= $tp[$tahunP[$i]] ?>
                            },
                    <?php
                        }
                    ?>
                ]
            }],
            "Pengabdian": [{
                color: "#546BC1",
                click: visitorsChartPengabdianHandler,
                cursor: "pointer",
                name: "Pengabdian",
                type: "column",
                dataPoints: [
                    <?php
                        for($i=0; $i<count($tahunPb); $i++){
                    ?>
                            {
                                label:"<?= $tahunPb[$i] ?>",
                                y: <?= $tpb[$tahunPb[$i]] ?>
                            },
                    <?php
                        }
                    ?>
                ]
            }],
            "Buku": [{
                color: "#546BC1",
                name: "Buku",
                type: "column",
                dataPoints: [
                    <?php
                        for($i=0; $i<count($tahunB); $i++){
                    ?>
                            {
                                label:"<?= $tahunB[$i] ?>",
                                y: <?= $tb[$tahunB[$i]] ?>
                            },
                    <?php
                        }
                    ?>
                ]
            }],
            "Jurnal": [{
                color: "#546BC1",
                name: "Jurnal",
                type: "column",
                dataPoints: [
                    <?php
                        for($i=0; $i<count($tahunJ); $i++){
                    ?>
                            {
                                label:"<?= $tahunJ[$i] ?>",
                                y: <?= $tj[$tahunJ[$i]] ?>
                            },
                    <?php
                        }
                    ?>
                ]
            }],
            
            <?php
                for($i=0; $i<count($tahunP); $i++){
            ?>
                    "Penelitian <?= $tahunP[$i] ?>": [{
                        color: "#546BC1",
                        name: "<?= $tahunP[$i] ?>",
                        type: "column",
                        dataPoints: [
                            <?php
                                foreach($cluster[$tahunP[$i]] as $cls){
                            ?>
                                    {
                                        label:"<?= $cls['cluster']['nama_cluster'] ?>",
                                        y: <?= $hitungCluster[$tahunP[$i]][$cls['cluster']['nama_cluster']] ?>
                                    },
                            <?php
                                }
                            ?>
                        ]
                    }],
            <?php
                }

                for($i=0; $i<count($tahunPb); $i++){
            ?>
                    "Pengabdian <?= $tahunPb[$i] ?>": [{
                        color: "#546BC1",
                        name: "<?= $tahunPb[$i] ?>",
                        type: "column",
                        dataPoints: [
                            <?php
                                foreach($clusterPb[$tahunPb[$i]] as $cls){
                            ?>
                                    {
                                        label:"<?= $cls['cluster']['nama_cluster'] ?>",
                                        y: <?= $hitungClusterPb[$tahunPb[$i]][$cls['cluster']['nama_cluster']] ?>
                                    },
                            <?php
                                }
                            ?>
                        ]
                    }],
                <?php
                }
            ?>
        };

        var newVSReturningVisitorsOptions = {
            animationEnabled: true,
            theme: "light2",
            title: {
                text: "Data Penelitian,Pengabdian,Majalah & Buku Uin Suska Riau"
            },
            subtitles: [{
                text: "Silahkan Klik Untuk Memunculkan Drildown",
                backgroundColor: "#2eacd1",
                fontSize: 16,
                fontColor: "white",
                padding: 5
            }],
            legend: {
                fontFamily: "calibri",
                fontSize: 14,
                itemTextFormatter: function(e) {
                    return e.dataPoint.name + ": " + Math.round(e.dataPoint.y / (<?= $penelitian ?> + <?= $pengabdian ?> + <?= $buku ?> + <?= $jurnal ?>) * 100) + "%";
                }
            },
            data: []
        };

        var visitorsDrilldownedChartOptions = {
            animationEnabled: true,
            theme: "light2",
            axisX: {
                labelFontColor: "#717171",
                lineColor: "#a2a2a2",
                tickColor: "#a2a2a2"
            },
            axisY: {
                gridThickness: 0,
                includeZero: false,
                labelFontColor: "#717171",
                lineColor: "#a2a2a2",
                tickColor: "#a2a2a2",
                lineThickness: 1
            },
            data: []
        };

        var visitorsPenelitianChartOptions = {
            animationEnabled: true,
            theme: "light2",
            axisX: {
                labelFontColor: "#717171",
                lineColor: "#a2a2a2",
                tickColor: "#a2a2a2"
            },
            axisY: {
                gridThickness: 0,
                includeZero: false,
                labelFontColor: "#717171",
                lineColor: "#a2a2a2",
                tickColor: "#a2a2a2",
                lineThickness: 1
            },
            data: []
        };

        var visitorsPengabdianChartOptions = {
            animationEnabled: true,
            theme: "light2",
            axisX: {
                labelFontColor: "#717171",
                lineColor: "#a2a2a2",
                tickColor: "#a2a2a2"
            },
            axisY: {
                gridThickness: 0,
                includeZero: false,
                labelFontColor: "#717171",
                lineColor: "#a2a2a2",
                tickColor: "#a2a2a2",
                lineThickness: 1
            },
            data: []
        };

        var chart = new CanvasJS.Chart("chartContainer", newVSReturningVisitorsOptions);
        chart.options.data = visitorsData["Data Penelitian,Pengabdian,Majalah & Buku Uin Suska Riau"];
        chart.render();

        function visitorsChartDrilldownHandler(e) {
            categories.push({category: "total"});
            chart = new CanvasJS.Chart("chartContainer", visitorsDrilldownedChartOptions);
            chart.options.data = visitorsData[e.dataPoint.name];
            chart.options.title = {
                text: e.dataPoint.name
            }
            chart.render();
            $("#backButton").toggleClass("invisible");
        }

        function visitorsChartPenelitianHandler(e) {
            chart = new CanvasJS.Chart("chartContainer", visitorsPenelitianChartOptions);
            chart.options.data = visitorsData["Penelitian "+e.dataPoint.label];
            chart.options.title = { text: "Cluster Penelitian " + e.dataPoint.label };
            chart.render();
            categories.push({category: "Penelitian"})
        }

        function visitorsChartPengabdianHandler(e) {
            chart = new CanvasJS.Chart("chartContainer", visitorsPengabdianChartOptions);
            chart.options.data = visitorsData["Pengabdian "+e.dataPoint.label];
            chart.options.title = { text: "Cluster Pengabdian " + e.dataPoint.label };
            chart.render();
            categories.push({category: "Pengabdian"})
        }

        $("#backButton").click(function() { 
            //Update this condition based on the number of levels of drill down. In this example, 3 level drill down.
            if(categories.length-1 === 1) {  	
                chart = new CanvasJS.Chart("chartContainer", newVSReturningVisitorsOptions);
                if(categories[categories.length-1].category === "Penelitian") {
                    chart.options.data = visitorsData["Penelitian"];
                    chart.options.title.text = "Penelitian";
                    chart.options.subtitles[0].text = "Silahkan Klik Untuk Memunculkan Drildown";
                }
                else if(categories[categories.length-1].category === "Pengabdian") {
                    chart.options.data = visitorsData["Pengabdian"];
                    chart.options.title.text = "Pengabdian";
                    chart.options.subtitles[0].text = "Silahkan Klik Untuk Memunculkan Drildown";
                }
            }
            else {  
                $(this).toggleClass("invisible");
                chart = new CanvasJS.Chart("chartContainer", newVSReturningVisitorsOptions);
                chart.options.data = visitorsData["Data Penelitian,Pengabdian,Majalah & Buku Uin Suska Riau"]; 
                chart.options.title.text = "Data Penelitian,Pengabdian,Majalah & Buku Uin Suska Riau";
                chart.options.subtitles[0].text = "Silahkan Klik Untuk Memunculkan Drildown";
            }
            chart.render();
            categories.pop();
        });

    }
</script>
