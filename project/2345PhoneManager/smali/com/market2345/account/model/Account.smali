.class public Lcom/market2345/account/model/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Lcom/market2345/account/model/AccountInter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/model/Account$AccountHolder;
    }
.end annotation


# static fields
.field public static final INFOKEY_ACCESSTOKEN:I = 0x3

.field private static final INFOKEY_ACCESSTOKEN_LOCAL:Ljava/lang/String; = "useraccesstoken2345"

.field public static final INFOKEY_AVARTARURL:I = 0x6

.field private static final INFOKEY_AVARTARURL_LOCAL:Ljava/lang/String; = "useravatarurl2345"

.field public static final INFOKEY_PASSID:I = 0x5

.field private static final INFOKEY_PASSID_LOCAL:Ljava/lang/String; = "userpassid2345"

.field public static final INFOKEY_PHONENUMBER:I = 0x4

.field private static final INFOKEY_PHONENUMBER_LOCAL:Ljava/lang/String; = "userphonenum2345"

.field public static final INFOKEY_REGTYPE:I = 0x7

.field private static final INFOKEY_REGTYPE_LOCAL:Ljava/lang/String; = "userregtype2345"

.field public static final INFOKEY_USERID:I = 0x2

.field private static final INFOKEY_USERID_LOCAL:Ljava/lang/String; = "userid2345"

.field public static final INFOKEY_USERNAME:I = 0x1

.field private static final INFOKEY_USERNAME_LOCAL:Ljava/lang/String; = "username2345"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getExistedInstance()Lcom/market2345/account/model/Account;
    .locals 1

    .prologue
    .line 37
    # getter for: Lcom/market2345/account/model/Account$AccountHolder;->account:Lcom/market2345/account/model/Account;
    invoke-static {}, Lcom/market2345/account/model/Account$AccountHolder;->access$000()Lcom/market2345/account/model/Account;

    move-result-object v0

    return-object v0
.end method

.method private getLocalKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "infoKey"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "localKey":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 108
    :goto_0
    return-object v0

    .line 87
    :pswitch_0
    const-string v0, "username2345"

    .line 88
    goto :goto_0

    .line 90
    :pswitch_1
    const-string v0, "userid2345"

    .line 91
    goto :goto_0

    .line 93
    :pswitch_2
    const-string v0, "useraccesstoken2345"

    .line 94
    goto :goto_0

    .line 96
    :pswitch_3
    const-string v0, "userphonenum2345"

    .line 97
    goto :goto_0

    .line 99
    :pswitch_4
    const-string v0, "userpassid2345"

    .line 100
    goto :goto_0

    .line 102
    :pswitch_5
    const-string v0, "useravatarurl2345"

    .line 103
    goto :goto_0

    .line 105
    :pswitch_6
    const-string v0, "userregtype2345"

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getUserInfo(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "localKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeUserInfo(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "localKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method private saveUserInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p1, "localKey"    # Ljava/lang/String;
    .param p2, "infoValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x0

    .line 124
    :goto_0
    return v1

    .line 122
    :cond_0
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private signOut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/market2345/account/model/Account;->getLocalKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/market2345/account/model/Account;->removeUserInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/market2345/account/model/Account;->getLocalKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/market2345/account/model/Account;->removeUserInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/market2345/account/model/Account;->getLocalKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/market2345/account/model/Account;->removeUserInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/market2345/account/model/Account;->getLocalKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/market2345/account/model/Account;->removeUserInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/market2345/account/model/Account;->getLocalKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/market2345/account/model/Account;->removeUserInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/market2345/account/model/Account;->getLocalKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/market2345/account/model/Account;->removeUserInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/market2345/account/model/Account;->getLocalKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/market2345/account/model/Account;->removeUserInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getUserInfo(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "infoKey"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/market2345/account/model/Account;->getLocalKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/market2345/account/model/Account;->getUserInfo(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLocalExisted(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setUserInfo(ILjava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "infoKey"    # I
    .param p2, "infoValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/market2345/account/model/Account;->getLocalKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/market2345/account/model/Account;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 61
    return-void
.end method

.method protected signOut(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/account/model/Account;->signOut(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    return-void
.end method
