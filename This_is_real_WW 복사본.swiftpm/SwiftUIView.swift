import SwiftUI

struct SwiftUIView: View {
    @State private var showSevenView = false
    var body: some View {
        
        ZStack{
            Image("Group 11_")
                .resizable()
                .ignoresSafeArea()
            
            HStack {
                Button(action: {
                    showSevenView = false
                }) {
                    Image("Group 15_")
                        .resizable()
                        .frame(width: 244,height: 388)
                }
                   
                
                Button(action: {
                    showSevenView = true
                }) {
                    Image("Group 17_")
                        .resizable()
                        .frame(width: 244,height: 388)
                }
                
                
                Button(action: {
                    showSevenView = false
                }) {
                    Image("Group 16_")
                        .resizable()
                        .frame(width: 244,height: 388)
                }
                
            }
        }
        .fullScreenCover(isPresented: $showSevenView) {
            SevenView()
        }
    }
}
        struct SwiftUIView_Previews: PreviewProvider {
            static var previews: some View {
                SwiftUIView()
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
