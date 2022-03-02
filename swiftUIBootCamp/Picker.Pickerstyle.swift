
import SwiftUI

struct Picker_Pickerstyle: View {
    
    @State var selection : String = "most recent"
    
    let filterOptions: [String] =  [
    "most recent", "most popular", "most liked"
    ]
    
    
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    
    var body: some View {
        
        
        
        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        } label: {
            Text("label")
        }
        .pickerStyle(SegmentedPickerStyle())
        
        
        
        
        
//        Picker(
//            selection: $selection) {
//
//                    ForEach(filterOptions, id: \.self) { option in
//                        HStack {
//                        Text(option)
//                        Image(systemName: "heart.fill")
//
//                    }
//                        .tag(option)
//
//                }
//
//
//        } label: {
//            HStack {
//                Text("filter: ")
//                Text(selection)
//            }
//            .font(.headline)
//            //.foregroundColor(.white)
//            .padding()
//            .padding(.horizontal)
//            .background(Color.blue)
//            .cornerRadius(10)
//            .shadow(color: Color.blue, radius: 10, x: 0, y: 10)
//
//        }
//
//        .pickerStyle(MenuPickerStyle())
        
        
//        VStack {
//
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//
//            Picker(
//                selection: $selection) {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//
//                    }
//            } label: {
//                Text("picker")
//        }
//            .pickerStyle(WheelPickerStyle())
        
//           // .background(Color.gray.opacity(0.3))
//
//
//        }

    }
}




struct Picker_Pickerstyle_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Pickerstyle()
    }
}
