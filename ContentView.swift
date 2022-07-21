import SwiftUI

struct ContentView: View {
    
    let viewModelGame: EmojiMemoryGame
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(viewModelGame.cards){card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit )
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
                .font(.largeTitle)
                .foregroundColor(.blue)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}


struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 10)
            if card.isFaceUp{
                shape
                    .foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}






















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModelGame: game)
            .preferredColorScheme(.light)
            .previewDevice("iPhone 13 mini")
            .previewInterfaceOrientation(.portraitUpsideDown)
        ContentView(viewModelGame: game)
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13 mini")
    }
    
}

