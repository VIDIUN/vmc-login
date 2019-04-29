package com.vidiun.vo
{
	import com.vidiun.vo.BaseFlexVo;
	[Bindable]
	public dynamic class VidiunExclusiveLockKey extends BaseFlexVo
	{
		public var schedulerId : int = int.MIN_VALUE;

		public var workerId : int = int.MIN_VALUE;

		public var batchIndex : int = int.MIN_VALUE;

public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('schedulerId');
			arr.push('workerId');
			arr.push('batchIndex');
			return arr;
		}
	}
}
