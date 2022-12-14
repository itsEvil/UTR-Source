package kabam.rotmg.messaging.impl.outgoing {
import flash.utils.IDataOutput;

public class MarkRequest extends OutgoingMessage {

    public var slot_:int;
    public var id_:int;
    public var type_:int;

    public function MarkRequest(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.slot_);
        _arg1.writeInt(this.id_);
        _arg1.writeInt(this.type_);
    }

    override public function toString():String {
        return (formatToString("MARKREQUEST", "slot", "id", "type"));
    }
}
}
