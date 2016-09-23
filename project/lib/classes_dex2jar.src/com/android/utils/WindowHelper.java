package com.android.utils;

import com.android.models.Window;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;

public class WindowHelper extends UiAutomatorTestCase
{
  public static Window getWindow()
  {
    Window localWindow = new Window();
    String str = RegexUtils.getMatch(ShellHelper.ExecShell("dumpsys window"), "mCurrentFocus=Window\\{(.*?)\\}", 1);
    if (str != null)
    {
      localWindow.currentActivity = str.split(" ")[2];
      localWindow.packageName = localWindow.currentActivity.split("/")[0];
    }
    return localWindow;
  }

  // ERROR //
  public static String getWindowHierarchy()
  {
    // Byte code:
    //   0: invokestatic 62	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   3: ldc 64
    //   5: invokevirtual 68	com/android/uiautomator/core/UiDevice:dumpWindowHierarchy	(Ljava/lang/String;)V
    //   8: aconst_null
    //   9: astore_1
    //   10: iconst_0
    //   11: ifne +28 -> 39
    //   14: new 70	java/io/File
    //   17: dup
    //   18: ldc 72
    //   20: invokespecial 74	java/io/File:<init>	(Ljava/lang/String;)V
    //   23: astore_2
    //   24: aload_2
    //   25: invokevirtual 78	java/io/File:getParentFile	()Ljava/io/File;
    //   28: invokevirtual 82	java/io/File:mkdirs	()Z
    //   31: pop
    //   32: aload_2
    //   33: invokevirtual 85	java/io/File:createNewFile	()Z
    //   36: pop
    //   37: aload_2
    //   38: astore_1
    //   39: aload_1
    //   40: invokevirtual 89	java/io/File:length	()J
    //   43: invokestatic 95	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   46: invokevirtual 99	java/lang/Long:intValue	()I
    //   49: newarray byte
    //   51: astore 5
    //   53: new 101	java/io/FileInputStream
    //   56: dup
    //   57: aload_1
    //   58: invokespecial 104	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   61: astore 6
    //   63: aload 6
    //   65: aload 5
    //   67: invokevirtual 108	java/io/FileInputStream:read	([B)I
    //   70: pop
    //   71: aload 6
    //   73: invokevirtual 111	java/io/FileInputStream:close	()V
    //   76: new 33	java/lang/String
    //   79: dup
    //   80: aload 5
    //   82: ldc 113
    //   84: invokespecial 116	java/lang/String:<init>	([BLjava/lang/String;)V
    //   87: astore 8
    //   89: aload 8
    //   91: areturn
    //   92: astore 10
    //   94: aload 10
    //   96: invokevirtual 119	java/io/FileNotFoundException:printStackTrace	()V
    //   99: goto -23 -> 76
    //   102: astore_0
    //   103: getstatic 125	java/lang/System:out	Ljava/io/PrintStream;
    //   106: new 127	java/lang/StringBuilder
    //   109: dup
    //   110: invokespecial 128	java/lang/StringBuilder:<init>	()V
    //   113: ldc 130
    //   115: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: aload_0
    //   119: invokevirtual 137	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   122: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokevirtual 145	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   131: ldc 147
    //   133: areturn
    //   134: astore 7
    //   136: aload 7
    //   138: invokevirtual 148	java/io/IOException:printStackTrace	()V
    //   141: goto -65 -> 76
    //   144: astore 9
    //   146: getstatic 151	java/lang/System:err	Ljava/io/PrintStream;
    //   149: new 127	java/lang/StringBuilder
    //   152: dup
    //   153: invokespecial 128	java/lang/StringBuilder:<init>	()V
    //   156: ldc 153
    //   158: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: ldc 113
    //   163: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokevirtual 145	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   172: aload 9
    //   174: invokevirtual 154	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   177: aconst_null
    //   178: areturn
    //   179: astore_0
    //   180: goto -77 -> 103
    //
    // Exception table:
    //   from	to	target	type
    //   53	76	92	java/io/FileNotFoundException
    //   0	8	102	java/lang/Exception
    //   14	24	102	java/lang/Exception
    //   39	53	102	java/lang/Exception
    //   53	76	102	java/lang/Exception
    //   76	89	102	java/lang/Exception
    //   94	99	102	java/lang/Exception
    //   136	141	102	java/lang/Exception
    //   146	177	102	java/lang/Exception
    //   53	76	134	java/io/IOException
    //   76	89	144	java/io/UnsupportedEncodingException
    //   24	37	179	java/lang/Exception
  }

  // ERROR //
  public static org.w3c.dom.Document getWindowHierarchyXML()
  {
    // Byte code:
    //   0: invokestatic 162	com/android/utils/WindowHelper:getWindowHierarchy	()Ljava/lang/String;
    //   3: astore_0
    //   4: invokestatic 168	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   7: astore_1
    //   8: aload_1
    //   9: invokevirtual 172	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   12: astore_3
    //   13: aload_3
    //   14: new 174	org/xml/sax/InputSource
    //   17: dup
    //   18: new 176	java/io/ByteArrayInputStream
    //   21: dup
    //   22: aload_0
    //   23: ldc 178
    //   25: invokevirtual 182	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   28: invokespecial 185	java/io/ByteArrayInputStream:<init>	([B)V
    //   31: invokespecial 188	org/xml/sax/InputSource:<init>	(Ljava/io/InputStream;)V
    //   34: invokevirtual 194	javax/xml/parsers/DocumentBuilder:parse	(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    //   37: astore 6
    //   39: aload 6
    //   41: areturn
    //   42: astore 5
    //   44: aload 5
    //   46: invokevirtual 195	org/xml/sax/SAXException:printStackTrace	()V
    //   49: aconst_null
    //   50: areturn
    //   51: astore_2
    //   52: aload_2
    //   53: invokevirtual 196	javax/xml/parsers/ParserConfigurationException:printStackTrace	()V
    //   56: aconst_null
    //   57: areturn
    //   58: astore 4
    //   60: aload 4
    //   62: invokevirtual 148	java/io/IOException:printStackTrace	()V
    //   65: aconst_null
    //   66: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   13	39	42	org/xml/sax/SAXException
    //   8	13	51	javax/xml/parsers/ParserConfigurationException
    //   13	39	51	javax/xml/parsers/ParserConfigurationException
    //   44	49	51	javax/xml/parsers/ParserConfigurationException
    //   60	65	51	javax/xml/parsers/ParserConfigurationException
    //   13	39	58	java/io/IOException
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.WindowHelper
 * JD-Core Version:    0.6.2
 */