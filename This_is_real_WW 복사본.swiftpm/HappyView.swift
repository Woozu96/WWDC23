import SwiftUI

struct HappyView: View {
    @State private var showSwiftUIView = false
    var body: some View {
        ZStack{
            GifView(gifName: "Happy")
                .edgesIgnoringSafeArea(.all)
                .onAppear{
                    HappyMusicPlayer.shared.playSound()
                }
            Button(action: {
                showSwiftUIView = true
            }) {
                Image("buttton_final")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.top,600)
                    .padding(.leading, 800)
            }
        }
        .fullScreenCover(isPresented: $showSwiftUIView) {
            SwiftUIView()
        }
    }
}

struct HappyView_Previews: PreviewProvider {
    static var previews: some View {
        HappyView()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
