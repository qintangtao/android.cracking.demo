.class public Lcom/market2345/home/HomeTabActivity$HttpResult;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Lcom/market2345/httpnew/ResponseCluster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/home/HomeTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpResult"
.end annotation


# instance fields
.field public code:I

.field public jso:Ljava/lang/String;

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1139
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity$HttpResult;->jso:Ljava/lang/String;

    .line 1140
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1142
    .local v2, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v3, Lcom/market2345/home/HomeTabActivity$HttpResult;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/home/HomeTabActivity$HttpResult;

    .line 1143
    .local v0, "callBack":Lcom/market2345/home/HomeTabActivity$HttpResult;
    iget v3, v0, Lcom/market2345/home/HomeTabActivity$HttpResult;->code:I

    iput v3, p0, Lcom/market2345/home/HomeTabActivity$HttpResult;->code:I

    .line 1144
    iget-object v3, v0, Lcom/market2345/home/HomeTabActivity$HttpResult;->msg:Ljava/lang/String;

    iput-object v3, p0, Lcom/market2345/home/HomeTabActivity$HttpResult;->msg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    .end local v0    # "callBack":Lcom/market2345/home/HomeTabActivity$HttpResult;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :cond_0
    :goto_0
    return-void

    .line 1146
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v1

    .line 1147
    .local v1, "e":Ljava/lang/Exception;
    const/16 v3, 0x929

    iput v3, p0, Lcom/market2345/home/HomeTabActivity$HttpResult;->code:I

    .line 1148
    const-string v3, "parse wrong"

    iput-object v3, p0, Lcom/market2345/home/HomeTabActivity$HttpResult;->msg:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 1133
    const/4 v0, 0x0

    return v0
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 1168
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1163
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .prologue
    .line 1159
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1155
    return-void
.end method
