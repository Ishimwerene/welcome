import Debug "mo:base/Debug";
import List "mo:base/List";
import Option "mo:base/Option";

actor {
    // A variable to store a counter
    var counter: Nat = 0;

    // A public query function to greet the user
    public query func greet(name: Text) : async Text {
        return "Hello, " # name # "!";
    }

    // A public query function to get the current counter value
    public query func getCounter() : async Nat {
        return counter;
    }

    // A public update function to increment the counter
    public func incrementCounter() : async Nat {
        counter += 1;
        return counter;
    }

    // A public update function to set the counter to a specific value
    public func setCounter(newCounter: Nat) : async Nat {
        counter := newCounter;
        return counter;
    }
}
