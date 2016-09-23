package com.jh.util;

public class UnicodeUtil
{
  private static final char[] hexDigit = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };

  public static String fromUnicode(String paramString)
  {
    return fromUnicode(paramString.toCharArray(), 0, paramString.length(), new char[1024]);
  }

  public static String fromUnicode(char[] paramArrayOfChar1, int paramInt1, int paramInt2, char[] paramArrayOfChar2)
  {
    if (paramArrayOfChar2.length < paramInt2)
    {
      int i9 = paramInt2 * 2;
      if (i9 < 0)
        i9 = 2147483647;
      paramArrayOfChar2 = new char[i9];
    }
    char[] arrayOfChar = paramArrayOfChar2;
    int i = paramInt1 + paramInt2;
    int j = 0;
    int k = paramInt1;
    while (true)
    {
      if (k >= i)
        return new String(arrayOfChar, 0, j);
      int m = k + 1;
      int n = paramArrayOfChar1[k];
      if (n == 92)
      {
        k = m + 1;
        int i2 = paramArrayOfChar1[m];
        if (i2 == 117)
        {
          int i4 = 0;
          int i5 = 0;
          if (i5 >= 4)
          {
            int i8 = j + 1;
            arrayOfChar[j] = ((char)i4);
            j = i8;
          }
          else
          {
            int i6 = k + 1;
            int i7 = paramArrayOfChar1[k];
            switch (i7)
            {
            default:
              throw new IllegalArgumentException("Malformed \\uxxxx encoding.");
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
              i4 = -48 + (i7 + (i4 << 4));
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            }
            while (true)
            {
              i5++;
              k = i6;
              break;
              i4 = -97 + (i7 + (10 + (i4 << 4)));
              continue;
              i4 = -65 + (i7 + (10 + (i4 << 4)));
            }
          }
        }
        else
        {
          if (i2 == 116)
            i2 = 9;
          while (true)
          {
            int i3 = j + 1;
            arrayOfChar[j] = i2;
            j = i3;
            break;
            if (i2 == 114)
              i2 = 13;
            else if (i2 == 110)
              i2 = 10;
            else if (i2 == 102)
              i2 = 12;
          }
        }
      }
      else
      {
        int i1 = j + 1;
        arrayOfChar[j] = n;
        j = i1;
        k = m;
      }
    }
  }

  private static char toHex(int paramInt)
  {
    return hexDigit[(paramInt & 0xF)];
  }

  public static String toUnicode(String paramString, boolean paramBoolean)
  {
    int i = paramString.length();
    int j = i * 2;
    if (j < 0)
      j = 2147483647;
    StringBuffer localStringBuffer = new StringBuffer(j);
    int k = 0;
    if (k >= i)
      return localStringBuffer.toString();
    char c = paramString.charAt(k);
    if ((c > '=') && (c < ''))
      if (c == '\\')
      {
        localStringBuffer.append('\\');
        localStringBuffer.append('\\');
      }
    while (true)
    {
      k++;
      break;
      localStringBuffer.append(c);
      continue;
      switch (c)
      {
      default:
        if ((c < ' ') || (c > '~'))
        {
          localStringBuffer.append('\\');
          localStringBuffer.append('u');
          localStringBuffer.append(toHex(0xF & c >> '\f'));
          localStringBuffer.append(toHex(0xF & c >> '\b'));
          localStringBuffer.append(toHex(0xF & c >> '\004'));
          localStringBuffer.append(toHex(c & 0xF));
        }
        break;
      case ' ':
        if ((k == 0) || (paramBoolean))
          localStringBuffer.append('\\');
        localStringBuffer.append(' ');
        break;
      case '\t':
        localStringBuffer.append('\\');
        localStringBuffer.append('t');
        break;
      case '\n':
        localStringBuffer.append('\\');
        localStringBuffer.append('n');
        break;
      case '\r':
        localStringBuffer.append('\\');
        localStringBuffer.append('r');
        break;
      case '\f':
        localStringBuffer.append('\\');
        localStringBuffer.append('f');
        break;
      case '!':
      case '#':
      case ':':
      case '=':
        localStringBuffer.append('\\');
        localStringBuffer.append(c);
        continue;
        localStringBuffer.append(c);
      }
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.util.UnicodeUtil
 * JD-Core Version:    0.6.2
 */