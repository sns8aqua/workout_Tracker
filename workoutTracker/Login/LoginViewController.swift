import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameUITextField: UITextField!
    @IBOutlet weak var passwordUITextField: UITextField!
    @IBOutlet weak var loginWithSocialLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usernameUITextField.placeholder = AppStaticValues.usernamePlaceholder
        passwordUITextField.placeholder = AppStaticValues.passwordPlaceholder
            
        loginWithSocialLabel.textColor = .appPrimaryColor
        loginWithSocialLabel.font = .regularFont(size: 20)
        
        self.loginButton.layer.cornerRadius = 10
        self.loginButton.layer.masksToBounds = true
        
        self.tabBarController?.tabBar.isHidden = true
        for fontFamily in UIFont.familyNames
                {
                    print("Font family name = \(fontFamily as String)")
                    for fontName in UIFont.fontNames(forFamilyName: fontFamily as String)
                    {
                        print("- Font name = \(fontName)")
                    }
                }
        
        }
    @IBAction func loginButtonTapped(_ sender: Any) {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController {
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
}
    

