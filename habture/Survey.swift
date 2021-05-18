//
//  Survey.swift
//  habture
//
//  Created by Aline Osana Escobar on 13/05/21.
//

import SwiftUI

struct Survey: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var progess: Int = 45
    @State var escolhidaQuestao: String = ""
    @State var qtdAcertos: Int = 0
    @State var openModal: Bool = false
    @State var encerraQuesitonario: Bool = false
    
    var body: some View {
        VStack{
            Text("Questionário")
                .font(.system(size: 22, design: .rounded))
                .foregroundColor(Color("Purple2"))
                .padding(.top, 30)
            VStack{
                HStack{
                    Button(action: {
                        encerraQuesitonario.toggle()
                    }) {
                        Image(systemName: "xmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color("Purple2"))
                    }.fullScreenCover(isPresented: $encerraQuesitonario){
                        ContentView(viewRouter: ViewRouter())
                    }
                    ZStack(alignment:.leading){
                        Rectangle()
                            .foregroundColor(Color("Gray"))
                            .frame(width: 180, height: 9)
                            .cornerRadius(10)
                        
                        Rectangle()
                            .foregroundColor(Color("Purple2"))
                            .frame(width: CGFloat(progess), height: 9)
                            .cornerRadius(10)
                    }
                    .frame(width: 272)
                }
            }
            
            switch progess {
            case 45:
                Question(questao: perguntasQuestionario[0])
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            case 90:
                Question(questao: perguntasQuestionario[1])
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            case 135:
                Question(questao: perguntasQuestionario[2])
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            case 180:
                Question(questao: perguntasQuestionario[3])
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            default:
                Question(questao: perguntasQuestionario[0])
                    .padding(.top, 54)
                    .frame(maxWidth: 300)
            }
            
            Button(""){
                escolhidaQuestao = Question.escolhida
                if (escolhidaQuestao != ""){
                    if (progess == 45){
                        if (escolhidaQuestao == perguntasQuestionario[0].alternativas[perguntasQuestionario[0].alternativaCorreta]) {
                            qtdAcertos += 1
                        }
                    } else if (progess == 90) {
                        if (escolhidaQuestao == perguntasQuestionario[1].alternativas[perguntasQuestionario[1].alternativaCorreta]) {
                            qtdAcertos += 1
                        }
                    } else if (progess == 135) {
                        if (escolhidaQuestao == perguntasQuestionario[2].alternativas[perguntasQuestionario[2].alternativaCorreta]) {
                            qtdAcertos += 1
                        }
                    } else if (progess == 180) {
                        if (escolhidaQuestao == perguntasQuestionario[3].alternativas[perguntasQuestionario[3].alternativaCorreta]) {
                            qtdAcertos += 1
                        }
                    }
                    if self.progess < 180 {
                        self.progess += 45
                    } else if (progess == 180){
                        openModal.toggle()
                    }
                }
            }.buttonStyle(CommonUseButton(text: progess == 180 ? "Finalizar" : "Continuar", bgColor: Color("Purple2"), shadowColor: Color("Purple3")))
            .frame(maxWidth: 300)
            .padding(.top, 64)
            .fullScreenCover(isPresented: $openModal){
                PersonalizedModal(
                    bgColor: Color("Yellow"),
                    shadowColor: Color("Orange1"),
                    circleColor: Color("Purple2"),
                    circleStrokeColor: Color("Yellow"),
                    buttonBgColor: Color("Purple2"),
                    buttonShadowColor: Color("Purple3"),
                    nomeImagem: "premio",
                    titulo: "Bom trabalho!",
                    textos: ["Os vidros não são biodegradáveis e permanecem na natureza por cerca de dez mil anos.", "Para cada tonelada de vidro reciclado, gasta-se menos 70% do que se gastaria para fabricar mais vidro;"],
                    alturaMax: 500,
                    temFonte: true,
                    temCirculo: true,
                    fonte: "https://www.psdovidro.com.br/descubra-tudo-sobre-a-reciclagem-de-vidro/",
                    circleWithX: ContentView(viewRouter: ViewRouter()),
                    buttonText: "Finalizar",
                    buttonDestination: ContentView(viewRouter: ViewRouter())
                )
            }
            Spacer()
        }
    }
}

struct Survey_Previews: PreviewProvider {
    static var previews: some View {
        Survey()
    }
}
