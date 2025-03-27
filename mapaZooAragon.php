<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="user-scalable=yes, width=900">
  <title>Mapa Zoo Aragón</title>
  <link href="./mapaZooAragon_files/css" rel="stylesheet" type="text/css">
  <link href="./mapaZooAragon_files/estilos.css" rel="stylesheet" type="text/css">
  <style>
    body {
      background-color: #e0f7fa;
      margin: 0;
      font-family: 'Poppins', sans-serif;
    }
    nav {
      background: linear-gradient(90deg, #00796b, #004d40);
      color: white;
      padding: 1rem 2rem;
      display: flex;
      align-items: center;
      justify-content: space-between;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }
    nav h1 {
      font-size: 1.8rem;
      font-weight: bold;
      display: flex;
      align-items: center;
      gap: 0.8rem;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }
    nav h1 img {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      object-fit: cover;
    }
    nav ul {
      list-style: none;
      display: flex;
      gap: 1.5rem;
      margin: 0;
      padding: 0;
    }
    nav ul li a {
      color: white;
      text-decoration: none;
      font-weight: bold;
      transition: all 0.3s ease;
    }
    nav ul li a:hover {
      color: #ffeb3b;
    }
    /* Contenedor del mapa */
    #map-container {
      margin: 15px auto;
      width: 900px;
      height: 800px;
      overflow: hidden;
      border: 2px solid #ccc;
      border-radius: 5px;
      background-color: #fff;
      position: relative;
    }
    footer {
      background: linear-gradient(90deg, #00796b, #004d40);
      color: white;
      padding: 1.5rem;
      text-align: center;
    }
    footer a {
      color: #ffeb3b;
      text-decoration: none;
    }
  </style>
</head>
<body>
  <nav>
    <h1>
      <img src="imagenes/evento1.jpg" alt="Zoo Logo">
      Zoológico San Juan de Aragón
    </h1>
    <ul>
      <li><a href="inicio.php">Inicio</a></li>
      <li><a href="mapaZooAragon.php">Mapa</a></li>
      <li><a href="animales.php">Animales</a></li>
      <li><a href="zonas.php">Zonas</a></li>
      <li><a href="actividades.php">Actividades</a></li>
      <li><a href="precios.php">Precios</a></li>
      <li><a href="nosotros.php">Sobre Nosotros</a></li>
      <li><a href="contacto.php">Contacto</a></li>
    </ul>
  </nav>

  <!-- Contenedor del mapa con iframe -->
  <div id="map-container">
    <iframe 
      src="http://data.sedema.cdmx.gob.mx/zoo_aragon/mapa/" 
      style="width: 100%; height: 100%; border: none;"
      title="Mapa Oficial del Zoológico de Aragón"
      allowfullscreen
    ></iframe>
  </div>

  <!-- Footer -->
  <footer>
    <p>&copy; 2025 Zoológico San Juan de Aragón | <a href="iniciosesion.php">Administrador</a> | <a href="perfil_usuario.html">Usuario</a></p>
  </footer>
</body>
</html>