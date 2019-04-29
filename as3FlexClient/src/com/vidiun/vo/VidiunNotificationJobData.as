package com.vidiun.vo
{
	import com.vidiun.vo.VidiunJobData;

	[Bindable]
	public dynamic class VidiunNotificationJobData extends VidiunJobData
	{
		public var userId : String;

		public var type : int = int.MIN_VALUE;

		public var typeAsString : String;

		public var objectId : String;

		public var status : int = int.MIN_VALUE;

		public var data : String;

		public var numberOfAttempts : int = int.MIN_VALUE;

		public var notificationResult : String;

		public var objType : int = int.MIN_VALUE;

override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('userId');
			arr.push('type');
			arr.push('typeAsString');
			arr.push('objectId');
			arr.push('status');
			arr.push('data');
			arr.push('numberOfAttempts');
			arr.push('notificationResult');
			arr.push('objType');
			return arr;
		}
	}
}
