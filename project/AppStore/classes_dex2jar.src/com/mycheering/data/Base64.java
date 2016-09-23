package com.mycheering.data;

import java.io.IOException;
import java.io.OutputStream;

public class Base64
{
  private static final char[] legalChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

  private static int decode(char paramChar)
  {
    if ((paramChar >= 'A') && (paramChar <= 'Z'))
      return paramChar - 'A';
    if ((paramChar >= 'a') && (paramChar <= 'z'))
      return 26 + (paramChar - 'a');
    if ((paramChar >= '0') && (paramChar <= '9'))
      return 26 + (26 + (paramChar - '0'));
    switch (paramChar)
    {
    default:
      throw new RuntimeException("unexpected code: " + paramChar);
    case '+':
      return 62;
    case '/':
      return 63;
    case '=':
    }
    return 0;
  }

  private static void decode(String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    int i = 0;
    int j = paramString.length();
    while (true)
      if ((i < j) && (paramString.charAt(i) <= ' '))
      {
        i++;
      }
      else
      {
        if (i == j);
        int k;
        do
        {
          do
          {
            return;
            k = (decode(paramString.charAt(i)) << 18) + (decode(paramString.charAt(i + 1)) << 12) + (decode(paramString.charAt(i + 2)) << 6) + decode(paramString.charAt(i + 3));
            paramOutputStream.write(0xFF & k >> 16);
          }
          while (paramString.charAt(i + 2) == '=');
          paramOutputStream.write(0xFF & k >> 8);
        }
        while (paramString.charAt(i + 3) == '=');
        paramOutputStream.write(k & 0xFF);
        i += 4;
      }
  }

  // ERROR //
  public static byte[] decode(String paramString)
  {
    // Byte code:
    //   0: new 66	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 67	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: aload_1
    //   10: invokestatic 69	com/mycheering/data/Base64:decode	(Ljava/lang/String;Ljava/io/OutputStream;)V
    //   13: aload_1
    //   14: invokevirtual 73	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   17: astore_3
    //   18: aload_1
    //   19: invokevirtual 76	java/io/ByteArrayOutputStream:close	()V
    //   22: aload_3
    //   23: areturn
    //   24: astore_2
    //   25: new 25	java/lang/RuntimeException
    //   28: dup
    //   29: invokespecial 77	java/lang/RuntimeException:<init>	()V
    //   32: athrow
    //   33: astore 4
    //   35: getstatic 83	java/lang/System:err	Ljava/io/PrintStream;
    //   38: new 27	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   45: ldc 85
    //   47: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: aload 4
    //   52: invokevirtual 86	java/io/IOException:toString	()Ljava/lang/String;
    //   55: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 41	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: invokevirtual 91	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   64: aload_3
    //   65: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   8	13	24	java/io/IOException
    //   18	22	33	java/io/IOException
  }

  public static String encode(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    StringBuffer localStringBuffer = new StringBuffer(3 * paramArrayOfByte.length / 2);
    int j = i - 3;
    int k = 0;
    int i3;
    for (int m = 0; k <= j; m = i3)
    {
      int i2 = (0xFF & paramArrayOfByte[k]) << 16 | (0xFF & paramArrayOfByte[(k + 1)]) << 8 | 0xFF & paramArrayOfByte[(k + 2)];
      localStringBuffer.append(legalChars[(0x3F & i2 >> 18)]);
      localStringBuffer.append(legalChars[(0x3F & i2 >> 12)]);
      localStringBuffer.append(legalChars[(0x3F & i2 >> 6)]);
      localStringBuffer.append(legalChars[(i2 & 0x3F)]);
      k += 3;
      i3 = m + 1;
      if (m >= 14)
      {
        i3 = 0;
        localStringBuffer.append(" ");
      }
    }
    if (k == -2 + (0 + i))
    {
      int i1 = (0xFF & paramArrayOfByte[k]) << 16 | (0xFF & paramArrayOfByte[(k + 1)]) << 8;
      localStringBuffer.append(legalChars[(0x3F & i1 >> 18)]);
      localStringBuffer.append(legalChars[(0x3F & i1 >> 12)]);
      localStringBuffer.append(legalChars[(0x3F & i1 >> 6)]);
      localStringBuffer.append("=");
    }
    while (true)
    {
      return localStringBuffer.toString();
      if (k == -1 + (0 + i))
      {
        int n = (0xFF & paramArrayOfByte[k]) << 16;
        localStringBuffer.append(legalChars[(0x3F & n >> 18)]);
        localStringBuffer.append(legalChars[(0x3F & n >> 12)]);
        localStringBuffer.append("==");
      }
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.mycheering.data.Base64
 * JD-Core Version:    0.6.2
 */