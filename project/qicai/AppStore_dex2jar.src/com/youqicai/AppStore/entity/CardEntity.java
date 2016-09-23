package com.youqicai.AppStore.entity;

import com.youqicai.AppStore.card.CardType;
import java.io.Serializable;
import java.util.List;

public class CardEntity
  implements Serializable
{
  private List<AppInfoEntity> appItemList;
  private BannerItem bannerItem;
  private String bannerUrl;
  private CardType cardType;
  private String dataUrl;
  private String description;
  private HotwordEntity hotwordEntity;
  private String iconUrl;
  private List<NavigationItem> navigationItemList;
  private AppInfoEntity singleAppItem;
  private String tagUrl;
  private String title;

  public List<AppInfoEntity> getAppItemList()
  {
    return this.appItemList;
  }

  public BannerItem getBannerItem()
  {
    return this.bannerItem;
  }

  public String getBannerUrl()
  {
    return this.bannerUrl;
  }

  public CardType getCardType()
  {
    return this.cardType;
  }

  public String getDataUrl()
  {
    return this.dataUrl;
  }

  public String getDescription()
  {
    return this.description;
  }

  public HotwordEntity getHotwordEntity()
  {
    return this.hotwordEntity;
  }

  public String getIconUrl()
  {
    return this.iconUrl;
  }

  public List<NavigationItem> getNavigationItemList()
  {
    return this.navigationItemList;
  }

  public AppInfoEntity getSingleAppItem()
  {
    return this.singleAppItem;
  }

  public String getTagUrl()
  {
    return this.tagUrl;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setAppItemList(List<AppInfoEntity> paramList)
  {
    this.appItemList = paramList;
  }

  public void setBannerItem(BannerItem paramBannerItem)
  {
    this.bannerItem = paramBannerItem;
  }

  public void setBannerUrl(String paramString)
  {
    this.bannerUrl = paramString;
  }

  public void setCardType(CardType paramCardType)
  {
    this.cardType = paramCardType;
  }

  public void setDataUrl(String paramString)
  {
    this.dataUrl = paramString;
  }

  public void setDescription(String paramString)
  {
    this.description = paramString;
  }

  public void setHotwordEntity(HotwordEntity paramHotwordEntity)
  {
    this.hotwordEntity = paramHotwordEntity;
  }

  public void setIconUrl(String paramString)
  {
    this.iconUrl = paramString;
  }

  public void setNavigationItemList(List<NavigationItem> paramList)
  {
    this.navigationItemList = paramList;
  }

  public void setSingleAppItem(AppInfoEntity paramAppInfoEntity)
  {
    this.singleAppItem = paramAppInfoEntity;
  }

  public void setTagUrl(String paramString)
  {
    this.tagUrl = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.entity.CardEntity
 * JD-Core Version:    0.6.2
 */