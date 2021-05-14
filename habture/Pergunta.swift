//
//  Pergunta.swift
//  habture
//
//  Created by Aline Osana Escobar on 14/05/21.
//

import SwiftUI

struct Pergunta {
    var textoQuestao: String
    var alternativas: [String]
    var alternativaCorreta: Int
}

let pergunta01 = Pergunta(textoQuestao: "Qual a cor da lixeira para descarte de resíduos orgânicos?", alternativas: ["Verde", "Amarela", "Marrom", "Preta"], alternativaCorreta: 2)

let pergunta02 = Pergunta(textoQuestao: "Quanto tempo leva para uma garrafa pet se decompor?", alternativas: ["Menos de 100 anos", "Entre 200 e 600 anos", "1000 anos", "Tempo indeterminado"], alternativaCorreta: 1)

let pergunta03 = Pergunta(textoQuestao: "O Brasil é campeão mundial na reciclagem de latas de alumínio.", alternativas: ["Verdadeiro", "Falso"], alternativaCorreta: 0)

let pergunta04 = Pergunta(textoQuestao: "Selecione um composto agressivo para o meio ambiente e seu respectivo substituto ecológico: ", alternativas: ["garrafa pet, copo descartável", "sacolas plásticas, sacola de papel", "papelão, isopor", "sacolas plásticas, ecobag"], alternativaCorreta: 3)

let perguntasQuestionario = [pergunta01, pergunta02, pergunta03, pergunta04]
