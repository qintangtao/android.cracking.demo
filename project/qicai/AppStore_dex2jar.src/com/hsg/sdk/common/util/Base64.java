package com.hsg.sdk.common.util;

public class Base64
{
  private static final byte[] decodingTable;
  private static final byte[] encodingTable = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };

  static
  {
    decodingTable = new byte[''];
    int i = 0;
    int j;
    label405: int k;
    if (i >= 128)
    {
      j = 65;
      if (j <= 90)
        break label458;
      k = 97;
      label414: if (k <= 122)
        break label474;
    }
    for (int m = 48; ; m++)
    {
      if (m > 57)
      {
        decodingTable[43] = 62;
        decodingTable[47] = 63;
        return;
        decodingTable[i] = -1;
        i++;
        break;
        label458: decodingTable[j] = ((byte)(j - 65));
        j++;
        break label405;
        label474: decodingTable[k] = ((byte)(26 + (k - 97)));
        k++;
        break label414;
      }
      decodingTable[m] = ((byte)(52 + (m - 48)));
    }
  }

  public static byte[] decode(String paramString)
  {
    String str = discardNonBase64Chars(paramString);
    byte[] arrayOfByte;
    int i;
    if (str.charAt(-2 + str.length()) == '=')
    {
      arrayOfByte = new byte[1 + 3 * (-1 + str.length() / 4)];
      i = 0;
    }
    for (int j = 0; ; j += 3)
    {
      if (i >= -4 + str.length())
      {
        if (str.charAt(-2 + str.length()) != '=')
          break label271;
        int i9 = decodingTable[str.charAt(-4 + str.length())];
        int i10 = decodingTable[str.charAt(-3 + str.length())];
        arrayOfByte[(-1 + arrayOfByte.length)] = ((byte)(i9 << 2 | i10 >> 4));
        return arrayOfByte;
        if (str.charAt(-1 + str.length()) == '=')
        {
          arrayOfByte = new byte[2 + 3 * (-1 + str.length() / 4)];
          break;
        }
        arrayOfByte = new byte[3 * (str.length() / 4)];
        break;
      }
      int k = decodingTable[str.charAt(i)];
      int m = decodingTable[str.charAt(i + 1)];
      int n = decodingTable[str.charAt(i + 2)];
      int i1 = decodingTable[str.charAt(i + 3)];
      arrayOfByte[j] = ((byte)(k << 2 | m >> 4));
      arrayOfByte[(j + 1)] = ((byte)(m << 4 | n >> 2));
      arrayOfByte[(j + 2)] = ((byte)(i1 | n << 6));
      i += 4;
    }
    label271: if (str.charAt(-1 + str.length()) == '=')
    {
      int i6 = decodingTable[str.charAt(-4 + str.length())];
      int i7 = decodingTable[str.charAt(-3 + str.length())];
      int i8 = decodingTable[str.charAt(-2 + str.length())];
      arrayOfByte[(-2 + arrayOfByte.length)] = ((byte)(i6 << 2 | i7 >> 4));
      arrayOfByte[(-1 + arrayOfByte.length)] = ((byte)(i7 << 4 | i8 >> 2));
      return arrayOfByte;
    }
    int i2 = decodingTable[str.charAt(-4 + str.length())];
    int i3 = decodingTable[str.charAt(-3 + str.length())];
    int i4 = decodingTable[str.charAt(-2 + str.length())];
    int i5 = decodingTable[str.charAt(-1 + str.length())];
    arrayOfByte[(-3 + arrayOfByte.length)] = ((byte)(i2 << 2 | i3 >> 4));
    arrayOfByte[(-2 + arrayOfByte.length)] = ((byte)(i3 << 4 | i4 >> 2));
    arrayOfByte[(-1 + arrayOfByte.length)] = ((byte)(i5 | i4 << 6));
    return arrayOfByte;
  }

  public static byte[] decode(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = discardNonBase64Bytes(paramArrayOfByte);
    byte[] arrayOfByte2;
    int i;
    if (arrayOfByte1[(-2 + arrayOfByte1.length)] == 61)
    {
      arrayOfByte2 = new byte[1 + 3 * (-1 + arrayOfByte1.length / 4)];
      i = 0;
    }
    for (int j = 0; ; j += 3)
    {
      if (i >= -4 + arrayOfByte1.length)
      {
        if (arrayOfByte1[(-2 + arrayOfByte1.length)] != 61)
          break label235;
        int i9 = decodingTable[arrayOfByte1[(-4 + arrayOfByte1.length)]];
        int i10 = decodingTable[arrayOfByte1[(-3 + arrayOfByte1.length)]];
        arrayOfByte2[(-1 + arrayOfByte2.length)] = ((byte)(i9 << 2 | i10 >> 4));
        return arrayOfByte2;
        if (arrayOfByte1[(-1 + arrayOfByte1.length)] == 61)
        {
          arrayOfByte2 = new byte[2 + 3 * (-1 + arrayOfByte1.length / 4)];
          break;
        }
        arrayOfByte2 = new byte[3 * (arrayOfByte1.length / 4)];
        break;
      }
      int k = decodingTable[arrayOfByte1[i]];
      int m = decodingTable[arrayOfByte1[(i + 1)]];
      int n = decodingTable[arrayOfByte1[(i + 2)]];
      int i1 = decodingTable[arrayOfByte1[(i + 3)]];
      arrayOfByte2[j] = ((byte)(k << 2 | m >> 4));
      arrayOfByte2[(j + 1)] = ((byte)(m << 4 | n >> 2));
      arrayOfByte2[(j + 2)] = ((byte)(i1 | n << 6));
      i += 4;
    }
    label235: if (arrayOfByte1[(-1 + arrayOfByte1.length)] == 61)
    {
      int i6 = decodingTable[arrayOfByte1[(-4 + arrayOfByte1.length)]];
      int i7 = decodingTable[arrayOfByte1[(-3 + arrayOfByte1.length)]];
      int i8 = decodingTable[arrayOfByte1[(-2 + arrayOfByte1.length)]];
      arrayOfByte2[(-2 + arrayOfByte2.length)] = ((byte)(i6 << 2 | i7 >> 4));
      arrayOfByte2[(-1 + arrayOfByte2.length)] = ((byte)(i7 << 4 | i8 >> 2));
      return arrayOfByte2;
    }
    int i2 = decodingTable[arrayOfByte1[(-4 + arrayOfByte1.length)]];
    int i3 = decodingTable[arrayOfByte1[(-3 + arrayOfByte1.length)]];
    int i4 = decodingTable[arrayOfByte1[(-2 + arrayOfByte1.length)]];
    int i5 = decodingTable[arrayOfByte1[(-1 + arrayOfByte1.length)]];
    arrayOfByte2[(-3 + arrayOfByte2.length)] = ((byte)(i2 << 2 | i3 >> 4));
    arrayOfByte2[(-2 + arrayOfByte2.length)] = ((byte)(i3 << 4 | i4 >> 2));
    arrayOfByte2[(-1 + arrayOfByte2.length)] = ((byte)(i5 | i4 << 6));
    return arrayOfByte2;
  }

  private static byte[] discardNonBase64Bytes(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = new byte[paramArrayOfByte.length];
    int i = 0;
    for (int j = 0; ; j++)
    {
      if (j >= paramArrayOfByte.length)
      {
        byte[] arrayOfByte2 = new byte[i];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i);
        return arrayOfByte2;
      }
      if (isValidBase64Byte(paramArrayOfByte[j]))
      {
        int k = i + 1;
        arrayOfByte1[i] = paramArrayOfByte[j];
        i = k;
      }
    }
  }

  private static String discardNonBase64Chars(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramString.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return localStringBuffer.toString();
      if (isValidBase64Byte((byte)paramString.charAt(j)))
        localStringBuffer.append(paramString.charAt(j));
    }
  }

  public static byte[] encode(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length % 3;
    byte[] arrayOfByte;
    label18: int j;
    int k;
    if (i == 0)
    {
      arrayOfByte = new byte[4 * paramArrayOfByte.length / 3];
      j = paramArrayOfByte.length - i;
      k = 0;
    }
    for (int m = 0; ; m += 4)
    {
      if (k >= j);
      switch (i)
      {
      case 0:
      default:
        return arrayOfByte;
        arrayOfByte = new byte[4 * (1 + paramArrayOfByte.length / 3)];
        break label18;
        int n = 0xFF & paramArrayOfByte[k];
        int i1 = 0xFF & paramArrayOfByte[(k + 1)];
        int i2 = 0xFF & paramArrayOfByte[(k + 2)];
        arrayOfByte[m] = encodingTable[(0x3F & n >>> 2)];
        arrayOfByte[(m + 1)] = encodingTable[(0x3F & (n << 4 | i1 >>> 4))];
        arrayOfByte[(m + 2)] = encodingTable[(0x3F & (i1 << 2 | i2 >>> 6))];
        arrayOfByte[(m + 3)] = encodingTable[(i2 & 0x3F)];
        k += 3;
      case 1:
      case 2:
      }
    }
    int i8 = 0xFF & paramArrayOfByte[(-1 + paramArrayOfByte.length)];
    int i9 = 0x3F & i8 >>> 2;
    int i10 = 0x3F & i8 << 4;
    arrayOfByte[(-4 + arrayOfByte.length)] = encodingTable[i9];
    arrayOfByte[(-3 + arrayOfByte.length)] = encodingTable[i10];
    arrayOfByte[(-2 + arrayOfByte.length)] = 61;
    arrayOfByte[(-1 + arrayOfByte.length)] = 61;
    return arrayOfByte;
    int i3 = 0xFF & paramArrayOfByte[(-2 + paramArrayOfByte.length)];
    int i4 = 0xFF & paramArrayOfByte[(-1 + paramArrayOfByte.length)];
    int i5 = 0x3F & i3 >>> 2;
    int i6 = 0x3F & (i3 << 4 | i4 >>> 4);
    int i7 = 0x3F & i4 << 2;
    arrayOfByte[(-4 + arrayOfByte.length)] = encodingTable[i5];
    arrayOfByte[(-3 + arrayOfByte.length)] = encodingTable[i6];
    arrayOfByte[(-2 + arrayOfByte.length)] = encodingTable[i7];
    arrayOfByte[(-1 + arrayOfByte.length)] = 61;
    return arrayOfByte;
  }

  private static boolean isValidBase64Byte(byte paramByte)
  {
    if (paramByte == 61);
    do
    {
      return true;
      if ((paramByte < 0) || (paramByte >= 128))
        return false;
    }
    while (decodingTable[paramByte] != -1);
    return false;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.Base64
 * JD-Core Version:    0.6.2
 */