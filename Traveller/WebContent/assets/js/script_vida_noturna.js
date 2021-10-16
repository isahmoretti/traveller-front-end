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
      position: {lat: -23.52706529574007, lng: -46.661922465617714},
      map:map,
      title:'D.EDGE',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-vida-noturna-e1634245841656.png'
    })


    var marker = new google.maps.Marker({
      position: {lat: -23.58167309289223, lng: -46.6671076188601},
      map:map,
      title:'Skye Bar',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-vida-noturna-e1634245841656.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.566302825999546, lng: -46.65275129982057},
      map:map,
      title:'The View Bar',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-vida-noturna-e1634245841656.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.542096188810632, lng: -46.640646403519085},
      map:map,
      title:'Bar Brahma',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-vida-noturna-e1634245841656.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.554507721396398, lng: -46.64688240351864},
      map:map,
      title:'Café Piu Piu',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon_parque-3-e1633130289579.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.545696973318524, lng: -46.64494710351893},
      map:map,
      title:'Love Story',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-vida-noturna-e1634245841656.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.56413829083710, lng: -46.6694990881761},
      map:map,
      title:'Bar Barretto',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-vida-noturna-e1634245841656.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.55972964927731, lng: -46.69949807468288},
      map:map,
      title:'Empório Alto dos Pinheiros',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-vida-noturna-e1634245841656.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.52270638985135, lng: -46.688027932355155},
      map:map,
      title:'The Week',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-vida-noturna-e1634245841656.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.56384296367635, lng: -46.656068461189406},
      map:map,
      title:'Seen Bar',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-vida-noturna-e1634245841656.png'
    })

    
  }