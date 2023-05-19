<html>
    <head>
    <link rel="stylesheet" type="text/css" href="css/cart.css">
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="JavaScript/script.js"></script>
    </head>

    <body>
        <div class="container">
            <div class="search-bar">
                <input type="text" placeholder="Cerca...">
                <iconify-icon class="iconify-icon" data-icon="material-symbols:search"></iconify-icon>
            </div>
            <div class="icon-bar">
                <iconify-icon class="iconify-icon" data-icon="mdi:user"></iconify-icon>
                <a href="preferiti.jsp"><iconify-icon class="iconify-icon" data-icon="ic:round-star"></iconify-icon></a>
                <a href="cart.html"><iconify-icon class="iconify-icon" data-icon="mingcute:shopping-bag-2-line"></iconify-icon></a>
            </div>              
            <div class="top">
                <div class="logo">
                    <a href="index.jsp"><img src="assets/logo3.png" alt="Logo"></a>
                </div>
                <div class="curve">
                </div>
            </div>
            


            <!-- Items -->
            <div class="bottom">
                <div class="carousel">
                  <div class="containers">
                    <h1>Il tuo carrello</h1>
                    <div class="cart-container">
                      <div class="item">
                        <img src="assets/item-02.jpg" alt="Product Image">
                        <div class="item-details">
                          <h3>Nome prodotto</h3>
                          <p>Descrizione breve del prodotto</p>
                          <p>Quantità: 1</p>
                          <p>Prezzo: €10.99</p>
                          <button class="remove-btn">Rimuovi</button>
                        </div>
                      </div>
                      <div class="item">
                        <img src="assets/item-03.jpg" alt="Product Image">
                        <div class="item-details">
                          <h3>Nome prodotto</h3>
                          <p>Descrizione breve del prodotto</p>
                          <p>Quantità: 2</p>
                          <p>Prezzo: €19.98</p>
                          <button class="remove-btn">Rimuovi</button>
                        </div>
                      </div>
                    </div>
                    <div class="total-container">
                      <h3>Totale: €30.97</h3>
                      <button class="checkout-btn">Procedi al Checkout</button>
                    </div>
                  </div>                      
            </div>
              
              
    </body>
</html>
