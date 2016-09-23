package com.jh.app.util;

import android.os.AsyncTask;
import com.jh.exception.JHException;
import java.util.HashMap;

@Deprecated
public class BaseExcutor extends AsyncTask<Void, Void, Void>
{
  private final String ERROR = "ERROR";
  private final String ERRORCODE = "ERRORCODE";
  private final String RESULTFLAG = "RESULT";
  private HashMap result;
  private BaseTask task;

  public BaseExcutor(BaseTask paramBaseTask)
  {
    this.task = paramBaseTask;
  }

  private void setError(JHException paramJHException)
  {
    this.result.put("ERROR", paramJHException);
  }

  private void setResult(boolean paramBoolean)
  {
    this.result.put("RESULT", Boolean.valueOf(paramBoolean));
  }

  protected Void doInBackground(Void[] paramArrayOfVoid)
  {
    if (this.result == null)
      this.result = new HashMap();
    try
    {
      this.task.doTask();
      setResult(true);
      return null;
    }
    catch (JHException localJHException)
    {
      while (true)
      {
        setResult(false);
        setError(localJHException);
      }
    }
  }

  public String getError()
  {
    Exception localException = getException();
    if (localException != null)
      return localException.getMessage();
    return null;
  }

  public Exception getException()
  {
    if (this.result.containsKey("ERROR"))
      return (Exception)this.result.get("ERROR");
    return null;
  }

  public boolean getResult()
  {
    if (this.result.containsKey("RESULT"))
      return ((Boolean)this.result.get("RESULT")).booleanValue();
    return false;
  }

  protected void onPostExecute(Void paramVoid)
  {
    super.onPostExecute(paramVoid);
    if (getResult())
    {
      this.task.success();
      return;
    }
    this.task.fail(getError());
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
    this.task.prepareTask(null);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.app.util.BaseExcutor
 * JD-Core Version:    0.6.2
 */