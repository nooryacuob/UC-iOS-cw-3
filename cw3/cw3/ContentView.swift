//
//  ContentView.swift
//  cw3
//
//  Created by Nour Alhashash on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
   @State  var mark : String = ""
    @State  var result : String = ""
        
    var body: some View {
        
        ZStack{
         Image("black-gb9df27337_1920")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
                Spacer ()
               
           Image("asian-ge5c6c1857_1280")
            .resizable()
            .scaledToFill()
            .frame(width: 350, height:90)
          .multilineTextAlignment(.center)
              
        Spacer()
                
                Text("حاسبة الدرجات")
                    .font(.largeTitle)
                    .bold()
                     .foregroundColor(.green)
                
                TextField("ادخل درجتك", text: $mark )
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .background(Color.white)
                
                Text("احسب درجتي")
                    .frame(width: 150, height:50)
                    .background(Color.green)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
               
                    .onTapGesture {
                   
                        
                        if Double (mark) ?? 0 >= 90{
                            result = "ممتاز"
                        }
                        
                       else if Double (mark) ?? 0 >= 80{
                            result = "ممتاز"
                        }
                        
                       else if Double (mark) ?? 0 >= 70{
                            result = "جيد"
                        }
                        
                      else  if Double (mark) ?? 0 >= 60{
                            result = "مقبول"
                        }
                        
                        else {
                            result = "راسب"                        }
                    
            }
                Text("لقد حصلت على درجة:")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                
         Text(result)
                    .font(.largeTitle)
                    .bold()
                     .foregroundColor(.white)
                
                Spacer()
      
            }
        //HStack{
            //    TextField("أدخل درجتك"), text: $mark)
                    
             //       .font(.largeTitle)
               //     .multilineTextAlignment(.center)
            }
            
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
