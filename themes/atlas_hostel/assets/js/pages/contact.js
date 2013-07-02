var Contact = function () {
    return {        
        //Map
        initMap: function () {
            var map;            
            $(document).ready(function(){
                map = new GMaps({ 
                    div: '#map',
                    lat: 51.515067,
                    lng: -0.174708
                });
                var marker = map.addMarker({
                    lat: 51.515067,
                    lng: -0.174708,
                    title: 'Atlas Hostels'
                });
            });
        }
    };
}();