
    import UIKit

    /*******************************************************************************************************************
    *   The second example view controller.
    *
    *   @author  Christopher Stock
    *   @version 0.0.1
    *******************************************************************************************************************/
    class SoundBoardRatingControl: UIStackView
    {
        //MARK: Properties
        private var ratingButtons = [UIButton]();
        
        internal var rating = 0;
        
        //MARK: Initialization
        
        override init(frame: CGRect)
        {
            super.init(frame: frame)
            
            setupButtons();
        }
        
        required init(coder: NSCoder)
        {
            super.init(coder: coder)
        
            setupButtons();
        }
        
        //MARK: Private Methods

        private func setupButtons()
        {
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // Setup the button action
            button.addTarget(
                self,
                action: #selector(
                    SoundBoardRatingControl.ratingButtonTapped(button:)
                ),
                for: .touchUpInside
            );
            
            // Add the button to the stack
            addArrangedSubview(button)
        }
        
        //MARK: Button Action
        
        func ratingButtonTapped(button: UIButton)
        {
            print("Button pressed 👍")
        }
        
        
    }
