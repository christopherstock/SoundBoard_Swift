
    import UIKit

    /*******************************************************************************************************************
    *   The first example view controller.
    *
    *   @author  Christopher Stock
    *   @version 0.0.1
    *******************************************************************************************************************/
    class FirstViewController :
        UIViewController,
        UITextFieldDelegate,
        UIImagePickerControllerDelegate,
        UINavigationControllerDelegate
    {
        // MARK: Properties
        
        /** References the title field */
        @IBOutlet weak var title1 : UILabel!
        
        /** References the input field */
        @IBOutlet weak var input1 : UITextField!

        /** References the button field */
        @IBOutlet weak var button1 : UIButton!

        /** References the image view */
        @IBOutlet weak var photoImageView: UIImageView!

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
        
        /***************************************************************************************************************
        *   Being invoked when the user select the image picker's 'cancel' button.
        *
         *   @param picker The picker that was canceled by the user.
        ***************************************************************************************************************/
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
        {
            // Dismiss the picker if the user canceled.
            dismiss(animated: true, completion: nil)
        }
        
        /***************************************************************************************************************
        *   Being invoked when the user selected a photo from the image picker.
        *
        *   @param picker The picker where the user selected the photo.
        ***************************************************************************************************************/
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
        {
            // The info dictionary may contain multiple representations of the image. You want to use the original.
            guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
                fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
            }
            
            // Set photoImageView to display the selected image.
            photoImageView.image = selectedImage
            
            // Dismiss the picker.
            dismiss(animated: true, completion: nil)
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
        *   Being invoked when a touch gesture is recognized on the image view.
        *
        *   @param sender The object that caused the event.
        ***************************************************************************************************************/
        @IBAction func selectImageFromPhotoLibrary( _ sender:UITapGestureRecognizer)
        {
            print( "SoundBoardFirstViewController::selectImageFromPhotoLibrary()" );

            // Hide the keyboard.
            input1.resignFirstResponder()
            
            // UIImagePickerController is a view controller that lets a user pick media from their photo library.
            let imagePickerController = UIImagePickerController()
            
            // Only allow photos to be picked, not taken.
            imagePickerController.sourceType = .photoLibrary
            
            // Make sure ViewController is notified when the user picks an image.
            imagePickerController.delegate = self
         
            //present the new imagePickerControler animated
            present(imagePickerController, animated: true, completion: nil)
        }
}
