
    import UIKit

    /*******************************************************************************************************************
    *   The second example view controller.
    *
    *   @author  Christopher Stock
    *   @version 0.0.1
    *******************************************************************************************************************/
    @IBDesignable class SoundBoardRatingControl: UIStackView
    {
        //MARK: Properties

        @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
            didSet {
                setupButtons()
            }
        }
        
        @IBInspectable var starCount: Int = 5 {
            didSet {
                setupButtons()
            }
        }

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

        private func clearExistingButtons()
        {
            // clear any existing buttons
            for button in ratingButtons {
                removeArrangedSubview(button)
                button.removeFromSuperview()
            }
            ratingButtons.removeAll()
        }
        
        private func setupButtons()
        {
            clearExistingButtons();
            
            for _ in 0..<starCount
            {
                // Create the button
                let button = UIButton()
                button.backgroundColor = UIColor.red
            
                // Add constraints
                button.translatesAutoresizingMaskIntoConstraints = false
                button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
                button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            
                // Setup the button action
                button.addTarget(
                    self,
                    action: #selector(
                        SoundBoardRatingControl.ratingButtonTapped(button:)
                    ),
                    for: .touchUpInside
                );
            
                // Add the new button to the rating button array
                ratingButtons.append( button );
                
                // Add the button to the stack
                addArrangedSubview( button )
                
                print( "Created button .." );
            }
        }
        
        //MARK: Button Action
        
        func ratingButtonTapped(button: UIButton)
        {
            print("Button pressed 👍")
        }
        
        
    }
