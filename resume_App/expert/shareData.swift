//
//  shareData.swift
//  resume_App
//
//  Created by Adsum MAC 2 on 28/06/21.
//

import SwiftUI

enum Coordinator {
    static func topViewController(_ viewController: UIViewController? = nil) -> UIViewController? {
        let vc = viewController ?? UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.rootViewController
        if let navigationController = vc as? UINavigationController {
            return topViewController(navigationController.topViewController)
        } else if let tabBarController = vc as? UITabBarController {
            return tabBarController.presentedViewController != nil ? topViewController(tabBarController.presentedViewController) : topViewController(tabBarController.selectedViewController)
            
        } else if let presentedViewController = vc?.presentedViewController {
            return topViewController(presentedViewController)
        }
        return vc
    }
}


struct shareData: View {
    //    @Environment(\.exportFiles) var exportAction
    @State private var showingPreview = false
    
    @State var urlstore = URL(fileURLWithPath: "")
    
    // force unwrap the optional, because the test file has to be in the bundle
  
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action: {
                   // exportToPDF()
                    self.showingPreview = true
                }, label: {
                    Text("SHARE")
                })
                .sheet(isPresented: $showingPreview) {
                            PreviewController(url: urlstore)
                        }
            }.frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center).padding()
            
            ScrollView(.vertical, showsIndicators: false){
            VStack{
                second()
                }
            .border(Color.black, width: 2)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2, alignment: .center)
            
           }
            Spacer()
        }

    }
    
    
    func exportToPDF() {
        let outputFileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent("Resume1.pdf")
        let pageSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
        //View to render on PDF
        let myUIHostingController = UIHostingController(rootView: first())
        myUIHostingController.view.frame = CGRect(origin: .zero, size: pageSize)
        
        
        //Render the view behind all other views
        guard let rootVC = UIApplication.shared.windows.first?.rootViewController else {
            print("ERROR: Could not find root ViewController.")
            return
        }
        rootVC.addChild(myUIHostingController)
        //at: 0 -> draws behind all other views
        //at: UIApplication.shared.windows.count -> draw in front
        rootVC.view.insertSubview(myUIHostingController.view, at: 0)
        
        //Render the PDF
        let pdfRenderer = UIGraphicsPDFRenderer(bounds: CGRect(origin: .zero, size: pageSize))
        DispatchQueue.main.async {
            do {
                try pdfRenderer.writePDF(to: outputFileURL, withActions: { (context) in
                    context.beginPage()
                    myUIHostingController.view.layer.render(in: context.cgContext)
                })
                urlstore = outputFileURL
                self.shareApp()
                print("wrote file to: \(outputFileURL.path)")
            } catch {
                print("Could not create PDF file: \(error.localizedDescription)")
            }
            
            //Remove rendered view
            myUIHostingController.removeFromParent()
            myUIHostingController.view.removeFromSuperview()
        }
    }
    
    func shareApp() {
        let documento =  NSData(contentsOf: URL(string: urlstore.absoluteString)!)
        let activityViewController = UIActivityViewController(activityItems: [documento!], applicationActivities: nil)
        
        let viewController = Coordinator.topViewController()
        activityViewController.popoverPresentationController?.sourceView = viewController?.view
        viewController?.present(activityViewController, animated: true, completion: nil)
    }

}

struct shareData_Previews: PreviewProvider {
    static var previews: some View {
        shareData()
    }
}
