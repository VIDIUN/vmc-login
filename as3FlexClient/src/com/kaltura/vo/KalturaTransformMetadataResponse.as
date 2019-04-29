package com.vidiun.vo
{
	import com.vidiun.vo.BaseFlexVo;
	[Bindable]
	public dynamic class VidiunTransformMetadataResponse extends BaseFlexVo
	{
		public var objects : Array = new Array();

		public var totalCount : int = int.MIN_VALUE;

		public var lowerVersionCount : int = int.MIN_VALUE;

public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			return arr;
		}
	}
}
