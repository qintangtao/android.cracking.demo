.class Lcom/market2345/datacenter/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field appName:Ljava/lang/String;

.field buildVersion:Ljava/lang/String;

.field deviceId:Ljava/lang/String;

.field imei:Ljava/lang/String;

.field isLogin:Z

.field private mContext:Landroid/content/Context;

.field macAddress:Ljava/lang/String;

.field model:Ljava/lang/String;

.field osVersion:I

.field packageName:Ljava/lang/String;

.field password:Ljava/lang/String;

.field sim:Ljava/lang/String;

.field userName:Ljava/lang/String;

.field versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readSettings()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method


# virtual methods
.method getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method getApplicationInfo()V
    .locals 6

    .prologue
    .line 142
    iget-object v4, p0, Lcom/market2345/datacenter/UserInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 145
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/market2345/datacenter/UserInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 146
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p0, Lcom/market2345/datacenter/UserInfo;->versionName:Ljava/lang/String;

    .line 147
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, p0, Lcom/market2345/datacenter/UserInfo;->versionCode:I

    .line 149
    iget-object v4, p0, Lcom/market2345/datacenter/UserInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 152
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/datacenter/UserInfo;->appName:Ljava/lang/String;

    .line 153
    iget-object v4, p0, Lcom/market2345/datacenter/UserInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/datacenter/UserInfo;->packageName:Ljava/lang/String;

    .line 155
    iget-object v4, p0, Lcom/market2345/datacenter/UserInfo;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 156
    .local v3, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/datacenter/UserInfo;->imei:Ljava/lang/String;

    .line 157
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/datacenter/UserInfo;->sim:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "telMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method getBuildVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->buildVersion:Ljava/lang/String;

    return-object v0
.end method

.method getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->imei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/market2345/datacenter/UserInfo;->getApplicationInfo()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method getOsVersion()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/market2345/datacenter/UserInfo;->osVersion:I

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/market2345/datacenter/UserInfo;->getApplicationInfo()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method getSim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->sim:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/market2345/datacenter/UserInfo;->getApplicationInfo()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->sim:Ljava/lang/String;

    return-object v0
.end method

.method getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/market2345/datacenter/UserInfo;->versionCode:I

    if-gtz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/market2345/datacenter/UserInfo;->getApplicationInfo()V

    .line 179
    :cond_0
    iget v0, p0, Lcom/market2345/datacenter/UserInfo;->versionCode:I

    return v0
.end method

.method getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/market2345/datacenter/UserInfo;->getApplicationInfo()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/market2345/datacenter/UserInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/market2345/datacenter/UserInfo;->mContext:Landroid/content/Context;

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, p0, Lcom/market2345/datacenter/UserInfo;->osVersion:I

    .line 74
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/market2345/datacenter/UserInfo;->buildVersion:Ljava/lang/String;

    .line 77
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/datacenter/UserInfo;->model:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method isLogin()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/market2345/datacenter/UserInfo;->isLogin:Z

    return v0
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/market2345/datacenter/UserInfo;->deviceId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method setLogin(Z)V
    .locals 1
    .param p1, "isLogin"    # Z

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/market2345/datacenter/UserInfo;->isLogin:Z

    if-ne v0, p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-boolean p1, p0, Lcom/market2345/datacenter/UserInfo;->isLogin:Z

    goto :goto_0
.end method

.method setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/market2345/datacenter/UserInfo;->password:Ljava/lang/String;

    .line 122
    return-void
.end method

.method setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/market2345/datacenter/UserInfo;->userName:Ljava/lang/String;

    .line 111
    return-void
.end method
