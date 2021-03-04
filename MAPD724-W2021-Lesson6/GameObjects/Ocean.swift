import SpriteKit
import GameplayKit

class Ocean: GameObject
{
    
    // constructor
    init()
    {
        super.init(imageString: "ocean_landscape", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {       //MARK:- MIDTERM EDIT change the x-axis position to
        if(position.x <= -773)
        {
            Reset()
        }
    }
    //MARK:- MIDTERM EDIT change the reset position of the x-axis at 773 and y axis to 0
    override func Reset()
    {
        position.x = 773
    }
    
    // initialization
    
    //MARK:- MIDTERM EDIT change the movement speed of the ocean axis on the x axis
    override func Start()
    {
        zPosition = 0
        dx = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    //MARK:- MIDTERM EDIT Move the ocean along x axis in landscape mode
    func Move()
    {
        position.x -= dx! //made change
    }
}
