package com.vidiun.vo
{
	import com.vidiun.vo.BaseFlexVo;
	[Bindable]
	public dynamic class VidiunFileExistsResponse extends BaseFlexVo
	{
		public var exists : Boolean;

		public var sizeOk : Boolean;

public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('exists');
			arr.push('sizeOk');
			return arr;
		}
	}
}
