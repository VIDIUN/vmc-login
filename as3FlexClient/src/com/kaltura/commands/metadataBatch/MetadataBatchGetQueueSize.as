package com.vidiun.commands.metadataBatch
{
	import com.vidiun.vo.VidiunWorkerQueueFilter;
	import com.vidiun.delegates.metadataBatch.MetadataBatchGetQueueSizeDelegate;
	import com.vidiun.net.VidiunCall;

	public class MetadataBatchGetQueueSize extends VidiunCall
	{
		public var filterFields : String;
		public function MetadataBatchGetQueueSize( workerQueueFilter : VidiunWorkerQueueFilter )
		{
			service= 'metadata_metadatabatch';
			action= 'getQueueSize';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = vidiunObject2Arrays(workerQueueFilter,'workerQueueFilter');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new MetadataBatchGetQueueSizeDelegate( this , config );
		}
	}
}
