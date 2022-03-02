
import SwiftUI

struct Date_Picker: View {
    
    @State var selectDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormater: DateFormatter {
        let formater = DateFormatter()
        formater.dateStyle = .short
        formater.timeStyle = .short
        return formater
    }
    
    var body: some View {
        
        VStack {
            Text("selected date is: ")
            Text(dateFormater.string(from: selectDate))
                .font(.title)
            
            //DatePicker("select a date", selection: $selectDate)
            //DatePicker("select a date", selection: $selectDate, displayedComponents: [.date, .hourAndMinute]) // mozhno ostavlyat v masive to chto nyzhno
            DatePicker("Select a date", selection: $selectDate, in: startingDate...endingDate, displayedComponents: [.date, .hourAndMinute])
                .accentColor(.red)
                .datePickerStyle(
                CompactDatePickerStyle()
              //GraphicalDatePickerStyle()
              //WheelDatePickerStyle()
                
                )
        }

        
        
    }
    
}




struct Date_Picker_Previews: PreviewProvider {
    static var previews: some View {
        Date_Picker()
    }
}
