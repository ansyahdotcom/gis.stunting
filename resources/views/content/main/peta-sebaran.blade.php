@extends('parts.main.admin.master')
@section('content')
<div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body m-t-50">
                    <div class="row">
                        <!-- task, page, download counter  start -->

                        <!-- task, page, download counter  end -->
                        <div class="col-xl-1"></div>
                        <!--  sale analytics start -->
                        <div class="col-xl-10 col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Peta Sebaran</h5>
                                    <span class="text-muted">Kasus Stunting Setiap Kecamatan di Kabupaten Jember</span>
                                    <div class="card-header-right">
                                        <ul class="list-unstyled card-option">
                                            <li><i class="feather icon-maximize full-card"></i></li>
                                            <li><i class="feather icon-minus minimize-card"></i></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <div id="map"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-1"></div>
                        <!--  sale analytics end -->
                    </div>
                </div>
            </div>
            <div class="hidden" style="color: transparent;">

                @php
                foreach ($kcm as $key => $value) {
                    echo $value->nama_kcm;
                }
                @endphp
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="{{asset('assets/kecamatan.js')}}"></script>
<script>
    $(document).ready(function() {

        var mapmargin = 50;
        $('#map').css("height", ($(window).height() - mapmargin));
        $(window).on("resize", resize);
        resize();

        function resize() {

            if ($(window).width() >= 980) {
                $('#map').css("height", ($(window).height() - mapmargin));
                $('#map').css("margin-top", 50);
            } else {
                $('#map').css("height", ($(window).height() - (mapmargin + 12)));
                $('#map').css("margin-top", -21);
            }

        }
        // // Your web app's Firebase configuration
        // // For Firebase JS SDK v7.20.0 and later, measurementId is optional
        // var firebaseConfig = {
        //     apiKey: "AIzaSyAfh--fPWoeCb7yUw-okdJ92-zVpR_1MiA",
        //     authDomain: "sigenting-672bd.firebaseapp.com",
        //     databaseURL: "https://sigenting-672bd-default-rtdb.asia-southeast1.firebasedatabase.app",
        //     projectId: "sigenting-672bd",
        //     storageBucket: "sigenting-672bd.appspot.com",
        //     messagingSenderId: "746282474380",
        //     appId: "1:746282474380:web:2aed03ce2394602904d4a9",
        //     measurementId: "G-GYYF3J079B"
        // };
        // // Initialize Firebase
        // firebase.initializeApp(firebaseConfig);
        // firebase.analytics();
        // var longitude;
        // var latitude;
        var stunting = L.layerGroup();
        var umkm = L.layerGroup();

        var data_kecamatan = @json($kcm);
        $.each(data_kecamatan,function(index, value){
            // console.log('My array has at position ' + index + ', this value: ' + value.nama_kcm + ', koordinat : ' + value.koordinat);
            L.marker([value.longtd_kcm, value.latd_kcm])
                .addTo(stunting)
                .bindPopup("<center>Kecamatan : " + value.nama_kcm + "</center><hr>" 
                + "<table>"
                        +"<tbody>"
                        +"<tr>"
                                +"<td colspan='4'><center>BB/U<center></td>"
                                +"<td></td>"
                                +"<td colspan='4'><center>TB/U</center></td>"
                            +"</tr>"
                        +"<tr>"
                            +"<td>BB Sangat Kurang</td>"
                            +"<td> :</td>"
                            +"<td>"+ value.bb_sangat_kurang+"</td>"
                            +"<td>anak</td>"
                            +"<td></td>"
                            +"<td>Sangat Pendek</td>"
                            +"<td> :</td>"
                            +"<td>"+ value.tb_sangat_pendek+"</td>"
                            +"<td>anak</td>"
                        +"</tr>"
                        +"<tr>"
                            +"<td>BB Kurang</td>"
                            +"<td> :</td>"
                            +"<td>"+ value.bb_kurang+"</td>"
                            +"<td>anak</td>"
                            +"<td></td>"
                            +"<td>Pendek</td>"
                            +"<td> :</td>"
                            +"<td>"+ value.tb_pendek+"</td>"
                            +"<td>anak</td>"
                        +"</tr>"
                        +"<tr>"
                            +"<td>BB Normal</td>"
                            +"<td> :</td>"
                            +"<td>"+ value.bb_normal+"</td>"
                            +"<td>anak</td>"
                            +"<td></td>"
                            +"<td>Normal</td>"
                            +"<td> :</td>"
                            +"<td>"+ value.tb_normal+"</td>"
                            +"<td>anak</td>"
                        +"</tr>"
                        +"<tr>"
                            +"<td>Risiko BB Lebih</td>"
                            +"<td> :</td>"
                            +"<td>"+ value.bb_lebih+"</td>"
                            +"<td>anak</td>"
                            +"<td></td>"
                            +"<td>Tinggi</td>"
                            +"<td> :</td>"
                            +"<td>"+ value.tb_tinggi+"</td>"
                            +"<td>anak</td>"
                        +"</tr>"
                        +"</tbody>"
                        +"</table>"
                        +"<hr>"
                        +"<table>"
                            +"<tbody>"
                            +"<tr>"
                                +"<td colspan='4'><center>BB/TB<center></td>"
                                +"<td></td>"
                                +"<td colspan='4'><center>IMT/U</center></td>"
                            +"</tr>"
                            +"<tr>"
                                +"<td>Gizi Buruk</td>"
                                +"<td> :</td>"
                                +"<td>"+ value.bbtb_gizi_buruk+"</td>"
                                +"<td>anak</td>"
                                +"<td></td>"
                                +"<td>Gizi Buruk</td>"
                                +"<td> :</td>"
                                +"<td>"+ value.imtu_gizi_buruk+"</td>"
                                +"<td>anak</td>"
                            +"</tr>"
                            +"<tr>"
                                +"<td>Gizi Kurang</td>"
                                +"<td> :</td>"
                                +"<td>"+ value.bbtb_gizi_kurang+"</td>"
                                +"<td>anak</td>"
                                +"<td></td>"
                                +"<td>Gizi Kurang</td>"
                                +"<td> :</td>"
                                +"<td>"+ value.imtu_gizi_kurang+"</td>"
                                +"<td>anak</td>"
                            +"</tr>"
                            +"<tr>"
                                +"<td>Gizi Baik / Normal</td>"
                                +"<td> :</td>"
                                +"<td>"+ value.bbtb_gizi_baik+"</td>"
                                +"<td>anak</td>"
                                +"<td></td>"
                                +"<td>Gizi Normal</td>"
                                +"<td> :</td>"
                                +"<td>"+ value.imtu_gizi_baik+"</td>"
                                +"<td>anak</td>"
                            +"</tr>"
                            +"<tr>"
                                +"<td>Berisiko Gizi Lebih</td>"
                                +"<td> :</td>"
                                +"<td>"+ value.bbtb_risiko_gizi_lebih+"</td>"
                                +"<td>anak</td>"
                                +"<td></td>"
                                +"<td>Berisiko Gizi Lebih</td>"
                                +"<td> :</td>"
                                +"<td>"+ value.imtu_risiko_gizi_lebih+"</td>"
                                +"<td>anak</td>"
                            +"</tr>"
                            +"<tr>"
                                +"<td>Obesitas</td>"
                                +"<td> :</td>"
                                +"<td>"+ value.bbtb_obesitas+"</td>"
                                +"<td>anak</td>"
                                +"<td></td>"
                                +"<td>Obesitas</td>"
                                +"<td> :</td>"
                                +"<td>"+ value.imtu_obesitas+"</td>"
                                +"<td>anak</td>"
                            +"</tr>"
                            +"</tbody>"
                            +"</table>"+"<hr>")
                        .openPopup();
        });


        var mbAttr = 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, ' +
            'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
            mbUrl = 'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw';

        var streets = L.tileLayer(mbUrl, {
            id: 'mapbox/streets-v11',
            tileSize: 512,
            zoomOffset: -1,
            attribution: mbAttr
        });
        
        var googlestreets = L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}', {
            maxZoom: 20,
            tileSize: 512,
            zoomOffset: -1,
            subdomains: ['mt0', 'mt1', 'mt2', 'mt3']
        });

        var googleHybrid = L.tileLayer('http://{s}.google.com/vt/lyrs=s,h&x={x}&y={y}&z={z}', {
            maxZoom: 20,
            subdomains: ['mt0', 'mt1', 'mt2', 'mt3']
        });
        var googleSat = L.tileLayer('http://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}', {
            maxZoom: 20,
            subdomains: ['mt0', 'mt1', 'mt2', 'mt3']
        });
        var googleTerrain = L.tileLayer('http://{s}.google.com/vt/lyrs=p&x={x}&y={y}&z={z}',{
            maxZoom: 20,
            subdomains:['mt0','mt1','mt2','mt3']
        });

        var map = L.map('map', {
            center: [-8.1691275, 113.699675],
            zoom: 11,
            layers: [googleHybrid, stunting]
        });

        var baseLayers = {
            "Streets": streets,
            "Google Streets" : googlestreets, 
            "Google Satelite" :googleSat, 
            "Google Hybrid" : googleHybrid,
            "Google Terrain" : googleTerrain
        };

        var overlays = {
            "Stunting": stunting
        };

        

        var popup = L.popup();
        L.control.scale().addTo(map);


        function onMapClick(e) {
            popup
                .setLatLng(e.latlng)
                .setContent("Mark " + e.latlng.toString())
                .openOn(map);
        }

        // control that shows state info on hover
        map.on('click', onMapClick);
        
        var info = L.control();

        info.onAdd = function (map) {
            this._div = L.DomUtil.create('div', 'info');
            this.update();
            return this._div;
        };

        info.update = function (props) {
            this._div.innerHTML = '' + (props ?
                '<b>Kecamatan ' + props.nama_kcm + '</b><br />' :
                '');
        };

        info.addTo(map);


        // get color depending on population density value
        function getColor(d) {
            return d > 1000 ? '#800026' :
                d > 500 ? '#BD0026' :
                d > 200 ? '#E31A1C' :
                d > 100 ? '#FC4E2A' :
                d > 50 ? '#FD8D3C' :
                d > 20 ? '#FEB24C' :
                d > 10 ? '#2EF51C' :
                '#008000';
        }

        function style(feature) {
            return {
                weight: 2,
                opacity: 1,
                color: 'white',
                dashArray: '3',
                fillOpacity: 0.7,
                fillColor: getColor(feature.properties.density)
            };
        }

        function highlightFeature(e) {
            var layer = e.target;

            layer.setStyle({
                weight: 5,
                color: '#666',
                dashArray: '',
                fillOpacity: 0.7
            });

            if (!L.Browser.ie && !L.Browser.opera && !L.Browser.edge) {
                layer.bringToFront();
            }

            info.update(layer.feature.properties);
        }

        var geojson;
        // var geoJson1;

        function resetHighlight(e) {
            geojson.resetStyle(e.target);
            // geojson1.resetStyle(e.target);
            info.update();
        }

        function zoomToFeature(e) {
            map.fitBounds(e.target.getBounds());
        }

        function onEachFeature(feature, layer) {
            layer.on({
                mouseover: highlightFeature,
                mouseout: resetHighlight,
                click: zoomToFeature
            });
        }
        geojson = L.geoJson(statesData, {
            style: style,
            onEachFeature: onEachFeature
        }).addTo(stunting);

    });
</script>
@endsection