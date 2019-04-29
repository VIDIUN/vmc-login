package com.vidiun.vo
{
	import com.vidiun.vo.BaseFlexVo;
	[Bindable]
	public dynamic class VidiunBaseJob extends BaseFlexVo
	{
		public var id : int = int.MIN_VALUE;

		public var partnerId : int = int.MIN_VALUE;

		public var createdAt : int = int.MIN_VALUE;

		public var updatedAt : int = int.MIN_VALUE;

		public var deletedAt : int = int.MIN_VALUE;

		public var processorExpiration : int = int.MIN_VALUE;

		public var executionAttempts : int = int.MIN_VALUE;

public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			return arr;
		}
	}
}
