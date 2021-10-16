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
      position: {lat: -23.516063358605624, lng: -46.638933019032706},
      map:map,
      title:'Holiday Inn Anhembi',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-onde-se-hospedar-e1634166958801.png'
    })


    var marker = new google.maps.Marker({
      position: {lat: -23.557658598117545, lng: -46.66081305758021},
      map:map,
      title:'Meliá Paulista',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-onde-se-hospedar-e1634166958801.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.51993177228806, lng: -46.67704457476794},
      map:map,
      title:'Ibis Barra Funda',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-onde-se-hospedar-e1634166958801.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.55994475667527, lng: -46.67085401894255},
      map:map,
      title:'WZ Hotel Jardins',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-onde-se-hospedar-e1634166958801.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.559906922116802, lng: -46.6561396901074},
      map:map,
      title:'Blue Tree Premium Paulista',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-onde-se-hospedar-e1634166958801.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.556941059571855, lng: -46.67546857476685},
      map:map,
      title:'Mercure Pinheiros',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-onde-se-hospedar-e1634166958801.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.602609689828796, lng: -46.662009845930285},
      map:map,
      title:'Confort Ibirapuera',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-onde-se-hospedar-e1634166958801.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.610941447085953, lng: -46.696502398062115},
      map:map,
      title:'Hilton Morumbi',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-onde-se-hospedar-e1634166958801.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.558951282088376, lng: -46.66218061709652},
      map:map,
      title:'La Residence Paulista',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-onde-se-hospedar-e1634166958801.png'
    })

    var marker = new google.maps.Marker({
      position: {lat: -23.564216964348063, lng: -46.66952054593143},
      map:map,
      title:'Fasano São Paulo',
      icon:'https://regrasparatcc.com.br/wp-content/uploads/2021/10/icon-onde-se-hospedar-e1634166958801.png'
    })

    
  }