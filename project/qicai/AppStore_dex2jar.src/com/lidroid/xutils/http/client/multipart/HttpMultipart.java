package com.lidroid.xutils.http.client.multipart;

import com.lidroid.xutils.http.client.multipart.content.ContentBody;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.ByteArrayBuffer;

class HttpMultipart
{
  private static final ByteArrayBuffer CR_LF = encode(MIME.DEFAULT_CHARSET, "\r\n");
  private static final ByteArrayBuffer FIELD_SEP = encode(MIME.DEFAULT_CHARSET, ": ");
  private static final ByteArrayBuffer TWO_DASHES = encode(MIME.DEFAULT_CHARSET, "--");
  private final String boundary;
  private final Charset charset;
  private final HttpMultipartMode mode;
  private final List<FormBodyPart> parts;
  private String subType;

  public HttpMultipart(String paramString1, String paramString2)
  {
    this(paramString1, null, paramString2);
  }

  public HttpMultipart(String paramString1, Charset paramCharset, String paramString2)
  {
    this(paramString1, paramCharset, paramString2, HttpMultipartMode.STRICT);
  }

  public HttpMultipart(String paramString1, Charset paramCharset, String paramString2, HttpMultipartMode paramHttpMultipartMode)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("Multipart subtype may not be null");
    if (paramString2 == null)
      throw new IllegalArgumentException("Multipart boundary may not be null");
    this.subType = paramString1;
    if (paramCharset != null);
    while (true)
    {
      this.charset = paramCharset;
      this.boundary = paramString2;
      this.parts = new ArrayList();
      this.mode = paramHttpMultipartMode;
      return;
      paramCharset = MIME.DEFAULT_CHARSET;
    }
  }

  private void doWriteTo(HttpMultipartMode paramHttpMultipartMode, OutputStream paramOutputStream, MultipartEntity.CallBackInfo paramCallBackInfo, boolean paramBoolean)
    throws IOException
  {
    paramCallBackInfo.pos = 0L;
    ByteArrayBuffer localByteArrayBuffer = encode(this.charset, getBoundary());
    Iterator localIterator1 = this.parts.iterator();
    if (!localIterator1.hasNext())
    {
      writeBytes(TWO_DASHES, paramOutputStream);
      paramCallBackInfo.pos += TWO_DASHES.length();
      writeBytes(localByteArrayBuffer, paramOutputStream);
      paramCallBackInfo.pos += localByteArrayBuffer.length();
      writeBytes(TWO_DASHES, paramOutputStream);
      paramCallBackInfo.pos += TWO_DASHES.length();
      writeBytes(CR_LF, paramOutputStream);
      paramCallBackInfo.pos += CR_LF.length();
      paramCallBackInfo.doCallBack(true);
      return;
    }
    FormBodyPart localFormBodyPart = (FormBodyPart)localIterator1.next();
    if (!paramCallBackInfo.doCallBack(true))
      throw new InterruptedIOException("cancel");
    writeBytes(TWO_DASHES, paramOutputStream);
    paramCallBackInfo.pos += TWO_DASHES.length();
    writeBytes(localByteArrayBuffer, paramOutputStream);
    paramCallBackInfo.pos += localByteArrayBuffer.length();
    writeBytes(CR_LF, paramOutputStream);
    paramCallBackInfo.pos += CR_LF.length();
    MinimalFieldHeader localMinimalFieldHeader = localFormBodyPart.getHeader();
    switch ($SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode()[paramHttpMultipartMode.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      writeBytes(CR_LF, paramOutputStream);
      paramCallBackInfo.pos += CR_LF.length();
      if (paramBoolean)
      {
        ContentBody localContentBody = localFormBodyPart.getBody();
        localContentBody.setCallBackInfo(paramCallBackInfo);
        localContentBody.writeTo(paramOutputStream);
      }
      writeBytes(CR_LF, paramOutputStream);
      paramCallBackInfo.pos += CR_LF.length();
      break;
      Iterator localIterator2 = localMinimalFieldHeader.iterator();
      while (localIterator2.hasNext())
      {
        MinimalField localMinimalField3 = (MinimalField)localIterator2.next();
        writeField(localMinimalField3, paramOutputStream);
        paramCallBackInfo.pos += encode(MIME.DEFAULT_CHARSET, localMinimalField3.getName() + localMinimalField3.getBody()).length() + FIELD_SEP.length() + CR_LF.length();
      }
      MinimalField localMinimalField1 = localMinimalFieldHeader.getField("Content-Disposition");
      writeField(localMinimalField1, this.charset, paramOutputStream);
      paramCallBackInfo.pos += encode(this.charset, localMinimalField1.getName() + localMinimalField1.getBody()).length() + FIELD_SEP.length() + CR_LF.length();
      if (localFormBodyPart.getBody().getFilename() != null)
      {
        MinimalField localMinimalField2 = localMinimalFieldHeader.getField("Content-Type");
        writeField(localMinimalField2, this.charset, paramOutputStream);
        paramCallBackInfo.pos += encode(this.charset, localMinimalField2.getName() + localMinimalField2.getBody()).length() + FIELD_SEP.length() + CR_LF.length();
      }
    }
  }

  private void doWriteTo(HttpMultipartMode paramHttpMultipartMode, OutputStream paramOutputStream, boolean paramBoolean)
    throws IOException
  {
    doWriteTo(paramHttpMultipartMode, paramOutputStream, MultipartEntity.CallBackInfo.DEFAULT, paramBoolean);
  }

  private static ByteArrayBuffer encode(Charset paramCharset, String paramString)
  {
    ByteBuffer localByteBuffer = paramCharset.encode(CharBuffer.wrap(paramString));
    ByteArrayBuffer localByteArrayBuffer = new ByteArrayBuffer(localByteBuffer.remaining());
    localByteArrayBuffer.append(localByteBuffer.array(), localByteBuffer.position(), localByteBuffer.remaining());
    return localByteArrayBuffer;
  }

  private static void writeBytes(String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    writeBytes(encode(MIME.DEFAULT_CHARSET, paramString), paramOutputStream);
  }

  private static void writeBytes(String paramString, Charset paramCharset, OutputStream paramOutputStream)
    throws IOException
  {
    writeBytes(encode(paramCharset, paramString), paramOutputStream);
  }

  private static void writeBytes(ByteArrayBuffer paramByteArrayBuffer, OutputStream paramOutputStream)
    throws IOException
  {
    paramOutputStream.write(paramByteArrayBuffer.buffer(), 0, paramByteArrayBuffer.length());
    paramOutputStream.flush();
  }

  private static void writeField(MinimalField paramMinimalField, OutputStream paramOutputStream)
    throws IOException
  {
    writeBytes(paramMinimalField.getName(), paramOutputStream);
    writeBytes(FIELD_SEP, paramOutputStream);
    writeBytes(paramMinimalField.getBody(), paramOutputStream);
    writeBytes(CR_LF, paramOutputStream);
  }

  private static void writeField(MinimalField paramMinimalField, Charset paramCharset, OutputStream paramOutputStream)
    throws IOException
  {
    writeBytes(paramMinimalField.getName(), paramCharset, paramOutputStream);
    writeBytes(FIELD_SEP, paramOutputStream);
    writeBytes(paramMinimalField.getBody(), paramCharset, paramOutputStream);
    writeBytes(CR_LF, paramOutputStream);
  }

  public void addBodyPart(FormBodyPart paramFormBodyPart)
  {
    if (paramFormBodyPart == null)
      return;
    this.parts.add(paramFormBodyPart);
  }

  public List<FormBodyPart> getBodyParts()
  {
    return this.parts;
  }

  public String getBoundary()
  {
    return this.boundary;
  }

  public Charset getCharset()
  {
    return this.charset;
  }

  public HttpMultipartMode getMode()
  {
    return this.mode;
  }

  public String getSubType()
  {
    return this.subType;
  }

  public long getTotalLength()
  {
    long l1 = -1L;
    long l2 = 0L;
    Iterator localIterator = this.parts.iterator();
    while (true)
    {
      ByteArrayOutputStream localByteArrayOutputStream;
      if (!localIterator.hasNext())
        localByteArrayOutputStream = new ByteArrayOutputStream();
      try
      {
        doWriteTo(this.mode, localByteArrayOutputStream, false);
        int i = localByteArrayOutputStream.toByteArray().length;
        l1 = l2 + i;
        long l3;
        do
        {
          return l1;
          l3 = ((FormBodyPart)localIterator.next()).getBody().getContentLength();
        }
        while (l3 < 0L);
        l2 += l3;
      }
      catch (Throwable localThrowable)
      {
      }
    }
    return l1;
  }

  public void setSubType(String paramString)
  {
    this.subType = paramString;
  }

  public void writeTo(OutputStream paramOutputStream, MultipartEntity.CallBackInfo paramCallBackInfo)
    throws IOException
  {
    doWriteTo(this.mode, paramOutputStream, paramCallBackInfo, true);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.multipart.HttpMultipart
 * JD-Core Version:    0.6.2
 */