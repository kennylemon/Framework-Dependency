# Framework Dependency
The project include framework A, B and a sample project.
Framework A will check if framework B exist to determine to invoke function framework B or not.
 
## Framework A
```swift
    public func printA() {
        
        print("File: \(#file), Function: \(#function)")
    }

    public func checkB() -> Bool {
        // This bundle denote the app's bundle
        // The allFrameworks include all frameworks loaded by the app
        for bundle in Bundle.allFrameworks {
            // both lastpathcomponent from bundleurl and bundleidetifier works fine to find B framework
            if (bundle.bundleURL.lastPathComponent == "B.framework") {
//            if (bundle.bundleIdentifier == "com.B") {
                print("====== B Exist ======")
                return true
            }
        }
        
        print("Module B not exist")
        
        return false
    }

    public func printBinA() {
    	guard checkB() else {
            return
        }
        print("File: \(#file), Function: \(#function)")
        
        let b = B()
        b.printB()
    }
```

## Framework B
```swift
    public func printB() {
        
        print("File: \(#file), Function: \(#function)")
    }
```


## framework dependency (SingleView App)
> You can check the difference in console log between including and excluding framework B.
```swift
    let a = A()
    a.printA()
    a.printBinA()
```
