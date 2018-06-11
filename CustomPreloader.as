package
{
   import mx.preloaders.DownloadProgressBar;
   
   public final class CustomPreloader extends DownloadProgressBar
   {
       
      
      public function CustomPreloader(param1:Boolean = false)
      {
         DownloadProgressBar.initializingLabel = "STARTING...";
         super();
         this.downloadingLabel = "NOW LOADING...";
         this.DOWNLOAD_PERCENTAGE = 80;
         this.showPercentage = true;
      }
   }
}
