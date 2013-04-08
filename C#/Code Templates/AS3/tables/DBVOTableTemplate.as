package PACKAGE_STRING.tables
{
	import PACKAGE_STRING.interfaces.*;

	public class CLASS_NAME implements IDBVOTable
	{
		public var rowList:Vector.<IDBVOTable>;
	
		public function CLASS_NAME():void
		{
			init();
		}

		public function init():void
		{
			ROW_LIST
		}

		public function index(row:IDBVO):IDBVO
		{
			rowList.push(row);
			return row;
		}
		
		public function get tableName():String
		{
			return "CLASS_NAME";
		}
	}
}