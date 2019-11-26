 
import UIKit

//Protocol declaration
protocol ChangeCityDelegate {
    func userEntredANewCityName(city: String)
}

class ChangeCityViewController: UIViewController {
    
    //delegate variabled
    var delegate: ChangeCityDelegate?
    
    //IBOutlets
    @IBOutlet weak var changeCityTextField: UITextField!
    
    //IBAction on the "Get Weather" button
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
    
        let cityName = changeCityTextField.text!
        
        //If delegate set, call userEnteredANewCityName
        delegate?.userEntredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    //IBAction on the back button
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
