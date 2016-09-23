.class final Lcom/market2345/autocheck/HttpStatistics$DeviceValue;
.super Ljava/lang/Object;
.source "HttpStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/autocheck/HttpStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceValue"
.end annotation


# instance fields
.field Cpu:Ljava/lang/String;

.field Imei:Ljava/lang/String;

.field Mobileoperator:Ljava/lang/String;

.field Systemversion:Ljava/lang/String;

.field desnity:Ljava/lang/String;

.field devicetype:Ljava/lang/String;

.field mac:Ljava/lang/String;

.field final synthetic this$0:Lcom/market2345/autocheck/HttpStatistics;

.field versioncode:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/market2345/autocheck/HttpStatistics;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->this$0:Lcom/market2345/autocheck/HttpStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->versioncode:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->devicetype:Ljava/lang/String;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Systemversion:Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Imei:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Mobileoperator:Ljava/lang/String;

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->Cpu:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->desnity:Ljava/lang/String;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;->mac:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/autocheck/HttpStatistics;Lcom/market2345/autocheck/HttpStatistics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/autocheck/HttpStatistics;
    .param p2, "x1"    # Lcom/market2345/autocheck/HttpStatistics$1;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/market2345/autocheck/HttpStatistics$DeviceValue;-><init>(Lcom/market2345/autocheck/HttpStatistics;)V

    return-void
.end method
