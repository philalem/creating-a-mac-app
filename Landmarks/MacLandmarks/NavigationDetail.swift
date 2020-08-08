//
//  NavigationDetail.swift
//  MacLandmarks
//
//  Created by Phillip LeMaster on 8/5/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct NavigationDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                HStack (alignment: .center, spacing: 24) {
                    CircleImage(image: landmark.image.resizable(), shadowRadius: 4)
                        .frame(width: 160, height: 160)
                    
                    VStack(alignment: .leading) {
                        Text(landmark.name).font(.title)
                        Text(landmark.park)
                        Text(landmark.state)
                    }
                    .font(.caption)
                }
            }
            .padding()
            .frame(maxWidth: 700)
        }
    }
}

struct NavigationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetail(landmark: landmarkData[0])
            .environmentObject(UserData())
    }
}
