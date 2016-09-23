package com.lidroid.xutils.http.callback;

import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.http.HttpEntity;

public class StringDownloadHandler
{
  public String handleEntity(HttpEntity paramHttpEntity, RequestCallBackHandler paramRequestCallBackHandler, String paramString)
    throws IOException
  {
    if (paramHttpEntity == null)
      return null;
    long l1 = 0L;
    long l2 = paramHttpEntity.getContentLength();
    if ((paramRequestCallBackHandler != null) && (!paramRequestCallBackHandler.updateProgress(l2, l1, true)))
      return null;
    InputStream localInputStream = null;
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localInputStream = paramHttpEntity.getContent();
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localInputStream, paramString));
      String str = localBufferedReader.readLine();
      if (str == null);
      while (true)
      {
        if (paramRequestCallBackHandler != null)
          paramRequestCallBackHandler.updateProgress(l2, l1, true);
        return localStringBuilder.toString().trim();
        localStringBuilder.append(str).append('\n');
        l1 += OtherUtils.sizeOfString(str, paramString);
        if (paramRequestCallBackHandler == null)
          break;
        boolean bool = paramRequestCallBackHandler.updateProgress(l2, l1, false);
        if (bool)
          break;
      }
    }
    finally
    {
      IOUtils.closeQuietly(localInputStream);
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.callback.StringDownloadHandler
 * JD-Core Version:    0.6.2
 */