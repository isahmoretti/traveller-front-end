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
      position: {lat: -23.530092609428035, lng: -46.67848437463304},
      map:map,
      title:'Casa de Pedra',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })


    var marker = new google.maps.Marker({
      position: {lat: -23.495984720575898, lng: -46.64667930346974},
      map:map,
      title:'Mega Roller Skate Park',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.650666103026552, lng: -46.62047096113661},
      map:map,
      title:'Zoológico de São Paulo',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.56753763822885, lng: -46.71879826113906},
      map:map,
      title:'Instituto Butantan',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.632689313161688, lng: -46.626994445844865},
      map:map,
      title:'Jardim Botânico de São Paulo',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.55342975978736, lng: -46.70204666118975},
      map:map,
      title:'Praça Pôr do Sol',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.543275491015137, lng: -46.63851964584793},
      map:map,
      title:'Galeria do Rock',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.57672662005476, lng: -46.4593135979712},
      map:map,
      title:'Planetário Carmo',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.545346379547414, lng: -46.64354219002557},
      map:map,
      title:'Edifício Itália',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.558872154749114, lng: -46.660737003518456},
      map:map,
      title:'Livraria Cultura',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.560912258412795, lng: -46.70492406118955},
      map:map,
      title:'iFLY São Paulo',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.545474601839878, lng: -46.63400914584779},
      map:map,
      title:'Farol Santander',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-entretenimento-e1633729386400.png'
    })


    
  }