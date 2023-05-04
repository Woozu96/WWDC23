import SwiftUI

struct FifthView: View {
    @State private var showHungryView = false
    var body: some View {
       ZStack{
           Image("bg_image")
                .resizable()
                .ignoresSafeArea()
            Image("bear_2")
                .resizable()
                .frame(width: 505,height: 395)
                .onAppear {
                    HungryMusicPlayer.shared.playSound()
                }

            Button(action: {
                showHungryView = true
            }) {
             Image("hungry_button")
                  .padding(.top,500)
            }
           Button(action: {
               HungryMusicPlayer.shared.playSound()
           }) {
              Image("sd_button")
                   .resizable()
                   .frame(width: 76, height: 74)
                   .padding(.bottom, 430)
                   .padding(.leading, 370)
               
           }
        }
        .fullScreenCover(isPresented: $showHungryView) {
            HungryView()
        }
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
