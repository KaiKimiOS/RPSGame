//
//  ContentView.swift
//  RPSGame
//
//  Created by kaikim on 2023/06/26.
//

import SwiftUI

struct ContentView: View {
    @State var myChoice: String = "?"
    @State var trueFalse:Bool = true
    @State var resultString = ""
    @State var computerString = "?"
    @State var computerChoice: Int = 0
    
    var body: some View {
        VStack {
            Spacer()
            Text("가위바위보 게임")
                .font(.system(size: 50, weight: .bold, design: .monospaced))
                .foregroundColor(.yellow)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
            Spacer()
            Text("나:\(myChoice)")
                .font(.system(size: 30, weight: .bold, design: .monospaced))
                .padding(.bottom, 0.1)
                .foregroundColor(.blue)
            Text("컴퓨터:\(computerString)")
                .font(.system(size: 30, weight: .bold, design: .monospaced))
                .padding(.bottom, 0.1)
                .foregroundColor(.blue)
            if trueFalse != true {
                VStack{
                    Text("\(resultString)")
                        .font(.system(size:30))
                }
            } else {
                VStack{
                    HStack{
                        
                        Button {
                            computerChoice = Int.random(in: 1...3)
                            myChoice = "✌️"
                            computerString = "선택완료"
                    
                        } label: {
                            Text( "✌️")
                                .font(.system(size: 100))
                                .fixedSize()
                                .tag("✌️")
                        }
                        
                        Button {
                            computerChoice = Int.random(in: 1...3)
                            myChoice = "✊"
                            computerString = "선택완료"
       
                            
                        } label: {
                            Text( "✊")
                                .font(.system(size: 100))
                                .fixedSize()
                                .tag("✊")
                        }
                        
                        Button {
                            computerChoice = Int.random(in: 1...3)
                            myChoice = "🖐️"
                            computerString = "선택완료"
                        } label: {
                            Text( "🖐️")
                                .font(.system(size: 100))
                                .fixedSize()
                                .tag("🖐️")
                        }
                    }
                    Text("랜덤으로 선택하세요")
                        .font(.headline)
                        .italic()
                        .underline()
                        .padding(.top, 0.1)
                    
                }
                
            }
            Spacer()
            HStack{
                Button {
                    rpsAction(index: myChoice)
                    print("dd1")
                    
                } label: {
                    Text( "Choice")
                        .font(.system(size:30))
                        .underline()
                    
                }
                .padding(.trailing, 50)
                
                Button {
                    computerString = "?"
                    rpsReset()
                } label: {
                    Text( "Reset")
                        .font(.system(size:30))
                        .underline()
                }
                .padding(.trailing, 0.0)
            }
            Spacer()
        }
        
    }
    
    
    
    func rpsAction(index:String){
        
        if index == "✌️" {
            trueFalse = false
            if computerChoice == 1 {
                resultString = "비겼습니다"
                computerString = "✌️"
            }
            if computerChoice == 2 {
                resultString = "졌습니다"
                computerString = "✊"
            }
            if computerChoice == 3 {
                resultString = "이겼습니다"
                computerString = "🖐️"
            }
            
            
        }
        if index == "✊" {
            trueFalse = false
            if computerChoice == 2 {
                resultString = "비겼습니다"
                computerString = "✊"
            }
            if computerChoice == 3 {
                resultString = "졌습니다"
                computerString = "🖐️"
            }
            if computerChoice == 1 {
                resultString = "이겼습니다"
                computerString = "✌️"
            }
            
        }
        if index == "🖐️" {
            trueFalse = false
            if computerChoice == 3 {
                resultString = "비겼습니다"
                computerString = "🖐️"
            }
            if computerChoice == 1 {
                resultString = "졌습니다"
                computerString = "✌️"
            }
            if computerChoice == 2 {
                resultString = "이겼습니다"
                computerString = "✊"
            }
            
            
        }
        
    }
    
    func rpsReset(){
        trueFalse = true
        myChoice = "?"
        computerChoice = 0
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
