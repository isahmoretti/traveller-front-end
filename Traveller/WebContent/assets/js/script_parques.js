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
      position: {lat: -23.544410296291293, lng: -46.65889466136799},
      map:map,
      title:'Parque Buenos Aires',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })


    var marker = new google.maps.Marker({
      position: {lat: -23.58715070828623, lng: -46.65764433217333},
      map:map,
      title:'Parque Ibirapuera',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.545071408818714, lng: -46.72547144790743},
      map:map,
      title:'Parque Villa Lobos',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.53046827723472, lng: -46.67004730333945},
      map:map,
      title:'Parque Água Branca',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.633036801179497, lng: -46.72221508984315},
      map:map,
      title:'Parque Burle Marx',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.583897401706622, lng: -46.609838032173606},
      map:map,
      title:'Parque da Independência',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.506975300176233, lng: -46.62044733217576},
      map:map,
      title:'Parque da Juventude',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.562103957652578, lng: -46.657374645667666},
      map:map,
      title:'Parque Trianon',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.494900182706544, lng: -46.519453232410655},
      map:map,
      title:'Parque Ecológico do Tietê',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.574430015973302, lng: -46.62856203240861},
      map:map,
      title:'Parque da Aclimação',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })

    
  }
  