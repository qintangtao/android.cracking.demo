package com.lidroid.xutils.http.client.entity;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public class GZipDecompressingEntity extends DecompressingEntity
{
  public GZipDecompressingEntity(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
  }

  InputStream decorate(InputStream paramInputStream)
    throws IOException
  {
    return new GZIPInputStream(paramInputStream);
  }

  public Header getContentEncoding()
  {
    return null;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.entity.GZipDecompressingEntity
 * JD-Core Version:    0.6.2
 */