package com.jh.util;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

public class Base64Util
{
  private static byte[] base64DecodeChars = arrayOfByte;
  private static final char[] base64EncodeChars = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };

  static
  {
    byte[] arrayOfByte = new byte[''];
    arrayOfByte[0] = -1;
    arrayOfByte[1] = -1;
    arrayOfByte[2] = -1;
    arrayOfByte[3] = -1;
    arrayOfByte[4] = -1;
    arrayOfByte[5] = -1;
    arrayOfByte[6] = -1;
    arrayOfByte[7] = -1;
    arrayOfByte[8] = -1;
    arrayOfByte[9] = -1;
    arrayOfByte[10] = -1;
    arrayOfByte[11] = -1;
    arrayOfByte[12] = -1;
    arrayOfByte[13] = -1;
    arrayOfByte[14] = -1;
    arrayOfByte[15] = -1;
    arrayOfByte[16] = -1;
    arrayOfByte[17] = -1;
    arrayOfByte[18] = -1;
    arrayOfByte[19] = -1;
    arrayOfByte[20] = -1;
    arrayOfByte[21] = -1;
    arrayOfByte[22] = -1;
    arrayOfByte[23] = -1;
    arrayOfByte[24] = -1;
    arrayOfByte[25] = -1;
    arrayOfByte[26] = -1;
    arrayOfByte[27] = -1;
    arrayOfByte[28] = -1;
    arrayOfByte[29] = -1;
    arrayOfByte[30] = -1;
    arrayOfByte[31] = -1;
    arrayOfByte[32] = -1;
    arrayOfByte[33] = -1;
    arrayOfByte[34] = -1;
    arrayOfByte[35] = -1;
    arrayOfByte[36] = -1;
    arrayOfByte[37] = -1;
    arrayOfByte[38] = -1;
    arrayOfByte[39] = -1;
    arrayOfByte[40] = -1;
    arrayOfByte[41] = -1;
    arrayOfByte[42] = -1;
    arrayOfByte[43] = 62;
    arrayOfByte[44] = -1;
    arrayOfByte[45] = -1;
    arrayOfByte[46] = -1;
    arrayOfByte[47] = 63;
    arrayOfByte[48] = 52;
    arrayOfByte[49] = 53;
    arrayOfByte[50] = 54;
    arrayOfByte[51] = 55;
    arrayOfByte[52] = 56;
    arrayOfByte[53] = 57;
    arrayOfByte[54] = 58;
    arrayOfByte[55] = 59;
    arrayOfByte[56] = 60;
    arrayOfByte[57] = 61;
    arrayOfByte[58] = -1;
    arrayOfByte[59] = -1;
    arrayOfByte[60] = -1;
    arrayOfByte[61] = -1;
    arrayOfByte[62] = -1;
    arrayOfByte[63] = -1;
    arrayOfByte[64] = -1;
    arrayOfByte[66] = 1;
    arrayOfByte[67] = 2;
    arrayOfByte[68] = 3;
    arrayOfByte[69] = 4;
    arrayOfByte[70] = 5;
    arrayOfByte[71] = 6;
    arrayOfByte[72] = 7;
    arrayOfByte[73] = 8;
    arrayOfByte[74] = 9;
    arrayOfByte[75] = 10;
    arrayOfByte[76] = 11;
    arrayOfByte[77] = 12;
    arrayOfByte[78] = 13;
    arrayOfByte[79] = 14;
    arrayOfByte[80] = 15;
    arrayOfByte[81] = 16;
    arrayOfByte[82] = 17;
    arrayOfByte[83] = 18;
    arrayOfByte[84] = 19;
    arrayOfByte[85] = 20;
    arrayOfByte[86] = 21;
    arrayOfByte[87] = 22;
    arrayOfByte[88] = 23;
    arrayOfByte[89] = 24;
    arrayOfByte[90] = 25;
    arrayOfByte[91] = -1;
    arrayOfByte[92] = -1;
    arrayOfByte[93] = -1;
    arrayOfByte[94] = -1;
    arrayOfByte[95] = -1;
    arrayOfByte[96] = -1;
    arrayOfByte[97] = 26;
    arrayOfByte[98] = 27;
    arrayOfByte[99] = 28;
    arrayOfByte[100] = 29;
    arrayOfByte[101] = 30;
    arrayOfByte[102] = 31;
    arrayOfByte[103] = 32;
    arrayOfByte[104] = 33;
    arrayOfByte[105] = 34;
    arrayOfByte[106] = 35;
    arrayOfByte[107] = 36;
    arrayOfByte[108] = 37;
    arrayOfByte[109] = 38;
    arrayOfByte[110] = 39;
    arrayOfByte[111] = 40;
    arrayOfByte[112] = 41;
    arrayOfByte[113] = 42;
    arrayOfByte[114] = 43;
    arrayOfByte[115] = 44;
    arrayOfByte[116] = 45;
    arrayOfByte[117] = 46;
    arrayOfByte[118] = 47;
    arrayOfByte[119] = 48;
    arrayOfByte[120] = 49;
    arrayOfByte[121] = 50;
    arrayOfByte[122] = 51;
    arrayOfByte[123] = -1;
    arrayOfByte[124] = -1;
    arrayOfByte[125] = -1;
    arrayOfByte[126] = -1;
    arrayOfByte[127] = -1;
  }

  public static byte[] decode(String paramString)
  {
    try
    {
      byte[] arrayOfByte6 = paramString.getBytes("utf-8");
      arrayOfByte1 = arrayOfByte6;
      i = arrayOfByte1.length;
      localByteArrayOutputStream = new ByteArrayOutputStream(i);
      j = 0;
      if (j >= i)
        return localByteArrayOutputStream.toByteArray();
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        int i;
        ByteArrayOutputStream localByteArrayOutputStream;
        int j;
        localUnsupportedEncodingException.printStackTrace();
        byte[] arrayOfByte1 = null;
        continue;
        int k;
        int m;
        do
        {
          j = k;
          byte[] arrayOfByte2 = base64DecodeChars;
          k = j + 1;
          m = arrayOfByte2[arrayOfByte1[j]];
        }
        while ((k < i) && (m == -1));
        if (m != -1)
        {
          int i1;
          do
          {
            int n = k;
            byte[] arrayOfByte3 = base64DecodeChars;
            k = n + 1;
            i1 = arrayOfByte3[arrayOfByte1[n]];
          }
          while ((k < i) && (i1 == -1));
          if (i1 != -1)
          {
            localByteArrayOutputStream.write(m << 2 | (i1 & 0x30) >>> 4);
            int i4;
            do
            {
              int i2 = k;
              k = i2 + 1;
              int i3 = arrayOfByte1[i2];
              if (i3 == 61)
              {
                byte[] arrayOfByte5 = localByteArrayOutputStream.toByteArray();
                return arrayOfByte5;
              }
              i4 = base64DecodeChars[i3];
            }
            while ((k < i) && (i4 == -1));
            if (i4 != -1)
            {
              localByteArrayOutputStream.write((i1 & 0xF) << 4 | (i4 & 0x3C) >>> 2);
              int i7;
              do
              {
                int i5 = k;
                k = i5 + 1;
                int i6 = arrayOfByte1[i5];
                if (i6 == 61)
                {
                  byte[] arrayOfByte4 = localByteArrayOutputStream.toByteArray();
                  return arrayOfByte4;
                }
                i7 = base64DecodeChars[i6];
              }
              while ((k < i) && (i7 == -1));
              if (i7 != -1)
              {
                localByteArrayOutputStream.write(i7 | (i4 & 0x3) << 6);
                j = k;
              }
            }
          }
        }
      }
    }
  }

  public static String encode(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramArrayOfByte.length;
    int i2;
    for (int j = 0; ; j = i2)
    {
      if (j >= i);
      int m;
      int n;
      int i1;
      while (true)
      {
        return localStringBuffer.toString();
        int k = j + 1;
        m = 0xFF & paramArrayOfByte[j];
        if (k == i)
        {
          localStringBuffer.append(base64EncodeChars[(m >>> 2)]);
          localStringBuffer.append(base64EncodeChars[((m & 0x3) << 4)]);
          localStringBuffer.append("==");
        }
        else
        {
          n = k + 1;
          i1 = 0xFF & paramArrayOfByte[k];
          if (n != i)
            break;
          localStringBuffer.append(base64EncodeChars[(m >>> 2)]);
          localStringBuffer.append(base64EncodeChars[((m & 0x3) << 4 | (i1 & 0xF0) >>> 4)]);
          localStringBuffer.append(base64EncodeChars[((i1 & 0xF) << 2)]);
          localStringBuffer.append("=");
        }
      }
      i2 = n + 1;
      int i3 = 0xFF & paramArrayOfByte[n];
      localStringBuffer.append(base64EncodeChars[(m >>> 2)]);
      localStringBuffer.append(base64EncodeChars[((m & 0x3) << 4 | (i1 & 0xF0) >>> 4)]);
      localStringBuffer.append(base64EncodeChars[((i1 & 0xF) << 2 | (i3 & 0xC0) >>> 6)]);
      localStringBuffer.append(base64EncodeChars[(i3 & 0x3F)]);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.util.Base64Util
 * JD-Core Version:    0.6.2
 */