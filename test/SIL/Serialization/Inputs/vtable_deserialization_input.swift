
public protocol P {
  func doSomething()
}

@_silgen_name("unknown") public
func unknown() -> ()

@_fixed_layout
public class Y : P {
  @_inlineable
  public func doAnotherThing() {
    unknown()
  }

  @_inlineable
  public func doSomething() {
    doAnotherThing()
  }
  @_inlineable
  public init() {}
}
