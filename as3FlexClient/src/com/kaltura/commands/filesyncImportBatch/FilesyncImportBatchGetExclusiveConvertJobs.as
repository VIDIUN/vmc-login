package com.kaltura.commands.filesyncImportBatch
{
	import com.kaltura.vo.KalturaExclusiveLockKey;
	import com.kaltura.vo.KalturaBatchJobFilter;
	import com.kaltura.delegates.filesyncImportBatch.FilesyncImportBatchGetExclusiveConvertJobsDelegate;
	import com.kaltura.net.KalturaCall;

	public class FilesyncImportBatchGetExclusiveConvertJobs extends KalturaCall
	{
		public var filterFields : String;
		public function FilesyncImportBatchGetExclusiveConvertJobs( lockKey : KalturaExclusiveLockKey,maxExecutionTime : int,numberOfJobs : int,filter : KalturaBatchJobFilter=null )
		{
			if(filter== null)filter= new KalturaBatchJobFilter();
			service= 'multicenters_filesyncimportbatch';
			action= 'getExclusiveConvertJobs';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(lockKey,'lockKey');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			keyArr.push( 'maxExecutionTime' );
			valueArr.push( maxExecutionTime );
			keyArr.push( 'numberOfJobs' );
			valueArr.push( numberOfJobs );
 			keyValArr = kalturaObject2Arrays(filter,'filter');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new FilesyncImportBatchGetExclusiveConvertJobsDelegate( this , config );
		}
	}
}