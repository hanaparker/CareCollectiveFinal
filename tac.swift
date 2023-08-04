//
//  tac.swift
//  HP_accountPage
//
//  Created by Hana Parker on 8/3/23.
//

import SwiftUI

struct tac: View {
    var body: some View {
        ZStack{
            Color("lighGrey")
                .background(Color("lightGrey").edgesIgnoringSafeArea(.top))
            ScrollView(.vertical){
                Text("By accessing this app, you are agreeing to be bound by these app Terms and Conditions of Service, the Privacy Policy, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. We may modify these Terms and Conditions at any time without notice to you by posting revised Terms and Conditions of Service. Your use of the website constitutes your binding acceptance of these Terms and Conditions of Service, including any modifications that we make. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this website are protected by applicable copyright and trademark law. The Service includes a combination of content that we create and that other third party content suppliers create. You understand that the Service are provided as is, and that Copyandpasteemoji.com does not guarantee the accuracy, integrity or quality of any content available on the website. Copyandpasteemoji.com disclaims all responsibility and liability for the accuracy, availability, timeliness, security or reliability of the Service. We reserve the right to modify, suspend or discontinue the Service with or without notice at any time and without any liability to you.  You must be 10 years of age or older to use the Service")
                    .padding()
            }
            
        }
    }
}

struct tac_Previews: PreviewProvider {
    static var previews: some View {
        tac()
    }
}
