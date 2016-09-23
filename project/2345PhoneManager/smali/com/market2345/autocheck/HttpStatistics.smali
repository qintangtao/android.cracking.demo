.class public Lcom/market2345/autocheck/HttpStatistics;
.super Ljava/lang/Object;
.source "HttpStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/autocheck/HttpStatistics$1;,
        Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;,
        Lcom/market2345/autocheck/HttpStatistics$DeviceValue;
    }
.end annotation


# static fields
.field public static final ERROR:I = 0x194

.field public static final SENDED:I = 0xc9

.field public static final STATISTICSURL:Ljava/lang/String; = "http://apps.2345.net/server/mapi/1_3/set_statistic.php"

.field public static final SUCCESS:I = 0xc8


# instance fields
.field private callBack:Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private getCpuInfo()Ljava/lang/String;
    .locals 9

    .prologue
    .line 169
    const-string v5, "/proc/cpuinfo"

    .line 170
    .local v5, "str1":Ljava/lang/String;
    const-string v6, ""

    .line 171
    .local v6, "str2":Ljava/lang/String;
    const-string v1, ""

    .line 175
    .local v1, "cpuInfo":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v4, v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 177
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 178
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    array-length v7, v0

    if-ge v3, v7, :cond_0

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "i":I
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    :goto_1
    return-object v1

    .line 191
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const-string v0, ""

    .line 160
    .local v0, "result":Ljava/lang/String;
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 161
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 162
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method private initValue(Landroid/content/Context;)Lcom/market2345/autocheck/HttpStatistics$DeviceValue;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    new-instance v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;-><init>(Lcom/market2345/autocheck/HttpStatistics;Lcom/market2345/autocheck/HttpStatistics$1;)V

    .line 90
    .local v2, "value":Lcom/market2345/autocheck/HttpStatistics$DeviceValue;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/market2345/common/util/ApplicationUtils;->getVersion(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->versioncode:Ljava/lang/String;

    .line 91
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->devicetype:Ljava/lang/String;

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/market2345/common/util/ApplicationUtils;->getSdkVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Systemversion:Ljava/lang/String;

    .line 93
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    .local v0, "mTm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Imei:Ljava/lang/String;

    .line 95
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "simOperator":Ljava/lang/String;
    const-string v4, "46000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    const-string v4, "\u4e2d\u56fd\u79fb\u52a8"

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Mobileoperator:Ljava/lang/String;

    .line 112
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/market2345/autocheck/HttpStatistics;->getCpuInfo()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Cpu:Ljava/lang/String;

    .line 113
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 114
    .local v3, "winManager":Landroid/view/WindowManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->desnity:Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1}, Lcom/market2345/autocheck/HttpStatistics;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->mac:Ljava/lang/String;

    .line 116
    return-object v2

    .line 100
    .end local v3    # "winManager":Landroid/view/WindowManager;
    :cond_1
    const-string v4, "46002"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const-string v4, "\u4e2d\u56fd\u79fb\u52a8"

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Mobileoperator:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_2
    const-string v4, "46001"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    const-string v4, "\u4e2d\u56fd\u8054\u901a"

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Mobileoperator:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_3
    const-string v4, "46003"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    const-string v4, "\u4e2d\u56fd\u7535\u4fe1"

    iput-object v4, v2, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Mobileoperator:Ljava/lang/String;

    goto :goto_0
.end method

.method private makeParams(Lcom/market2345/autocheck/HttpStatistics$DeviceValue;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "value"    # Lcom/market2345/autocheck/HttpStatistics$DeviceValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/autocheck/HttpStatistics$DeviceValue;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "versioncode"

    iget-object v3, p1, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->versioncode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "devicetype"

    iget-object v3, p1, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->devicetype:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "systemversion"

    iget-object v3, p1, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Systemversion:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "imei"

    iget-object v3, p1, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Imei:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "mobileoperator"

    iget-object v3, p1, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Mobileoperator:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cpu"

    iget-object v3, p1, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Cpu:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "desnity"

    iget-object v3, p1, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->desnity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "mac"

    iget-object v3, p1, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->mac:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v0    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCallBack()Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/market2345/autocheck/HttpStatistics;->callBack:Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;

    return-object v0
.end method

.method public requestRUL(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "http://apps.2345.net/server/mapi/1_3/set_statistic.php"

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p0, p1}, Lcom/market2345/autocheck/HttpStatistics;->initValue(Landroid/content/Context;)Lcom/market2345/autocheck/HttpStatistics$DeviceValue;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/market2345/autocheck/HttpStatistics;->makeParams(Lcom/market2345/autocheck/HttpStatistics$DeviceValue;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 45
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 47
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 48
    .local v3, "statusCode":I
    iget-object v4, p0, Lcom/market2345/autocheck/HttpStatistics;->callBack:Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;

    if-eqz v4, :cond_1

    .line 50
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_2

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/market2345/autocheck/HttpStatistics;->callBack:Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;

    invoke-interface {v4}, Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;->onSuccess()V

    .line 66
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "statusCode":I
    :cond_1
    :goto_0
    return-void

    .line 56
    .restart local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v3    # "statusCode":I
    :cond_2
    iget-object v4, p0, Lcom/market2345/autocheck/HttpStatistics;->callBack:Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;

    invoke-interface {v4}, Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;->onError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "statusCode":I
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallBack(Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/market2345/autocheck/HttpStatistics;->callBack:Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;

    .line 127
    return-void
.end method
