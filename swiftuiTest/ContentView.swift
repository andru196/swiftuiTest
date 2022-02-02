import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["Abhazja", "Afganistan", "Albaniya", "Algir", "Andorra", "Angola", "AntiguaBapbuda", "Argentina", "Armeniya", "Avstraliya", "Avstriya", "Azerbaidzan", "BagamckieOstrova", "Bahrejn", "Bangladesh", "Barbados", "Belgija", "Beliz", "Belorussija", "Benin", "Bolgarija", "Bolivija", "BosnijaGertsegovina", "Botsvana", "Brazilija", "BritishVirginIslands", "Bruney", "BurkinaFaso", "England", "Russia"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("Choose Flag")
                        .foregroundColor(.white)
                        .font(.headline)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    
                }
                
                ForEach(0..<3) { number in
                    Button(action: {
                        self.flagTapped(number)
                        showingScore = true
                    }) {
                        Image(self.countries[number])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        //.renderingMode(.original)
                            .frame(width: 250, height: 125)
                            .clipShape(Capsule())
                            .overlay(Capsule()
                                        .stroke(Color.black, lineWidth: 1))
                            .shadow(color: .black, radius: 2)
                    }
                }
                Text("Total Scor \(score)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Spacer()
            }
            .alert(isPresented: $showingScore) {
                Alert(title: Text(scoreTitle),
                      message: Text("Total Score \(score)"), dismissButton: .default(Text("Continue")) {
                    askQuestion()
                })
            }
            
        }
        
    }
    func askQuestion() {
        countries.shuffled()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            score += 1
            scoreTitle = "Correct answer"
        } else {
            scoreTitle = "Uncorrect! It is \(countries[number]) Correct is \(correctAnswer + 1)"
            score -= 1
        }
    }
}
