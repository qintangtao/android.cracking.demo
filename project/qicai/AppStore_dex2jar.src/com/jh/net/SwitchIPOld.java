package com.jh.net;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.jh.common.app.application.AppSystem;
import com.jh.net.bean.ResponseDTO;
import com.jh.net.bean.ResultDTO;
import com.jh.net.bean.UrlDTO;
import com.jh.util.GsonUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public class SwitchIPOld
{
  public static HashMap<String, List<UrlDTO>> codes = new HashMap();

  private boolean isNewRecode(String paramString)
  {
    return false;
  }

  private void removeAllFailUrl()
  {
    int i = 0;
    if (i >= codes.size())
      return;
    Iterator localIterator = ((List)codes.get(Integer.valueOf(i))).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        i++;
        break;
      }
      UrlDTO localUrlDTO = (UrlDTO)localIterator.next();
      if (localUrlDTO.getStatus() == 1)
        ((List)codes.get(Integer.valueOf(i))).remove(localUrlDTO);
    }
  }

  private void removeCode(String paramString)
  {
    if (((List)codes.get(paramString)).size() == 0)
      codes.remove(paramString);
  }

  private int setStatus(List<ResponseDTO> paramList, IOException paramIOException)
  {
    int i = 0;
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (i / 5.0D <= 0.2D)
          break;
        return 1;
      }
      if ((((ResponseDTO)localIterator.next()).getResponseCode() >= 500) || (paramIOException != null))
        i++;
    }
    return 0;
  }

  protected void addRequestRecord(String paramString, HttpResponse paramHttpResponse, IOException paramIOException)
  {
    if (paramString.startsWith("http://"));
    for (String str = paramString.substring(paramString.indexOf("/", 7)); !codes.containsKey(str); str = paramString.substring(paramString.indexOf("/", 8)))
    {
      ArrayList localArrayList1 = new ArrayList();
      UrlDTO localUrlDTO1 = new UrlDTO();
      localUrlDTO1.setUrl(paramString);
      ArrayList localArrayList2 = new ArrayList();
      ResponseDTO localResponseDTO1 = new ResponseDTO();
      localResponseDTO1.setResponseCode(paramHttpResponse.getStatusLine().getStatusCode());
      localArrayList2.add(localResponseDTO1);
      localUrlDTO1.setReses(localArrayList2);
      localUrlDTO1.setStatus(setStatus(localArrayList2, paramIOException));
      localArrayList1.add(localUrlDTO1);
      codes.put(str, localArrayList1);
      twentyRecoder();
      return;
    }
    List localList1 = (List)codes.get(str);
    int i = 0;
    label180: if (i < localList1.size())
    {
      if (!((UrlDTO)localList1.get(i)).getUrl().equals(paramString))
        break label326;
      UrlDTO localUrlDTO3 = (UrlDTO)localList1.get(i);
      List localList2 = localUrlDTO3.getReses();
      ResponseDTO localResponseDTO3 = new ResponseDTO();
      localResponseDTO3.setResponseCode(paramHttpResponse.getStatusLine().getStatusCode());
      localList2.add(localResponseDTO3);
      localUrlDTO3.setReses(localList2);
      localUrlDTO3.setStatus(setStatus(localList2, paramIOException));
      localList1.remove(localUrlDTO3);
      localList1.add(localUrlDTO3);
    }
    while (true)
    {
      codes.put(str, localList1);
      i++;
      break label180;
      break;
      label326: UrlDTO localUrlDTO2 = new UrlDTO();
      localUrlDTO2.setUrl(paramString);
      ArrayList localArrayList3 = new ArrayList();
      ResponseDTO localResponseDTO2 = new ResponseDTO();
      localResponseDTO2.setResponseCode(paramHttpResponse.getStatusLine().getStatusCode());
      localArrayList3.add(localResponseDTO2);
      localUrlDTO2.setReses(localArrayList3);
      localUrlDTO2.setStatus(setStatus(localArrayList3, paramIOException));
      localList1.add(localUrlDTO2);
    }
  }

  @SuppressLint({"NewApi"})
  public void initSPFile(List<ResultDTO> paramList)
  {
    Context localContext = AppSystem.getInstance().getContext();
    AppSystem.getInstance().getContext();
    SharedPreferences.Editor localEditor = localContext.getSharedPreferences("serverIP", 0).edit();
    HashSet localHashSet = new HashSet();
    new GsonUtil();
    String str = GsonUtil.toJson(paramList, ResultDTO.class);
    Log.i("gson", str + "-----");
    Collections.addAll(localHashSet, new String[] { str });
    localEditor.putStringSet("setResultDTO", localHashSet);
    localEditor.commit();
  }

  public void twentyRecoder()
  {
    LinkedList localLinkedList = new LinkedList();
    if (localLinkedList.size() > 19)
      localLinkedList.poll();
    localLinkedList.offer(codes);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.SwitchIPOld
 * JD-Core Version:    0.6.2
 */