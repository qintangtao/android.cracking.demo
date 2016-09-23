package com.mycheering.data;

import java.util.Map;

public class EventObject
{
  private int count = 1;
  private String eventId;
  private Map<String, String> parameters;
  private double sum = 0.0D;

  public EventObject()
  {
  }

  public EventObject(String paramString, int paramInt, double paramDouble, Map<String, String> paramMap)
  {
    this.eventId = paramString;
    this.sum = paramDouble;
    this.count = paramInt;
    this.parameters = paramMap;
  }

  public int getCount()
  {
    return this.count;
  }

  public String getEventId()
  {
    return this.eventId;
  }

  public Map<String, String> getParameters()
  {
    return this.parameters;
  }

  public double getSum()
  {
    return this.sum;
  }

  public void setCount(int paramInt)
  {
    this.count = paramInt;
  }

  public void setEventId(String paramString)
  {
    this.eventId = paramString;
  }

  public void setParameters(Map<String, String> paramMap)
  {
    this.parameters = paramMap;
  }

  public void setSum(double paramDouble)
  {
    this.sum = paramDouble;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.mycheering.data.EventObject
 * JD-Core Version:    0.6.2
 */