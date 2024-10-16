var express = require('express');
var router = express.Router();

router.get('/productos', function (req, res, next) {
    res.render('productos', {
        layout: 'layout'
    });
});

module.exports = router;