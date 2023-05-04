import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showFourthView = false

    var body: some View {
        ZStack {
            Image("bg_image2")
                .resizable()
                .ignoresSafeArea()
               
            
            Image("bear_button")
                .resizable()
                .frame(width: 818, height: 616)
                .offset(x: 10, y: 70)
           
            
            
            VStack {
                
                HStack {
                    Button(action: {
                        // 버튼 클릭 시 실행될 코드
                        showFourthView = true
                    }) {
                        Image("click_here") // 버튼 이미지
                        
                    }
                    .fullScreenCover(isPresented: $showFourthView) {
                        FourthView()
                    }
                    .offset(x: -320, y:-60)
                }
            }
        }
    }
}




struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
