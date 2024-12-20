override func viewDidLoad() {
    super.viewDidLoad()
    
    #if arch(arm64)
    // Configure for Apple Silicon
    setupForAppleSilicon()
    #else
    // Configure for Intel
    setupForIntel()
    #endif
} 