<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <title>Nuevas Noticias de tu Interes!!</title>
</head>
<body>
    <p>Hola! Se han reportado nuevas noticias de tu interes.</p>
    @foreach($feeds as $feed)
        <ul>
            <li>{{$feed->title}}</li>
            <li>{{$feed->description}}</li>
            <li>{{$feed->author}}</li>
            <li>{{$feed->link}}</li>
        </ul>
    @endforeach
    
</body>
</html>