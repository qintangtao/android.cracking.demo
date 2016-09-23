.class public Lcom/market2345/account/model/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field public avatarURL:Ljava/lang/String;

.field public lastToken:Ljava/lang/String;

.field public passId:Ljava/lang/String;

.field public regType:Ljava/lang/String;

.field public uId:Ljava/lang/String;

.field public uName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "infoObj"    # Lorg/json/JSONObject;

    .prologue
    .line 17
    const-string v0, "uname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/model/UserInfo;->uName:Ljava/lang/String;

    .line 18
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/model/UserInfo;->uId:Ljava/lang/String;

    .line 19
    const-string v0, "passid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/model/UserInfo;->passId:Ljava/lang/String;

    .line 20
    const-string v0, "lastToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/model/UserInfo;->lastToken:Ljava/lang/String;

    .line 21
    const-string v0, "avatar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/model/UserInfo;->avatarURL:Ljava/lang/String;

    .line 22
    const-string v0, "regType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/model/UserInfo;->regType:Ljava/lang/String;

    .line 23
    return-void
.end method
