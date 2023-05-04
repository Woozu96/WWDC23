import SwiftUI

struct ThirdView: View {
    @State private var text = "Hi, My name is Daisy."
    @State private var index = 0
    @State private var isFinished = false
    
    var body: some View {
        
        
        ZStack{
            Image("bear_im")
                .resizable()
                .ignoresSafeArea()
            Image("Daisy")
                .padding(.leading, -450)
                .padding(.top, 330)
            
            
            VStack {
                Spacer()
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(lineWidth: 3)
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(50)
                        .frame(height: 200)
                        .padding(.leading, 100)
                        .padding(.trailing, 100)
                        .overlay(Text(text).font(.system(size: 37, weight: .bold)))
                    
                    Button(action: {
                        // 버튼 클릭 시 실행될 코드
                        index += 1
                        if index == 1 {
                            text = "I have to go to my grandma's house now"
                        } else if index == 2 {
                            text = "but I've lost my way :("
                        } else if index == 3 {
                            text = "If you succeed in the game, you can help me!"
                        } else if index == 4 {
                            isFinished = true
                        }
                        
                    }) {
                        HStack {
                            HStack {
                                Spacer()
                                Image("Next_button")
                                    .resizable()
                                    .frame(width: 52,height: 60)
                                    .padding(.trailing, 150)
                                //버튼 이미지
                            }
                        }
                    }
                    .fullScreenCover(isPresented: $isFinished) {
                        SecondView()
                    }
                }
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
