.class public Lcom/market2345/autocheck/modle/PhoneData;
.super Ljava/lang/Object;
.source "PhoneData.java"


# instance fields
.field public IMEI:Ljava/lang/String;

.field public IMSI:Ljava/lang/String;

.field public MAC:Ljava/lang/String;

.field public SDKVERSION:I

.field public SIM:Ljava/lang/String;

.field public access:Ljava/lang/String;

.field private transient mContext:Landroid/content/Context;

.field public manufacture:Ljava/lang/String;

.field public osVersion:Ljava/lang/String;

.field public phonemodel:Ljava/lang/String;

.field public resolution:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/modle/PhoneData;->IMEI:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/modle/PhoneData;->MAC:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/modle/PhoneData;->IMSI:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/modle/PhoneData;->SIM:Ljava/lang/String;

    .line 51
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/market2345/autocheck/modle/PhoneData;->phonemodel:Ljava/lang/String;

    .line 53
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/market2345/autocheck/modle/PhoneData;->manufacture:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/market2345/autocheck/modle/PhoneData;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/market2345/autocheck/modle/PhoneData;->initData()V

    .line 64
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/market2345/autocheck/modle/PhoneData;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Lcom/market2345/autocheck/modle/PhoneData;

    invoke-direct {v0, p0}, Lcom/market2345/autocheck/modle/PhoneData;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/market2345/autocheck/modle/PhoneData;->initIMEI()V

    .line 74
    invoke-direct {p0}, Lcom/market2345/autocheck/modle/PhoneData;->initSIMs()V

    .line 75
    invoke-direct {p0}, Lcom/market2345/autocheck/modle/PhoneData;->initIMSI()V

    .line 76
    invoke-direct {p0}, Lcom/market2345/autocheck/modle/PhoneData;->initMAC()V

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->SDKVERSION:I

    .line 78
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->osVersion:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->resolution:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/market2345/common/util/ApplicationUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->access:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private initIMEI()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 88
    .local v0, "mTm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->IMEI:Ljava/lang/String;

    .line 89
    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initIMSI()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 100
    .local v0, "mTm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->IMSI:Ljava/lang/String;

    .line 101
    return-void

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initMAC()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 106
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->MAC:Ljava/lang/String;

    .line 107
    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initSIMs()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    .local v0, "mTm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->SIM:Ljava/lang/String;

    .line 95
    return-void

    .line 94
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneData [IMEI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->IMEI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MAC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->MAC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IMSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->IMSI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SIM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->SIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phonemodel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->phonemodel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufacture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/autocheck/modle/PhoneData;->manufacture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
