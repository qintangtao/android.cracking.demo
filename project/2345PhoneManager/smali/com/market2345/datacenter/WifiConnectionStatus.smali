.class public Lcom/market2345/datacenter/WifiConnectionStatus;
.super Ljava/lang/Object;
.source "WifiConnectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/datacenter/WifiConnectionStatus$ServiceCreatedReceiver;
    }
.end annotation


# static fields
.field public static final CONN_COMMAND_KEY:Ljava/lang/String; = "conn_command_key"

.field public static final CONN_NOTIFY_KEY:Ljava/lang/String; = "conn_notify_key"

.field public static final CONN_STATUS_KEY:Ljava/lang/String; = "conn_status_key"

.field public static final DISCONNECTED:I = 0x0

.field public static final TAG:Ljava/lang/String;

.field public static final USB_CONNECTED:I = 0x2

.field public static final WIFI_CONNECTED:I = 0x1


# instance fields
.field private checkBindStstus:Lcom/phonemanager2345/zhushou/CheckBindStstus;

.field private connStatus:I

.field private lastCheckTime:J

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private paramDao:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/market2345/datacenter/WifiConnectionStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/datacenter/WifiConnectionStatus;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/datacenter/WifiConnectionStatus;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/datacenter/WifiConnectionStatus;)Lcom/phonemanager2345/zhushou/CheckBindStstus;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/datacenter/WifiConnectionStatus;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->checkBindStstus:Lcom/phonemanager2345/zhushou/CheckBindStstus;

    return-object v0
.end method

.method static synthetic access$102(Lcom/market2345/datacenter/WifiConnectionStatus;Lcom/phonemanager2345/zhushou/CheckBindStstus;)Lcom/phonemanager2345/zhushou/CheckBindStstus;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/datacenter/WifiConnectionStatus;
    .param p1, "x1"    # Lcom/phonemanager2345/zhushou/CheckBindStstus;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->checkBindStstus:Lcom/phonemanager2345/zhushou/CheckBindStstus;

    return-object p1
.end method

.method static synthetic access$200(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/datacenter/WifiConnectionStatus;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/datacenter/WifiConnectionStatus;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->paramDao:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public getCheckBindStstus()Lcom/phonemanager2345/zhushou/CheckBindStstus;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->checkBindStstus:Lcom/phonemanager2345/zhushou/CheckBindStstus;

    return-object v0
.end method

.method public getConnStatus()I
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->lastCheckTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->connStatus:I

    goto :goto_0
.end method

.method init(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p2, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/market2345/datacenter/WifiConnectionStatus$1;

    invoke-direct {v0, p0}, Lcom/market2345/datacenter/WifiConnectionStatus$1;-><init>(Lcom/market2345/datacenter/WifiConnectionStatus;)V

    iput-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->paramDao:Landroid/content/ServiceConnection;

    .line 97
    new-instance v0, Lcom/market2345/datacenter/WifiConnectionStatus$ServiceCreatedReceiver;

    invoke-direct {v0, p0}, Lcom/market2345/datacenter/WifiConnectionStatus$ServiceCreatedReceiver;-><init>(Lcom/market2345/datacenter/WifiConnectionStatus;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.phonemanager2345.zhushou.connectionservice.created"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method public setConnStatus(I)V
    .locals 2
    .param p1, "connStatus"    # I

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->lastCheckTime:J

    .line 123
    iput p1, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->connStatus:I

    .line 124
    return-void
.end method

.method public ungesiterService()V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/market2345/datacenter/WifiConnectionStatus;->paramDao:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
