import SwiftUI


struct FourthView: View {
    @State private var showLoveView = false
    var body: some View {
        ZStack{
            Image("bg_image")
                .resizable()
                .ignoresSafeArea()
                .onAppear {
                    LoveMusicPlayer.shared.playSound()
                }
            Image("1_bear")
                .resizable()
                .frame(width: 304,height: 358)
            
            Button(action: {
                showLoveView = true
            }) {
                Image("Love_button")
                    .padding(.top,500)
            }
            Button(action: {
                LoveMusicPlayer.shared.playSound()
            }) {
               Image("sd_button")
                    .resizable()
                    .frame(width: 76, height: 74)
                    .padding(.bottom, 430)
                    .padding(.leading, 370)
                
            }
        }
        .fullScreenCover(isPresented: $showLoveView) {
            LoveView()
        }
            
            

        }
    }
    
    struct FourthView_Previews: PreviewProvider {
        static var previews: some View {
            FourthView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }

