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
      position: {lat: -23.533853469431826, lng: -46.6341646767185},
      map:map,
      title:'Movida Aluguel de Carros',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-car-e1633556977395.png'
    })


    var marker = new google.maps.Marker({
      position: {lat: -23.543415290632474, lng: -46.645738261033735},
      map:map,
      title:'Localiza Aluguel de Carros',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-car-e1633556977395.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.62676733579912, lng: -46.660033632434974},
      map:map,
      title:'Avis Aluguel de Carros',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-car-e1633556977395.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.618476840750265, lng: -46.66260942755892},
      map:map,
      title:'Alamo Rent a Car',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-car-e1633556977395.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.620026059777338, lng: -46.628105722731966},
      map:map,
      title:'Hertz',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-car-e1633556977395.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.586451369309533, lng: -46.673460045930824},
      map:map,
      title:'Localiza',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-car-e1633556977395.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.584168332872263, lng: -46.67499127292005},
      map:map,
      title:'Movida Aluguel de Carros',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-car-e1633556977395.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.54737864669776, lng: -23.54737864669776},
      map:map,
      title:'Localiza Aluguel de Carros',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-car-e1633556977395.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.569320707302634, lng: -46.648523332436845},
      map:map,
      title:'Unidas Aluguel de Carros',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-car-e1633556977395.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.584168332872263, lng: -46.67499127292005},
      map:map,
      title:'Movida Aluguel de Carros',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-car-e1633556977395.png'
    })


    
  }