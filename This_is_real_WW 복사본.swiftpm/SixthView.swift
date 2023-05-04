import SwiftUI


struct SixthView: View {
    @State private var showHappyView = false
    
    var body: some View {
        ZStack{
            Image("bg_image")
                .resizable()
                .ignoresSafeArea()
            Image("bear_3")
                .resizable()
                .frame(width: 390,height: 344)
                .padding(.leading, 50)
                .onAppear{
                    HappyMusicPlayer.shared.playSound()
                }
            
            
            Button(action: {
                showHappyView = true
            }) {
                Image("happy_button")
                    .padding(.top,500)
            }
            Button(action: {
                HappyMusicPlayer.shared.playSound()
            }) {
               Image("sd_button")
                    .resizable()
                    .frame(width: 76, height: 74)
                    .padding(.bottom, 430)
                    .padding(.leading, 370)
                
            }
            
            .fullScreenCover(isPresented: $showHappyView) {
                HappyView()
            }
        }
    }
    
    
    struct SixthView_Previews: PreviewProvider {
        static var previews: some View {
            SixthView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
