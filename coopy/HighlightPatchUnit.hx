// -*- mode:java; tab-width:4; c-basic-offset:4; indent-tabs-mode:nil -*-

package coopy;

@:expose
class HighlightPatchUnit {
    public var add : Bool;
    public var rem : Bool;
    public var update : Bool;

    public var sourceRow : Int;  // row in original
    public var sourcePrevRow : Int; // row before this in original
    public var sourceNextRow : Int; // row after this in original
    public var destRow : Int;    // row in output
    public var patchRow : Int;   // row in patch
    
    public function new() {
        add = false;
        rem = false;
        update = false;
        sourceRow = -1;
        sourcePrevRow = -1;
        sourceNextRow = -1;
        destRow = -1;
        patchRow = -1;
    }

    public function toString() : String {
        return (add?"insert":(rem?"delete":"update")) + " patchRow " + patchRow + " sourceRows " + sourcePrevRow + "," + sourceRow;
    }
}

