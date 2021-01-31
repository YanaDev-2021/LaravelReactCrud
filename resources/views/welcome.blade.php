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

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 40vh;
                margin: 0;
            }
            .full-height {
                height: 40vh;
            }
            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }
            .position-ref {
                position: relative;
            }
            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }
            .content {
                text-align: center;
            }
            .title {
                font-size: 84px;
            }
            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }
            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body class="antialiased">
        <div id="example">
        </div>
        <div class="flex-center position-ref full-height">
            <div class="content">
                <div class="links">
                    <div id="paypal-button"></div>
                </div>
            </div> 
        </div>
    <script src="https://www.paypalobjects.com/api/checkout.js"></script>
    <script>
      paypal.Button.render({
        env: 'sandbox', // Or 'production'
        client: {
            sandbox: 'ASVWu1w2n7BySyCJwRBSXYN0hlniE-zHRVZSn9bZ5or9irRAPGCB9DrRvvSrWkI3Ja8H-engfLULhbEo',
            production: 'demo_production_client_id'
        },
        locale: 'en_US',
        style: {
          size: 'medium',
          color: 'gold',
          shape: 'pill',
        },
        // Set up the payment:
        // 1. Add a payment callback
        payment: function(data, actions) {
          // 2. Make a request to your server
          return actions.payment.create({
              transactions: [{
                  amount: {
                      total: '0.01',
                      currency: 'USD'
                  }
              }]
            });
        },
        // Execute the payment:
        // 1. Add an onAuthorize callback
        onAuthorize: function(data, actions) {
          // 2. Make a request to your server
          return actions.payment.execute().then(function() {
             // 3. Show the buyer a confirmation message.
             window.alert('Thank you for your purchase!');
          });
        }   
      }, '#paypal-button');
    </script>
    <script src="/js/app.js"></script>
    </body>
</html>
