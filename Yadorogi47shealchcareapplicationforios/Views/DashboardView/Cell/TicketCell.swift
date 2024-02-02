import SwiftUI

struct TicketCell: View {
    var body: some View {
        Button(action: {}, label: {
            Image("img_ticket")
        })
        .frame(width: getRelativeWidth(69.0), alignment: .center)
        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                   bottomRight: 15.0))
    }
}

/* struct TicketCell_Previews: PreviewProvider {

 static var previews: some View {
 			TicketCell()
 }
 } */
