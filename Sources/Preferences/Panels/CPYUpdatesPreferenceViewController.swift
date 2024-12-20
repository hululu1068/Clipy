private func checkSystemArchitecture() {
    #if arch(arm64)
    // Apple Silicon specific code
    #else
    // Intel specific code
    #endif
} 