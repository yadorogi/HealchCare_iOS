import SwiftUI

struct Schedule2Cell: View {
    var cancelbuttonClick: (() -> Void)?
    var reschedulebuttonClick: (() -> Void)?
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgDrMarcusHorizon)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                    Text(StringConstants.kLblChardiologist)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(4.0))
                }
                .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(41.0),
                       alignment: .leading)
                .padding(.bottom, getRelativeHeight(4.0))
                Spacer()
                Image("img_ellipse_27image_46x46")
                    .resizable()
                    .frame(width: getRelativeWidth(44.0), height: getRelativeWidth(46.0),
                           alignment: .leading)
                    .scaledToFit()
                    .clipShape(Circle())
                    .clipShape(Circle())
            }
            .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(46.0),
                   alignment: .leading)
            .padding(.trailing)
            HStack {
                HStack {
                    Image("img_calendar_onprimary")
                        .resizable()
                        .frame(width: getRelativeWidth(13.0), height: getRelativeWidth(15.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kLbl26062021)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(5.0))
                }
                .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                Image("img_clock")
                    .resizable()
                    .frame(width: getRelativeWidth(13.0), height: getRelativeWidth(15.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(15.0))
                Text(StringConstants.kLbl1030Am)
                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(5.0))
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(4.0), height: getRelativeWidth(6.0),
                           alignment: .leading)
                    .clipShape(Circle())
                    .padding(.leading, getRelativeWidth(12.0))
                Text(StringConstants.kLblConfirmed)
                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(59.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(5.0))
            }
            .frame(width: getRelativeWidth(258.0), height: getRelativeHeight(15.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(25.0))
            .padding(.trailing, getRelativeWidth(45.0))
            HStack {
                Button(action: {
                    cancelbuttonClick?()
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblCancel)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(16.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0))
                            .padding(.trailing, getRelativeWidth(7.0))
                    }
                })
                .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0))
                .padding(.trailing, getRelativeWidth(7.0))
                Spacer()
                Button(action: {
                    reschedulebuttonClick?()
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblReschedule)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(16.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0))
                            .padding(.leading, getRelativeWidth(7.0))
                    }
                })
                .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0))
                .padding(.leading, getRelativeWidth(7.0))
            }
            .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(50.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(14.0))
        }
        .frame(width: getRelativeWidth(333.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0, bottomRight: 8.0)
            .stroke(Color.clear.opacity(0.7),
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0, bottomRight: 8.0)
            .fill(Color.clear.opacity(0.7)))
        .hideNavigationBar()
    }
}

/* struct Schedule2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Schedule2Cell()
 }
 } */
