package com.youqicai.manager;

public class CreateSQL
{
  static String getAppDownloadInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_DOWNLOADAPPINFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "id" + " TEXT ," + "name" + " TEXT ," + "description" + " TEXT ," + "icon" + " TEXT ," + "packageId" + " TEXT," + "totalBytes" + " TEXT ," + "downLoadCount" + " TEXT ," + "versionCode" + " INTEGER DEFAULT 0 ," + "version" + " TEXT ," + "packageName" + " TEXT ," + "downloadTime" + " TEXT ," + "appStatus" + " INTEGER DEFAULT 0 ," + "appflag" + " INTEGER DEFAULT 0 ," + "savedfilepath" + " TEXT ," + "updateTime" + " TEXT ," + "updateRecord" + " TEXT ," + "downUrl" + " TEXT ," + "appdownurl" + " TEXT ," + "md5" + " TEXT ," + "downloadProgress" + " REAL " + ")";
  }

  static String getAppWallInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_APPWALLINFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "id" + " TEXT ," + "name" + " TEXT ," + "description" + " TEXT ," + "icon" + " TEXT ," + "packageId" + " TEXT," + "totalBytes" + " TEXT ," + "downLoadCount" + " TEXT ," + "versionCode" + " INTEGER DEFAULT 0 ," + "version" + " TEXT ," + "packageName" + " TEXT ," + "downloadTime" + " TEXT ," + "appStatus" + " INTEGER DEFAULT 0 ," + "CategoryId" + " TEXT ," + "downloadProgress" + " INTEGER DEFAULT 0 ," + "goldCount" + " INTEGER DEFAULT 0 ," + "adId" + " TEXT " + ")";
  }

  static String getChildGameAppInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_CHILDGAMEAPPINFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "CategoryId" + " TEXT ," + "id" + " TEXT ," + "name" + " TEXT " + ")";
  }

  static String getChildSortAppInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_CHILDSORTAPPINFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "CategoryId" + " TEXT ," + "id" + " TEXT ," + "name" + " TEXT " + ")";
  }

  static String getCollectionInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_COLLECTION_INFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "collectionname" + " TEXT ," + "collectionid" + " TEXT ," + ")";
  }

  static String getGameAppInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_GAMEAPPINFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "id" + " TEXT ," + "icon" + " TEXT ," + "name" + " TEXT " + ")";
  }

  static String getJinpinAppInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_JINPINAPPINFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "id" + " TEXT ," + "name" + " TEXT ," + "description" + " TEXT ," + "icon" + " TEXT ," + "packageId" + " TEXT," + "totalBytes" + " TEXT ," + "downLoadCount" + " TEXT ," + "versionCode" + " INTEGER DEFAULT 0 ," + "version" + " TEXT ," + "packageName" + " TEXT ," + "downloadTime" + " TEXT ," + "appStatus" + " INTEGER DEFAULT 0 ," + "CategoryId" + " TEXT ," + "downloadProgress" + " INTEGER DEFAULT 0 ," + "votecount" + " INTEGER DEFAULT 0 " + ")";
  }

  static String getRoundImgInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_ROUNDdIMGINFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "id" + " TEXT ," + "ImgUrl" + " TEXT ," + "linkType" + " INTEGER DEFAULT 0 ," + "appInfoOrTopic" + " TEXT ," + "link" + " TEXT " + ")";
  }

  static String getSortAppInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_SORTAPPINFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "id" + " TEXT ," + "icon" + " TEXT ," + "name" + " TEXT " + ")";
  }

  static String getSpecialInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_SPECIALAPKINFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "id" + " TEXT ," + "name" + " TEXT ," + "description" + " TEXT ," + "topicImg" + " TEXT " + ")";
  }

  static String getUpdateAppSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_UPDATEINFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "id" + " TEXT ," + "packageName" + " TEXT ," + "appflag" + " INTEGER DEFAULT 0 " + ")";
  }

  static String getUpgradeAppsInfoSQL()
  {
    return "CREATE TABLE IF NOT EXISTS " + "T_UPGRADE_APP_INFO" + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + "id" + " TEXT ," + "name" + " TEXT ," + "description" + " TEXT ," + "icon" + " TEXT ," + "packageId" + " TEXT," + "totalBytes" + " TEXT ," + "downLoadCount" + " TEXT ," + "versionCode" + " INTEGER DEFAULT 0 ," + "version" + " TEXT ," + "packageName" + " TEXT ," + "downloadTime" + " TEXT ," + "savedfilepath" + " TEXT ," + "appdownurl" + " TEXT ," + "appStatus" + " INTEGER DEFAULT 0 ," + "downloadProgress" + " INTEGER DEFAULT 0, " + "appflag" + " INTEGER DEFAULT 0 " + ")";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.manager.CreateSQL
 * JD-Core Version:    0.6.2
 */