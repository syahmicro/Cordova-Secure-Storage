import Foundation
import OSCommonPluginLib

@objc(SecureStorageSwift) 
class SecureStorageSwift : CDVPlugin {

  @objc(echo:)
  func echo(command: CDVInvokedUrlCommand) {
    // var pluginResult = CDVPluginResult(
    //   status: CDVCommandStatus_ERROR
    // )

     self.callbackId = command.callbackId
        
        guard
            let msg = command.arguments[0] as? String ?? ""
        else {
            self.sendResult(result: "", error:FirebaseMessagingErrors.subscriptionError as NSError, callBackID: self.callbackId)
            return
    }

    Task {
    let alert = UIAlertView()
    alert.title = "Alert"
    alert.message = msg
    alert.addButtonWithTitle("Understood")
    alert.show()
    }
    

    // if msg.characters.count > 0 {
    //   /* UIAlertController is iOS 8 or newer only. */
    //   let toastController: UIAlertController =
    //     UIAlertController(
    //       title: "",
    //       message: msg,
    //       preferredStyle: .Alert
    //     )
  
    //   self.viewController?.presentViewController(
    //     toastController,
    //     animated: true,
    //     completion: nil
    //   )

    //   let duration = Double(NSEC_PER_SEC) * 3.0

    //   dispatch_after(
    //     dispatch_time(
    //       DISPATCH_TIME_NOW,
    //       Int64(duration)
    //     ),
    //     dispatch_get_main_queue(),
    //     {
    //       toastController.dismissViewControllerAnimated(
    //         true,
    //         completion: nil
    //       )
    //     }
    //   )

    //   pluginResult = CDVPluginResult(
    //     status: CDVCommandStatus_OK,
    //     messageAsString: msg
    //   )
    // }

    // self.commandDelegate!.sendPluginResult(
    //   pluginResult,
    //   callbackId: command.callbackId
    // )

  }
}