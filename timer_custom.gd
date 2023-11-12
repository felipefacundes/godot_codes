@onready var timer = Timer.new()  # creates a new Timer

func _ready():
    add_child(timer)  # adds the Timer as a child node
    timer.wait_time = 1.0  # sets the wait time to 1 second
    timer.one_shot = true  # sets the Timer to trigger only once
    timer.connect("timeout", run_a_any_function)  # connects the timeout signal to 'run a any method'
    timer.start()  # starts the Timer

func run_a_any_function():
    print("The timer has finished!")  # this code will be executed when the timer finishes

# When using the default timer node, to avoid bugs, use it in _ready or process to check if the node has been instantiated in the scene
if not self.has_node("Timer"):
    self.add_child(timer)
    

# ----------------------------------------------------------------------------------
# Example de function to singleton Global
func create_timer(the_timer_var: Timer, run_a_any_function, _delay: float):
	add_child(the_timer_var)  # adds the Timer as a child node
	the_timer_var.wait_time = _delay  # sets the wait time to 1 second
	the_timer_var.one_shot = true  # sets the Timer to trigger only once
	the_timer_var.connect("timeout", run_a_any_function)  # connects the timeout signal to 'run a any method'
	the_timer_var.start()  # starts the Timer
