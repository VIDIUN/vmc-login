package com.vidiun.commands.metadataBatch
{
	import com.vidiun.vo.VidiunExclusiveLockKey;
	import com.vidiun.delegates.metadataBatch.MetadataBatchFreeExclusiveTransformMetadataJobDelegate;
	import com.vidiun.net.VidiunCall;

	public class MetadataBatchFreeExclusiveTransformMetadataJob extends VidiunCall
	{
		public var filterFields : String;
		public function MetadataBatchFreeExclusiveTransformMetadataJob( id : int,lockKey : VidiunExclusiveLockKey,resetExecutionAttempts : Boolean=false )
		{
			service= 'metadata_metadatabatch';
			action= 'freeExclusiveTransformMetadataJob';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'id' );
			valueArr.push( id );
 			keyValArr = vidiunObject2Arrays(lockKey,'lockKey');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			keyArr.push( 'resetExecutionAttempts' );
			valueArr.push( resetExecutionAttempts );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new MetadataBatchFreeExclusiveTransformMetadataJobDelegate( this , config );
		}
	}
}