// Update version checking code
if #available(macOS 11.0, *) {
    // Use new APIs
} else {
    // Fallback for older versions
} 

private func configureWindow() {
    if #available(macOS 11.0, *) {
        window?.toolbarStyle = .unified
        window?.titlebarSeparatorStyle = .none
    }
    
    #if arch(arm64)
    window?.setContentSize(NSSize(width: 520, height: 360))
    #else
    window?.setContentSize(NSSize(width: 480, height: 340))
    #endif
} 