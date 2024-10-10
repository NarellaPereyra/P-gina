var express = require("express");
var router = express.Router();
var nodemailer = require("nodemailer");
var novedadesModel = require('../models/novedadesModel');

/* GET home page. */
router.get("/", async function (req, res, next) {

  var novedades = await novedadesModel.getNovedades();

  res.render('index', {
    novedades
  });
});

router.post("/", async (req, res, next) => {
  var nombre = req.body.nombre;
  var telefono = req.body.telefono;
  var email = req.body.email;
  var mensaje = req.body.mensaje;

  console.log(req.body)

  var obj = {
    to: "npereyra5205@gmail.com",
    subject: "WC CONSULTAS",
    html:
      nombre +
      " se contactó a traves del sitio de Wisteria Clothing, dejando su número de teléfono: " +
      telefono + " y correo: " + email + ". <br> Tiene la siguiente consulta:" + " " + mensaje
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transport.sendMail(obj);

  res.render('index', {
    message: '¡Tu consulta fue enviada con éxito!'
  });
});

module.exports = router;
