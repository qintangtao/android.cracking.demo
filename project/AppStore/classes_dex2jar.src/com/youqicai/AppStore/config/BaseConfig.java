package com.youqicai.AppStore.config;

public class BaseConfig
{
  public static final String ACTION_START_TRACK = "com.dingkai.action.start_track";
  public static final String ACTION_STOP_TRACK = "com.dingkai.action.stop_track";
  public static final String ACTION_SUBMIT_DATA = "com.dingkai.action.submit_data";
  public static final String ADD_COMMENT = "http://mapp.youqicai.com/api?action=addcomment";
  public static final String AKEY_APP = "http://mapp.youqicai.com/api?action=akeyapp";
  public static final String APP_DETAIL = "http://mapp.youqicai.com/api?action=detail&";
  public static final String APP_UPDATE = "http://mapp.youqicai.com/api?action=checkupdate";
  private static final String BASE_SERVER_URL = "http://mapp.youqicai.com/api";
  public static final String BILL_BOARD_URL = "http://mapp.youqicai.com/api?action=ranklist&";
  public static final String CATEGORY_URL = "http://mapp.youqicai.com/api?action=category&";
  public static final String COMMENT_LIST_URL = "http://mapp.youqicai.com/api?action=commentlist&";
  public static final String DISCOVERY_URL = "http://mapp.youqicai.com/api?action=discovery&";
  public static final String EDIT_PROFILE = "http://mapp.youqicai.com/api?action=editprofile";
  public static final String FEEDBACK_URL = "http://mapp.youqicai.com/api?action=feedback";
  public static final String FIND_PWD = "http://mapp.youqicai.com/api?action=findpwd&";
  public static final String GAME_LIST_URL = "http://mapp.youqicai.com/api?action=gamelist&";
  public static final int INSTALL_MYSELF = 2;
  public static final int INSTALL_OTHER = 0;
  public static final String LOGIN_URL = "http://mapp.youqicai.com/api?action=login&";
  public static final String REG_URL = "http://mapp.youqicai.com/api?action=register&";
  public static final int RT_DOWNLOAD = 4;
  public static final int RT_INSTALL = 1;
  public static final int RT_UNINSTALL = 3;
  public static final int RT_USE = 2;
  public static final String SEARCH_HOTWORD = "http://mapp.youqicai.com/api?action=hotword";
  public static final String SEARCH_KEY_WORD = "http://mapp.youqicai.com/api?action=suggest&";
  public static final String SEARCH_RESULT = "http://mapp.youqicai.com/api?action=search&";
  public static final String SELF_UPDATE = "http://mapp.youqicai.com/api?action=update&";
  public static final String SMART_RECOMMEND_URL = "http://mapp.youqicai.com/api?action=smartrecommend&";
  public static final String SOFT_LIST_URL = "http://mapp.youqicai.com/api?action=softlist&";
  public static final String VERSION = "42";

  public static class MsgType
  {
    public static final int MSG_TYPE_ACTIVE = 2;
    public static final int MSG_TYPE_DEVICE = 1;
    public static final int MSG_TYPE_RECORD_DATA = 3;
  }

  public static class Target
  {
    public static final String CATEGORY = "category";
    public static final String CATEGORYLIST = "categorylist";
    public static final String DETAIL = "detail";
    public static final String GENERAL = "general";
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.config.BaseConfig
 * JD-Core Version:    0.6.2
 */