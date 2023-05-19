<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login & Registration</title>
  <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="container">
  <div class="login-container">
    <h2>Accedi</h2>
    <form id="login-form">
      <div class="input-container">
        <label for="username">Nome utente</label>
        <input type="text" id="username" name="username" placeholder="Inserisci il tuo nome utente">
      </div>
      <div class="input-container">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Inserisci la tua password">
      </div>
      <div class="btn-container">
        <button type="submit">Accedi</button>
      </div>
    </form>
    <div class="link-container">
      <a href="#">Password dimenticata?</a>
      <a href="#">Crea un account</a>
    </div>
  </div>
  <div class="registration-container">
    <h2>Registrazione</h2>
    <form id="register-form">
      <div class="input-container">
        <label for="fullname">Nome e cognome</label>
        <input type="text" id="fullname" name="fullname" placeholder="Inserisci il tuo nome">
      </div>
      <div class="input-container">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Inserisci la tua email">
      </div>
      <div class="input-container">
        <label for="new-username">Nome utente</label>
        <input type="text" id="new-username" name="new-username" placeholder="Scegli il tuo username">
      </div>
      <div class="input-container">
        <label for="new-password">Password</label>
        <input type="password" id="new-password" name="new-password" placeholder="Scegli la tua password">
      </div>
      <div class="btn-container">
        <button type="submit">Registra</button>
      </div>
    </form>
    <div class="link-container">
      <a href="#">Hai già un account?</a>
    </div>
  </div>
</div>

<script>
  // Gestisci l'invio del modulo di accesso
  document.getElementById("login-form").addEventListener("submit", function(event) {
    event.preventDefault(); // Evita l'invio del modulo

    // Ottieni i valori dei campi di input
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    // Esegui la logica di accesso con il controller tramite una richiesta al server
    // Esempio di codice:
    // var data = {
    //   username: username,
    //   password: password
    // };
    // fetch("/login", {
    //   method: "POST",
    //   body: JSON.stringify(data),
    //   headers: {
    //     "Content-Type": "application/json"
    //   }
    // })
    // .then(response => response.json())
    // .then(result => {
    //   // Gestisci la risposta del server
    //   console.log(result);
    // })
    // .catch(error => {
    //   // Gestisci gli errori
    //   console.error(error);
    // });
  });

  // Gestisci l'invio del modulo di registrazione
  document.getElementById("register-form").addEventListener("submit", function(event) {
    event.preventDefault(); // Evita l'invio del modulo

    // Ottieni i valori dei campi di input
    var fullname = document.getElementById("fullname").value;
    var email = document.getElementById("email").value;
    var newUsername = document.getElementById("new-username").value;
    var newPassword = document.getElementById("new-password").value;

    // Esegui la logica di registrazione con il controller tramite una richiesta al server
    // Esempio di codice:
    // var data = {
    //   fullname: fullname,
    //   email: email,
    //   username: newUsername,
    //   password: newPassword
    // };
    // fetch("/register", {
    //   method: "POST",
    //   body: JSON.stringify(data),
    //   headers: {
    //     "Content-Type": "application/json"
    //   }
    // })
    // .then(response => response.json())
    // .then(result => {
    //   // Gestisci la risposta del server
    //   console.log(result);
    // })
    // .catch(error => {
    //   // Gestisci gli errori
    //   console.error(error);
    // });
  });
</script>
</body>
</html>
