import SwiftUI

struct ContentView: View {
    @State private var showThirdView = false // BView 표시 여부를 저장하는 상태 변수

    var body: some View {
            ZStack {
                Image("intro")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    HStack {
                        Button(action: {
                            // 버튼 클릭 시 실행될 코드
                            showThirdView = true
                        }) {
                            Image("Group_2") // 버튼 이미지
                        }
                        .fullScreenCover(isPresented: $showThirdView) {
                            ThirdView()
                        }
                        Spacer()
                    }
                    .padding(.leading, 100)
                    .padding(.bottom, 50)
                }
                
            }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
