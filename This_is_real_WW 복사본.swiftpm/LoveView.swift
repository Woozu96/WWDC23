import SwiftUI

struct LoveView: View {
    @State private var showFifthView = false
    
    var body: some View {
        ZStack{
            GifView(gifName: "Love")
                .edgesIgnoringSafeArea(.all)
                .onAppear{
                    LoveMusicPlayer.shared.playSound()
                }
            Button(action: {
                showFifthView = true
            }) {
                Image("buttton_final")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.top,600)
                    .padding(.leading, 800)
            }
        }
        .fullScreenCover(isPresented: $showFifthView) {
            FifthView()
        }
    }
}


struct LoveView_Previews: PreviewProvider {
    static var previews: some View {
        LoveView()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}

