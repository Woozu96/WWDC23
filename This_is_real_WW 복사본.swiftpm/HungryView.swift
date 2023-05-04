import SwiftUI

struct HungryView: View {
    @State private var showSixthView = false
    var body: some View {
        ZStack{
            GifView(gifName: "Hungry")
                .edgesIgnoringSafeArea(.all)
                .onAppear{
                    HungryMusicPlayer.shared.playSound()
                }
            Button(action: {
                showSixthView = true
            }) {
                Image("buttton_final")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.top,600)
                    .padding(.leading, 800)
            }
        }
        .fullScreenCover(isPresented: $showSixthView) {
            SixthView()
        }
    }
}
struct HungryView_Previews: PreviewProvider {
    static var previews: some View {
        HungryView()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
