var database = require("../database/config");

function buscarUltimasMedidas(idAquario, limite_linhas) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `SELECT COUNT(usuario.fktime) as voto, time.nome AS times 
        FRom  usuario JOIN time ON  time.idtime = usuario.fktime group by usuario.fktime;`;
        
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `SELECT COUNT(usuario.fktime) as voto, time.nome AS times 
        FRom  usuario JOIN time ON  time.idtime = usuario.fktime group by usuario.fktime;`;
    
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(idAquario) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql =   `SELECT COUNT(questionario.fkmapa) as voto, mapa.Nomemapa as mapa  
        FRom  questionario JOIN mapa ON  mapa.idmapa = questionario.fkmapa group by questionario.fkmapa;`;

    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `SELECT COUNT(questionario.fkmapa) as voto, mapa.Nomemapa as mapa  
        FRom  questionario JOIN mapa ON  mapa.idmapa = questionario.fkmapa group by questionario.fkmapa;`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}
