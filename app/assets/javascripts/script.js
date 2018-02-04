$(function() {
    var address = document.getElementById("address_image").innerText;
    new google.maps.Geocoder().geocode({'address': address}, callbackRender);
        // Geocoder.geocode 関数に住所とコールバック関数を渡す
});

function callbackRender(results, status) {
    if(status == google.maps.GeocoderStatus.OK) {
        var options = {
            zoom: 18,
            center: results[0].geometry.location, // 指定の住所から計算した緯度経度を指定する
            mapTypeId: google.maps.MapTypeId.ROADMAP // 「地図」で GoogleMap を出力する
        };
        var gmap = new google.maps.Map(document.getElementById('map-canvas'), options);
            // #map-canvas に GoogleMap を出力する
        new google.maps.Marker({map: gmap, position: results[0].geometry.location});
            // 指定の住所から計算した緯度経度の位置に Marker を立てる

    }
}

