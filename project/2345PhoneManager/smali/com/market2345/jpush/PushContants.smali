.class public Lcom/market2345/jpush/PushContants;
.super Ljava/lang/Object;
.source "PushContants.java"


# static fields
.field public static final ACTION_TO_DETAIL:I = 0x1

.field public static final ACTION_TO_SPECIFIC:I = 0x3

.field public static final ACTION_TO_WEB:I = 0x2

.field public static final TEMPLATE_STYLE_BANNER:I = 0xc

.field public static final TEMPLATE_STYLE_ICON_TITLE_CONTENT:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePushInfoJsonString(Lcom/market2345/jpush/PushInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Lcom/market2345/jpush/PushInfo;

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "res":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 79
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 80
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/jpush/PushInfo;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :cond_0
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPushInfo(Landroid/content/Context;)Lcom/market2345/jpush/PushInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/market2345/util/SPUtil;->getLatestPushInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "strJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/jpush/PushContants;->parsePushInfo(Ljava/lang/String;)Lcom/market2345/jpush/PushInfo;

    move-result-object v1

    return-object v1
.end method

.method public static parsePushInfo(Ljava/lang/String;)Lcom/market2345/jpush/PushInfo;
    .locals 5
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v3, 0x0

    .line 64
    .local v3, "info":Lcom/market2345/jpush/PushInfo;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 66
    .local v2, "gson":Lcom/google/gson/Gson;
    const-class v4, Lcom/market2345/jpush/PushInfo;

    invoke-virtual {v2, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/market2345/jpush/PushInfo;

    move-object v3, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :cond_0
    :goto_0
    return-object v3

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0
.end method
