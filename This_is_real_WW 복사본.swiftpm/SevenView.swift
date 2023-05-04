import SwiftUI

struct SevenView: View {
    @State private var showFinalView = false
    
    var body: some View {
        ZStack{
            Image("hug_bear")
                .resizable()
                .ignoresSafeArea()
                
            
            Button(action: {
                showFinalView = true
            }) {
                Image("buttton_final")
                    .resizable()
                    .frame(width:100,height: 100)
                    .padding(.top,550)
                    .padding(.leading, 730)
            }
        }
        .fullScreenCover(isPresented: $showFinalView) {
            FinalView()
        }
    }
}
        
        struct SevenView_Previews: PreviewProvider {
            static var previews: some View {
                SevenView()
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }

