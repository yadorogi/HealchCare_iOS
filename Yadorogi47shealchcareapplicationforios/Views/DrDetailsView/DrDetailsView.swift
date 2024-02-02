import SwiftUI

struct DrDetailsView: View {
    @StateObject var drDetailsViewModel = DrDetailsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                    Text(StringConstants.kLblDoctorDetails)
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
                VStack {
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
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                            bottomRight: 11.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                               bottomRight: 11.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.horizontal, getRelativeWidth(20.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblAbout)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kMsgLoremIpsumDolor)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(313.0), height: getRelativeHeight(54.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(7.0))
                    }
                    .frame(width: getRelativeWidth(355.0), height: getRelativeHeight(81.0),
                           alignment: .trailing)
                    .padding(.top, getRelativeHeight(28.0))
                    .padding(.leading, getRelativeWidth(20.0))
                    ScrollView(.horizontal, showsIndicators: false) {
                        CalendarModuleView(firstDate: $drDetailsViewModel.datesStartDate,
                                           lastDate: $drDetailsViewModel.datesEndDate)
                            .frame(width: getRelativeWidth(355.0), height: getRelativeHeight(64.0),
                                   alignment: .center)
                    }
                    .padding(.top, getRelativeHeight(37.0))
                    .padding(.leading, getRelativeWidth(20.0))
                    Divider()
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(38.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                    Text("timeslots")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(141.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(38.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(646.0),
                       alignment: .center)
                HStack {
                    Button(action: {
                        drDetailsViewModel.nextScreen = "ChatView"
                    }, label: {
                        Image("img_user_cyan_300")
                    })
                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                    Button(action: {
                        drDetailsViewModel.nextScreen = "BookanappointmentView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgBookAppointment)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(16.0))
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(266.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0))
                                .padding(.leading, getRelativeWidth(19.0))
                        }
                    })
                    .frame(width: getRelativeWidth(266.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                    .padding(.leading, getRelativeWidth(19.0))
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .padding(.horizontal, getRelativeWidth(20.0))
                Group {
                    NavigationLink(destination: ChatView(),
                                   tag: "ChatView",
                                   selection: $drDetailsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: BookanappointmentView(),
                                   tag: "BookanappointmentView",
                                   selection: $drDetailsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct DrDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DrDetailsView()
    }
}
