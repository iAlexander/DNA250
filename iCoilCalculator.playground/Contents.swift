//: A UIKit based Playground for presenting user interface
//  iCoilCalculator Playground
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!!!"
        label.textColor = .green
        
//        view.addSubview(label)
//        self.view = view
        
        // !!! All coil parameters:
        
        // Number of wires in coil (1-6):
        var wiresNumber: Double
        
        // Number of coils (1-4):
        var colisNumber: Double
        
        // Coil type (spaced / micro / clapton):
        var coilTypeIndex: Double
        var coilTypeName: String
        var coilTypeValue: Double
        var coilTypeClapton: Bool
            // Clapton winding material:
            var claptonMaterialIndex: Double
            var claptonMaterialName: String
            var claptonMaterialValue: Double
            var claptonDiameter: Double
        
        // Coil twist:
        var twisted: Bool
        
        // Wire diameter:
        var wireDiameter: Double
        
        // Coil diameter:
        var coilDiameter: Double
        
        // Turns number:
        var turnsNumber: Double
        
        // Legs length:
        var legsLength: Double
        
        // Wire material:
        var wireMaterialIndex: Double
        var wireMaterialName: String
        var wireMaterialValue: Double
        
        // Ohms correction (10%):
        var ohmsCorrection: Bool
        
        // !!! All coil tests:
        
        wiresNumber = 2
        colisNumber = 3
        coilTypeName = "Clapton"
        claptonMaterialName = "Nichrome NI80"
        claptonMaterialValue = 0.00012
        claptonDiameter = 0.32
        twisted = false
        wireDiameter = 1.02
        coilDiameter = 2.5
        turnsNumber = 7.5
        legsLength = 2.5
        wireMaterialName = "Nickel 200"
        wireMaterialValue = 0.00520
        ohmsCorrection = true
        
        let wiresNumberLabel = UILabel()
        wiresNumberLabel.frame = CGRect(x: 20, y: 20, width: 335, height: 20)
        wiresNumberLabel.text = String("Number of wires in coil (1-6): \(wiresNumber)")
        view.addSubview(wiresNumberLabel)
        
        let colisNumberLabel = UILabel()
        colisNumberLabel.frame = CGRect(x: 20, y: 50, width: 335, height: 20)
        colisNumberLabel.text = String("Number of coils (1-4): \(colisNumber)")
        view.addSubview(colisNumberLabel)
        
        let coilTypeLabel = UILabel()
        coilTypeLabel.frame = CGRect(x: 20, y: 80, width: 335, height: 80)
        coilTypeLabel.numberOfLines = 3
        coilTypeLabel.text = String("Coil type: \(coilTypeName)\rWinding diameter: \(claptonDiameter) mm\rMaterial: \(claptonMaterialName), TCR: \(claptonMaterialValue)")
        view.addSubview(coilTypeLabel)
        
        let twistedLabel = UILabel()
        twistedLabel.frame = CGRect(x: 20, y: 170, width: 335, height: 20)
        twistedLabel.text = String("Coil twist: \(twisted)")
        view.addSubview(twistedLabel)

        let wireDiameterLabel = UILabel()
        wireDiameterLabel.frame = CGRect(x: 20, y: 200, width: 335, height: 20)
        wireDiameterLabel.text = String("Wire diameter: \(wireDiameter) mm")
        view.addSubview(wireDiameterLabel)

        let coilDiameterLabel = UILabel()
        coilDiameterLabel.frame = CGRect(x: 20, y: 230, width: 335, height: 20)
        coilDiameterLabel.text = String("Coil diameter: \(coilDiameter) mm")
        view.addSubview(coilDiameterLabel)

        let turnsNumberLabel = UILabel()
        turnsNumberLabel.frame = CGRect(x: 20, y: 260, width: 335, height: 20)
        turnsNumberLabel.text = String("Turns number: \(turnsNumber)")
        view.addSubview(turnsNumberLabel)

        let legsLengthLabel = UILabel()
        legsLengthLabel.frame = CGRect(x: 20, y: 290, width: 335, height: 20)
        legsLengthLabel.text = String("Legs length: 2x\(legsLength) mm")
        view.addSubview(legsLengthLabel)

        let wireMaterialLabel = UILabel()
        wireMaterialLabel.frame = CGRect(x: 20, y: 320, width: 335, height: 20)
        wireMaterialLabel.text = String("Wire material: \(wireMaterialName), TCR: \(wireMaterialValue)")
        view.addSubview(wireMaterialLabel)

        let ohmsCorrectionLabel = UILabel()
        ohmsCorrectionLabel.frame = CGRect(x: 20, y: 350, width: 335, height: 20)
        ohmsCorrectionLabel.text = String("Ohms correction (10%): \(ohmsCorrection)")
        view.addSubview(ohmsCorrectionLabel)
        
        
        
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()



// Custom coil class
//class KyivAppCoil {
//
//    var coil: String {
//        get {
//            return coil.parameters
//        }
//        set {
//            coil.parameters = newValues
//        }
//    }
//
//    var playerLayer: AVPlayerLayer {
//        return layer as! AVPlayerLayer
//    }
//
//}

