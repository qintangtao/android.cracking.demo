package com.youqicai.AppStore.parser;

import com.youqicai.AppStore.entity.Comment;
import com.youqicai.AppStore.entity.ResultCommentEntity;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class CommentParser extends JsonParser<ResultCommentEntity>
{
  public Object parseInBackgroud(Object paramObject)
  {
    ResultCommentEntity localResultCommentEntity = new ResultCommentEntity();
    try
    {
      JSONArray localJSONArray = new JSONObject(String.valueOf(paramObject)).getJSONArray("data");
      for (int i = 0; i < localJSONArray.length(); i++)
      {
        JSONObject localJSONObject = localJSONArray.getJSONObject(i);
        Comment localComment = new Comment();
        localComment.setAppId(getIntegerValue(localJSONObject, "appId"));
        localComment.setScore(getStringValue(localJSONObject, "score"));
        localComment.setComment(getStringValue(localJSONObject, "comment"));
        localComment.setHeadUrl(getStringValue(localJSONObject, "headUrl"));
        localComment.setNickName(getStringValue(localJSONObject, "nickName"));
        localComment.setCreateTime(getStringValue(localJSONObject, "createTime"));
        localResultCommentEntity.commentList.add(localComment);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return localResultCommentEntity;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.parser.CommentParser
 * JD-Core Version:    0.6.2
 */