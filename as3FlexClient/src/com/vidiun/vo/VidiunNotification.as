package com.vidiun.vo
{
	import com.vidiun.vo.VidiunBaseJob;

	[Bindable]
	public dynamic class VidiunNotification extends VidiunBaseJob
	{
		public var puserId : String;

		public var type : int = int.MIN_VALUE;

		public var objectId : String;

		public var status : int = int.MIN_VALUE;

		public var notificationData : String;

		public var numberOfAttempts : int = int.MIN_VALUE;

		public var notificationResult : String;

		public var objType : int = int.MIN_VALUE;

override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('puserId');
			arr.push('type');
			arr.push('objectId');
			arr.push('status');
			arr.push('notificationData');
			arr.push('numberOfAttempts');
			arr.push('notificationResult');
			arr.push('objType');
			return arr;
		}
	}
}
