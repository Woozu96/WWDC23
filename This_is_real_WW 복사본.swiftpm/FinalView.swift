import SwiftUI

struct FinalView: View {
    @State private var showContentView = false
    var body: some View {
        
        ZStack{
            Image("Final")
                .resizable()
                .ignoresSafeArea()
            
            Button(action: {
                showContentView = true
            }) {
                Image("click_here")
                    .padding(.top, 260)
                    .padding(.trailing, 210)
            }
        }
        .fullScreenCover(isPresented: $showContentView) {
            ContentView()
        }
    }
}
    
    struct FinalView_Previews: PreviewProvider {
        static var previews: some View {
            FinalView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }

