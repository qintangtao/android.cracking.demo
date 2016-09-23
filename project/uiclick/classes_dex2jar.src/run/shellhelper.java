package run;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;

public class shellhelper
{
  public static String ExecShell(String paramString)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      while (true)
      {
        BufferedReader localBufferedReader;
        try
        {
          localBufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(paramString).getInputStream()));
          String str2 = localBufferedReader.readLine();
          if (str2 != null)
          {
            localStringBuilder.append(str2);
            localStringBuilder.append('\n');
            continue;
          }
        }
        catch (IOException localIOException)
        {
          System.out.print("exec shell error\n");
          localIOException.printStackTrace();
          String str1 = localStringBuilder.toString();
          return str1;
        }
        localBufferedReader.close();
      }
    }
    finally
    {
    }
  }

  public static String ExecShell(String[] paramArrayOfString)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      while (true)
      {
        BufferedReader localBufferedReader;
        try
        {
          localBufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(paramArrayOfString).getInputStream()));
          String str2 = localBufferedReader.readLine();
          if (str2 != null)
          {
            localStringBuilder.append(str2);
            localStringBuilder.append('\n');
            continue;
          }
        }
        catch (IOException localIOException)
        {
          System.out.print("exec shell error\n");
          localIOException.printStackTrace();
          String str1 = localStringBuilder.toString();
          return str1;
        }
        localBufferedReader.close();
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\uiclick\classes_dex2jar.jar
 * Qualified Name:     run.shellhelper
 * JD-Core Version:    0.6.2
 */