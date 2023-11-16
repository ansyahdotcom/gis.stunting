@extends('parts.landingpage.master')
@section('content')

<!-- Main Section-->
<div class="hero-section app-hero">
    <div class="container">
        <div class="hero-content app-hero-content text-center">
            <div class="row justify-content-md-center">
                <div class="col-md-10">
                    <h1 class="wow fadeInUp" data-wow-delay="0s">Sistem Informasi Geografis Potensi dan Sebaran Kasus Stunting</h1>
                    <p class="wow fadeInUp" data-wow-delay="0.2s">
                        di Kabupaten Jember
                    </p>
                </div>
            </div>
            <div class="col-md-12">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="d-block img-fluid w-100"
                                src="{{asset('assets/assets/images/IMG_5842_009.jpg')}}" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid w-100"
                                src="{{asset('assets/assets/images/IMG_0320_009.jpg')}}" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid w-100"
                                src="{{asset('assets/assets/images/IMG_2744.jpg')}}" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid w-100"
                                src="{{asset('assets/assets/images/IMG_2951_009.jpg')}}" alt="Third slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid w-100"
                                src="{{asset('assets/assets/images/PEMERIKSAAN KESEHATAN JALUR PMDK-PA.jpg')}}" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                        data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                        data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="services-section text-center" id="peta">
    <!-- Services section (small) with icons -->
    <div class="container">
        <div class="row  justify-content-md-center">
            <div class="col-md-8">
                <div class="services-content">
                    <h1 class="wow fadeInUp" data-wow-delay="0s">Peta Sebaran Potensi Stunting Setiap Kecamatan
                    </h1>
                </div>
            </div>
            <div class="col-md-12 text-center">
                <div class="services">
                    <div class="row">
                        <div class="col-sm-12 wow fadeInUp" data-wow-delay="0.2s">
                            <div class="services-description">
                                <div data-aos="fade-up" id="map"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{{-- <div class="flex-features" id="visi_misi">
    <div class="container">
        <div class="flex-split">
            <div class="f-left wow fadeInUp" data-wow-delay="0s">
                <div class="left-content">
                    <img class="img-fluid" src="{{asset('assets\extra-pages\landingpage\assets\images\puskesmas.png')}}" alt="">
                </div>
            </div>
            <div class="f-right wow fadeInUp" data-wow-delay="0.2s">
                <div class="right-content">
                    <h2>Visi</h2>
                    <p>
                        Terwujudnya Masyarakat Kalisat Sehat
                    </p>
                    <h2>Misi</h2>
                    <ul>
                        <li><i class="ion-android-checkbox-outline"></i>Menggerakkan pembagunan berwawasan kesehatan di wilayah kerja Puskesmas Kalisat</li>
                        <li><i class="ion-android-checkbox-outline"></i>Mendorong kemandirian hidup sehat bagi perorangan, keluarga dan masyarakat di wilayah kerja Puskesmas Kalisat</li>
                        <li><i class="ion-android-checkbox-outline"></i>Memelihara dan meningkatkan mutu,pemerataan dan keterjangkauan pelayanan kesehatan yang diselenggarakan</li>
                        <li><i class="ion-android-checkbox-outline"></i>Memelihara dan meningkatkan kesehatan perorangan, keluarga, masyarakat beserta lingkungannya</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<div class="pricing-section no-color" id="article">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 ">
                <div class="pricing-intro text-center">
                    <h1 class="wow fadeInUp" data-wow-delay="0s">Artikel</h1>
                </div>
                @if ($article->count())
                <div class="row">
                    @foreach ($article as $item)
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
                            <div class="icon">
                                <img src="/storage/{{ $item->img }}" alt="Icon">
                            </div>
                            <div class="pricing-details">
                                <h2>{{ str_replace('_', ' ', $item->title) }}</h2>
                                <p>
                                    <?php 
                                    $content = strip_tags($item->content);
                                    $i = 90;
                                    $count = strlen($content);
                                    if ($count > $i) {
                                        $char = $content[$i - 1];
                                        while ($char != ' ') {
                                            $char = $content[--$i];
                                        }
                                        echo substr($content, 0, $i) . ' ...';
                                    } else {
                                        echo $content;
                                    }
                                ?>
                                </p>
                                <br>
                                <a href="/article/{{ $item->title }}" class="btn btn-primary btn-action btn-fill btn-article">Read more</a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="text-center gotopage">
                    <a href="/article" class="btn btn-primary btn-action btn-fill btn-article">Halaman artikel</a>
                </div>
                @else
                <div class="text-center">
                    <h3 class="wow fadeInUp" data-wow-delay="0s">Belum ada artikel terbaru</h3>
                </div>
                @endif
            </div>
        </div>
    </div>
</div>
<div class="about-section no-color" id="video">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 ">
                <div class="pricing-intro text-center">
                    <h1 class="wow fadeInUp" data-wow-delay="0s">Konten Video</h1>
                </div>
                @if ($video->count())
                <div class="row">
                    @foreach($video as $vdo)
                    <div class="col-md-4 col-sm-6 col-xs-12 video-column">
                        <div class="video-inner">
                            <figure class="image-box">
                                <img src="storage/{{ $vdo->thumbnail }}" alt="">
                            </figure>
                            <div class="video-btn">
                                <a href="{{ $vdo->video_link != null ? $vdo->video_link : 'storage/'.$vdo->video_file }}" class="lightbox-image" data-caption=""></a>
                            </div>
                        </div>
                        <div class="title">
                            <h4><a href="{{ $vdo->video_link != null ? $vdo->video_link : 'storage/'.$vdo->video_file }}" class="lightbox-image" data-caption="">{{ str_replace('_', ' ', $vdo->title) }}</a></h4>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="text-center gotopage">
                    <a href="/video" class="btn btn-primary btn-action btn-fill btn-article">Halaman Konten Video</a>
                </div>
                @else
                <div class="text-center">
                    <h3 class="wow fadeInUp" data-wow-delay="0s">Belum ada video terbaru</h3>
                </div>
                @endif
            </div>
        </div>
    </div>
</div>
      
<div class="flex-features" id="kontak">
    <div class="container">
        <div class="flex-split">
            <div class="f-right">
                <div class="right-content wow fadeInUp" data-wow-delay="0.2s">
                    <h2>Info Lebih Lanjut</h2>
                    <p>
                        Silahkan Click Hubungi Nomor Whatsapp
                    </p>
                    <a href="https://api.whatsapp.com/send?phone=6285752131817" target="_blank" class="btn btn-primary btn-action btn-fill">Hubungi Whatsapp</a>
                </div>
            </div>
            <div class="f-left">
                <div class="left-content wow fadeInUp" data-wow-delay="0.3s">
                    <img class="img-fluid" src="{{asset('assets\extra-pages\landingpage\assets\images\puskesmas.png')}}" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="testimonial-section" id="reviews">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">
                <div class="testimonials owl-carousel owl-theme">
                    <div class="testimonial-single"><img class="img-circle"
                            src="{{asset('assets\extra-pages\landingpage\assets\images\wiryawan.png')}}"
                            alt="Client Testimonoal">
                        <div class="testimonial-text wow fadeInUp" data-wow-delay="0.2s">
                            <p>DOSEN</p>
                            <h3>I Gede Wiryawan, S.Kom., M.Kom.</h3>
                            <h3>NIDN. 0017018808</h3>
                        </div>
                    </div>                       
                    <div class="testimonial-single"><img class="img-circle"
                            src="{{asset('assets\extra-pages\landingpage\assets\images\DhyaniAyu.JPG')}}"
                            alt="Client Testimonoal">
                        <div class="testimonial-text">
                            <p>DOSEN</p>
                            <h3>Dhyani Ayu P, S.KM., M.P.H.</h3>
                            <h3>NIDN. 0509118502</h3>
                        </div>
                    </div>
                    <div class="testimonial-single"><img class="img-circle"
                            src="{{asset('assets\extra-pages\landingpage\assets\images\huda.png')}}"
                            alt="Client Testimonoal">
                        <div class="testimonial-text">
                            <p>DOSEN</p>
                            <h3>Huda Ahmad Hudori, S.ST., M.ST.</h3>
                            <h3>NIDN. 0015059008</h3>
                        </div>
                    </div>
                    <div class="testimonial-single"><img class="img-circle"
                            src="{{asset('assets\extra-pages\landingpage\assets\images\ainun.jpg')}}"
                            alt="Client Testimonoal">
                        <div class="testimonial-text">
                            <p>DEVELOPER</p>
                            <h3>Mohammad Ainun Ardiansyah, S.Tr.Kom.</h3>
                            <h3>NIDN. -</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Main Section -->
<script type="text/javascript" src="{{asset('assets/kecamatan.js')}}"></script>
<script>
    $(document).ready(function () {

        AOS.init();

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

        var stunting = L.layerGroup();

        var data_kecamatan = @json($kcm);
        $.each(data_kecamatan,function(index, value){
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
        var googleTerrain = L.tileLayer('http://{s}.google.com/vt/lyrs=p&x={x}&y={y}&z={z}', {
            maxZoom: 20,
            subdomains: ['mt0', 'mt1', 'mt2', 'mt3']
        });

        var map = L.map('map', {
            center: [-8.1691275, 113.699675],
            zoom: 11,
            layers: [googleHybrid, stunting]
        });

        var baseLayers = {
            "Streets": streets,
            "Google Streets": googlestreets,
            "Google Satelite": googleSat,
            "Google Hybrid": googleHybrid,
            "Google Terrain": googleTerrain
        };

        var overlays = {
            "Stunting": stunting
        };



        var popup = L.popup();
        L.control.scale().addTo(map);

        var info = L.control();

        info.onAdd = function (map) {
            this._div = L.DomUtil.create('div', 'info');
            this.update();
            return this._div;
        };

        info.update = function (props) {
            this._div.innerHTML = '' + (props ?
                '<b>' + props.name + '</b><br />' :
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

        function resetHighlight(e) {
            geojson.resetStyle(e.target);
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

        map.attributionControl.addAttribution('Data Stunting </a>');


        var legend = L.control({
            position: 'bottomright'
        });

        var arcgisOnlineProvider = L.esri.Geocoding.arcgisOnlineProvider({
            apikey: "https://developers.arcgis.com" // replace with your api key - https://developers.arcgis.com
        });

        var gisDayProvider = L.esri.Geocoding.featureLayerProvider({
            url: 'https://services.arcgis.com/BG6nSlhZSAWtExvp/ArcGIS/rest/services/GIS_Day_Registration_Form_2019_Hosted_View_Layer/FeatureServer/0',
            searchFields: ['event_name', 'host_organization'],
            label: 'GIS Day Events 2019',
            bufferRadius: 5000,
            formatSuggestion: function (feature) {
                return feature.properties.event_name + ' - ' + feature.properties.host_organization;
            }
        });

        L.esri.Geocoding.geosearch({
            providers: [arcgisOnlineProvider, gisDayProvider]
        }).addTo(map);

        L.control.layers(baseLayers, overlays).addTo(map);       
        
    }); 
</script>
@endsection