function initMap(){
    //map options
    var options ={
      zoom:15,
      center:{lat:-23.561722993395186, lng:-46.65575357363767}
   }
   //new map
    var map = new google.maps.Map(document.getElementById('map'), mapOptions);
  }
  
  // Initialize and add the map
  function initMap() {
    // The location of Uluru
    const uluru = { lat: -23.561722993395186, lng: -46.65575357363767};
  
    // The map, centered at Uluru
    const map = new google.maps.Map(document.getElementById("map"), {
      zoom: 10,
      center: uluru,
    });

    //marcadores

    var marker = new google.maps.Marker({
      position: {lat: -23.57815822334756, lng: -46.675258234393034},
      map:map,
      title:'Barbacoa Itaim',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-gastronomia-e1633645161946.png'
    })


    var marker = new google.maps.Marker({
      position: {lat: -23.558026322494943, lng: -46.63514160156624},
      map:map,
      title:'Restaurante Tiá Tiá',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-gastronomia-e1633645161946.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.544722850020683, lng: -46.644650174583006},
      map:map,
      title:'A Casa do Porco Bar',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-gastronomia-e1633645161946.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.56608396770154, lng: -46.667439274582286},
      map:map,
      title:'D.O.M.',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-gastronomia-e1633645161946.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.56152606574653, lng: -46.68196443410692},
      map:map,
      title:'Purana.Co',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-gastronomia-e1633645161946.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.56642543632229, lng: -46.68598434574627},
      map:map,
      title:'Rinconcito Peruano',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-gastronomia-e1633645161946.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.565422666513758, lng: -46.68323490341837},
      map:map,
      title:'Consulado da Bahia',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-gastronomia-e1633645161946.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.620924315918796, lng: -46.69973293225287},
      map:map,
      title:'General Prime Burger',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-gastronomia-e1633645161946.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.550197174391556, lng: -46.64514547828747},
      map:map,
      title:'Famiglia Mancini Trattoria',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-gastronomia-e1633645161946.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.574430015973302, lng: -46.62856203240861},
      map:map,
      title:'Parque da Aclimação',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-gastronomia-e1633645161946.png'
    })

    
  }
  