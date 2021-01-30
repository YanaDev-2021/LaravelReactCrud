<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>React TodoList</title>
        <script>
            console.log(localStorage.getItem("token"))
            if(localStorage.getItem("token") == "" || localStorage.getItem("token") == null) {
                window.open('http://127.0.0.1:8000/','_self')
            }
        </script>
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="/css/app.css">
    
    </head>
    <body class="antialiased">
        <div id="example">
        </div>
    </body>
    <script src="/js/app.js"></script>
</html>
