import Foundation
import FSCalendar
import SwiftUI
import UIKit

/**
 CalendarModuleView is UIViewRepresentable class of [FSCalendar](https://github.com/WenchaoD/FSCalendar).
 This class provide you single or range date selection from calendar view.

 # Input Variable: #

 - `firstDate`: Optional value for first date in range selection.

 - `lastDate`: Optional value for last date in range selection.

 # Example #
 ```
 @State private var firstDate: Date? = nil
 @State private var secondDate: Date? = nil

 CalendarModuleView(firstDate: $firstDate, lastDate: $secondDate)
 ```
 */

struct CalendarModuleView: UIViewRepresentable {
    // UnComment this line for single Selection
    // @Binding var selectedDate: Date?
    // var allowsMultipleSelection: Bool = true
    // first date in the range
    @Binding var firstDate: Date?
    // last date in the range
    @Binding var lastDate: Date?

    func makeCoordinator() -> Coordinator {
        Coordinator(self, firstDate: $firstDate, lastDate: $lastDate)
    }

    func makeUIView(context: Context) -> FSCalendar {
        let calendar = FSCalendar()
        calendar.delegate = context.coordinator
        calendar.appearance.todayColor = UIColor.systemGreen
        calendar.appearance.selectionColor = UIColor.systemBlue
        calendar.allowsMultipleSelection = true
        return calendar
    }

    func updateUIView(_: FSCalendar, context _: Context) {}

    class Coordinator: NSObject, FSCalendarDelegate {
        // Format your Date Before use
        fileprivate lazy var dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy/MM/dd"
            return formatter
        }()

        var parent: CalendarModuleView

        private var datesRange: [Date]?

        // first date in the range
        @Binding var firstDate: Date?
        // last date in the range
        @Binding var lastDate: Date?

        init(_ calender: CalendarModuleView, firstDate: Binding<Date?>, lastDate: Binding<Date?>) {
            parent = calender
            _firstDate = firstDate
            _lastDate = lastDate
        }

        // UnComment below function for single Selection
        // func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        //    self.parent.selectedDate = date
        //    print("did select date \(self.dateFormatter.string(from: date))")
        // }

        func calendar(_ calendar: FSCalendar, didSelect date: Date, at _: FSCalendarMonthPosition) {
            // nothing selected:
            if firstDate == nil {
                firstDate = date
                datesRange = [firstDate!]

                print("datesRange contains: \(datesRange!)")

                return
            }

            // only first date is selected:
            if firstDate != nil, lastDate == nil {
                // handle the case of if the last date is less than the first date:
                if date <= firstDate! {
                    calendar.deselect(firstDate!)
                    firstDate = date
                    datesRange = [firstDate!]

                    print("datesRange contains: \(datesRange!)")

                    return
                }

                let range = datesRange(from: firstDate!, toDate: date)

                lastDate = range.last

                for date in range {
                    calendar.select(date)
                }

                datesRange = range

                print("datesRange contains: \(datesRange!)")

                return
            }

            // both are selected:
            if firstDate != nil, lastDate != nil {
                for date in calendar.selectedDates {
                    calendar.deselect(date)
                }

                lastDate = nil
                firstDate = nil

                datesRange = []

                print("datesRange contains: \(datesRange!)")
            }
        }

        func calendar(_ calendar: FSCalendar, didDeselect _: Date, at _: FSCalendarMonthPosition) {
            // both are selected:

            if firstDate != nil, lastDate != nil {
                for selectedDate in calendar.selectedDates {
                    calendar.deselect(selectedDate)
                }

                lastDate = nil
                firstDate = nil

                datesRange = []
                print("datesRange contains: \(datesRange!)")
            }
        }

        func datesRange(from: Date, toDate: Date) -> [Date] {
            // in case of the "from" date is more than "to" date,
            // it should returns an empty array:
            if from > toDate { return [Date]() }
            var tempDate = from
            var array = [tempDate]
            while tempDate < toDate {
                tempDate = Calendar.current.date(byAdding: .day, value: 1, to: tempDate)!
                array.append(tempDate)
            }
            return array
        }
    }
}
