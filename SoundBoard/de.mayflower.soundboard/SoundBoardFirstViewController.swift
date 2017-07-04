
    import UIKit

    /*******************************************************************************************************************
    *   The first example view controller.
    *
    *   @author  Christopher Stock
    *   @version 0.0.1
    *******************************************************************************************************************/
    class FirstViewController: UIViewController, UITextFieldDelegate
    {
        // MARK: Properties
        
        /** References the title field */
        @IBOutlet weak var title1 : UILabel!
        
        /** References the input field */
        @IBOutlet weak var input1 : UITextField!

        /** References the button field */
        @IBOutlet weak var button1 : UIButton!
        
        /***************************************************************************************************************
        *   Being invoked when the view did load.
        ***************************************************************************************************************/
        override func viewDidLoad()
        {
            super.viewDidLoad()
          
            // Do any additional setup after loading the view, typically from a nib.
        
            // Handle the text field’s user input through delegate callbacks.
            self.input1.delegate = self
        }

        /***************************************************************************************************************
        *   Being invoked when a memory warning is raised.
        ***************************************************************************************************************/
        override func didReceiveMemoryWarning()
        {
            super.didReceiveMemoryWarning()

            // Dispose of any resources that can be recreated.
        }
        
        // MARK: Actions

        /***************************************************************************************************************
        *   Being invoked when the buton 'Set default label text' is pressed.
        *
        *   @param sender The button that caused this event.
        ***************************************************************************************************************/
        @IBAction func onPressedButtonSetDefaultLabelText( _ sender: UIButton )
        {
            print( "SoundBoardFirstViewController::onPressedButtonSetDefaultLabelText()" );

            self.title1.text = "The Default Text"
        }

        /***************************************************************************************************************
        *   Being invoked when the text field is accepted.
        *
        *   @param textField The text field where 'Done' or 'Enter' has been pressed.
        ***************************************************************************************************************/
        func textFieldShouldReturn( _ textField: UITextField ) -> Bool
        {
            print( "SoundBoardFirstViewController::textFieldShouldReturn()" );

            // Hide the keyboard.
            textField.resignFirstResponder()
            
            return true;
        }
        
        /***************************************************************************************************************
        *   Being invoked when the text field resigned first responder status.
        *
        *   @param textField The text field that resigned first responder status
        ***************************************************************************************************************/
        func textFieldDidEndEditing( _ textField: UITextField )
        {
            print( "SoundBoardFirstViewController::textFieldDidEndEditing()" );

            self.title1.text = textField.text;
        }
    }
