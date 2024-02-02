import SwiftUI

struct BookanappointmentView: View {
    @StateObject var bookanappointmentViewModel = BookanappointmentViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            HStack {
                Image("img_arrow_left")
                    .resizable()
                    .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.leading, getRelativeWidth(21.0))
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                Text(StringConstants.kLblAppointment)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                Image("img_notification")
                    .resizable()
                    .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.horizontal, getRelativeWidth(14.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(44.0),
                   alignment: .leading)
            VStack(alignment: .leading, spacing: 0) {
                Group {
                    HStack {
                        Image("img_profile_pic")
                            .resizable()
                            .frame(width: getRelativeWidth(111.0), height: getRelativeWidth(111.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgDrMarcusHorizon)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(166.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Text(StringConstants.kLblChardiologist)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(77.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(7.0))
                            HStack {
                                Image("img_signal")
                                    .resizable()
                                    .frame(width: getRelativeWidth(13.0),
                                           height: getRelativeWidth(13.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLbl472)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(4.0))
                            }
                            .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(15.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(13.0))
                            HStack {
                                Image("img_linkedin")
                                    .resizable()
                                    .frame(width: getRelativeWidth(13.0),
                                           height: getRelativeWidth(13.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLbl800mAway)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(67.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(15.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(10.0))
                        }
                        .frame(width: getRelativeWidth(166.0), height: getRelativeHeight(99.0),
                               alignment: .center)
                        .padding(.leading, getRelativeWidth(18.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(125.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                            bottomRight: 11.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                               bottomRight: 11.0)
                            .fill(Color.clear.opacity(0.7)))
                    HStack {
                        Text(StringConstants.kLblDate)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(37.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblChange)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(19.0))
                    HStack {
                        Button(action: {}, label: {
                            Image("img_calendar_cyan_300")
                        })
                        .frame(width: getRelativeWidth(36.0), height: getRelativeWidth(36.0),
                               alignment: .center)
                        .clipShape(Circle())
                        Text(StringConstants.kMsgWednesdayJun23)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(249.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(15.0))
                    }
                    .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(36.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(6.0))
                    .padding(.trailing, getRelativeWidth(34.0))
                    Divider()
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(1.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(13.0))
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text(StringConstants.kLblReason)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(58.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblChange)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                        HStack {
                            Button(action: {}, label: {
                                Image("img_edit_icon")
                            })
                            .frame(width: getRelativeWidth(36.0), height: getRelativeWidth(36.0),
                                   alignment: .center)
                            .clipShape(Circle())
                            Text(StringConstants.kLblChestPain)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(73.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(15.0))
                        }
                        .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(36.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(62.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    Divider()
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(1.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(13.0))
                    Text(StringConstants.kLblPaymentDetail)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(18.0))
                    HStack {
                        Text(StringConstants.kLblConsultation)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl6000)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(12.0))
                }
                Group {
                    HStack {
                        Text(StringConstants.kLblAdminFee)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl0100)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(11.0))
                    HStack {
                        Text(StringConstants.kMsgAditionalDiscount)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(11.0))
                    HStack {
                        Text(StringConstants.kLblTotal)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl6100)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(47.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(11.0))
                    Divider()
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(1.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(12.0))
                    Text(StringConstants.kLblPaymentMethod)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(132.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(18.0))
                    HStack {
                        Text(StringConstants.kLblVisa)
                            .font(FontScheme.kInterBlackItalic(size: getRelativeHeight(16.0)))
                            .fontWeight(.black)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblChange)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(49.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                            bottomRight: 11.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                               bottomRight: 11.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.vertical, getRelativeHeight(10.0))
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(648.0),
                   alignment: .center)
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblTotal)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(33.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                    Text(StringConstants.kLbl61002)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                }
                .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(40.0),
                       alignment: .top)
                .padding(.vertical, getRelativeHeight(2.0))
                Spacer()
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblBooking)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(16.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(192.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0))
                    }
                })
                .frame(width: getRelativeWidth(192.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0))
            }
            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(50.0),
                   alignment: .center)
            .padding(.horizontal, getRelativeWidth(20.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
        .hideNavigationBar()
    }
}

struct BookanappointmentView_Previews: PreviewProvider {
    static var previews: some View {
        BookanappointmentView()
    }
}
