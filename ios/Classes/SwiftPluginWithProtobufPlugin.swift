import Flutter
import UIKit

func getChildren() -> Person
{
    return Person.with{
        $0.name = "Thach"
        $0.addressesList = [
            Address.with {
                $0.streetName = "Stonechurch"
                $0.city = "Hamilton"
                $0.province = Province.on
                $0.postalCode = 1000
            }
        ]
        $0.childrenList = [
            Person.with {
                $0.name = "Liam"
                $0.addressesList = [
                    Address.with {
                        $0.streetName = "Lakeridge"
                        $0.city = "Hamilton"
                        $0.province = Province.on
                        $0.postalCode = 1000
                    }
                ]
            },
            Person.with {
                $0.name = "Phong"
                $0.addressesList = [
                    Address.with {
                        $0.streetName = "Lakeview"
                        $0.city = "Hamilton"
                        $0.province = Province.on
                        $0.postalCode = 1000
                    }
                ]
            },
        ]
    };
}

public class SwiftPluginWithProtobufPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugin_with_protobuf", binaryMessenger: registrar.messenger())
    let instance = SwiftPluginWithProtobufPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    
    if (call.method == "getPlatformVersion")
    {
        result("iOS " + UIDevice.current.systemVersion)
    }
    else if (call.method == "getMyChildren")
    {
        do{
            result(try getChildren().serializedData());
        }
        catch
        {
            result(FlutterError(code: "Cannot serialize data", message: nil, details: nil))
        }
    }
  }
}
