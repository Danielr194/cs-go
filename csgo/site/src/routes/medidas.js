var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idAquario", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/tempo-real/:idAquario", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
})

router.get("/estatis", function (req, res) {
    medidaController.estatisticaJogador(req, res);
})

router.get("/graficos2", function (req, res) {
    medidaController.graficosDois(req, res);
})

module.exports = router;