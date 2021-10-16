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
      title:'Pinacoteca de São Paulo',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/cultura-e1633646731911.png'
    })


    var marker = new google.maps.Marker({
      position: {lat: -23.56147299103626, lng: -46.6559462764335},
      map:map,
      title:'Museu de Arte de São Paulo Assis Chateaubriand',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/cultura-e1633646731911.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.587607138871817, lng: -46.655641474581195},
      map:map,
      title:'Museu de Arte Moderna de São Paulo',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/cultura-e1633646731911.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.54419139980404, lng: -46.62736293225439},
      map:map,
      title:'Museu Catavento',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/cultura-e1633646731911.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.547495276083332, lng: -46.66514713225428},
      map:map,
      title:'Museu do Futebol',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/cultura-e1633646731911.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.53486972083761, lng: -46.63447947458281},
      map:map,
      title:'Museu da Língua Portuguesa',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/cultura-e1633646731911.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.570885509066017, lng: -46.645217932253686},
      map:map,
      title:'Casa das Rosas',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/cultura-e1633646731911.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.5449987299179, lng: -46.63860427453254},
      map:map,
      title:'Theatro Municipal de São Paulo',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/cultura-e1633646731911.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.56975302873649, lng: -46.645518031208596},
      map:map,
      title:'Sesc Avenida Paulista',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/cultura-e1633646731911.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.570897143761204, lng: -46.640129503517514},
      map:map,
      title:'Centro Cultural de São Paulo"',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/cultura-e1633646731911.png'
    })

    
  }