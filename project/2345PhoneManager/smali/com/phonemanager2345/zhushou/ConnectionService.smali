.class public Lcom/phonemanager2345/zhushou/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;,
        Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;,
        Lcom/phonemanager2345/zhushou/ConnectionService$AppReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_PERSISTENT:Ljava/lang/String; = "com.phonemanager2345.zhushou.persistent"

.field public static final ACTION_CONNECTION_SERVICE:Ljava/lang/String; = "com.phonemanager2345.zhushou.connect.pc"

.field public static final ACTION_CONNECTION_SERVICE_CREATED:Ljava/lang/String; = "com.phonemanager2345.zhushou.connectionservice.created"

.field public static final ACTION_CONNECTION_STATUS:Ljava/lang/String; = "com.phonemanager2345.zhushou.connection.status"

.field public static final KEY_CONNECT_SEND:Ljava/lang/String; = "com.phonemanager2345.zhushou.url.send"

.field public static final KEY_CONNECT_URL:Ljava/lang/String; = "com.phonemanager2345.zhushou.url.key"

.field public static final SERVER_PORT:I = 0x2c68

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private active:Z

.field private address:Landroid/net/LocalSocketAddress;

.field private appReceiver:Lcom/phonemanager2345/zhushou/ConnectionService$AppReceiver;

.field private bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;

.field public ioThreadFlag:Z

.field public mainThreadFlag:Z

.field private monitorReceiver:Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;

.field private observer:Lcom/phonemanager2345/zhushou/BindstatusChanged;

.field private serverSocket:Ljava/net/ServerSocket;

.field private socket:Landroid/net/LocalSocket;

.field private stub:Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->mainThreadFlag:Z

    .line 47
    iput-boolean v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->ioThreadFlag:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->serverSocket:Ljava/net/ServerSocket;

    .line 53
    new-instance v0, Lcom/phonemanager2345/zhushou/BatteryInfo;

    invoke-direct {v0}, Lcom/phonemanager2345/zhushou/BatteryInfo;-><init>()V

    iput-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;

    .line 55
    new-instance v0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;

    invoke-direct {v0, p0}, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;-><init>(Lcom/phonemanager2345/zhushou/ConnectionService;)V

    iput-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->monitorReceiver:Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;

    .line 57
    new-instance v0, Lcom/phonemanager2345/zhushou/ConnectionService$AppReceiver;

    invoke-direct {v0, p0}, Lcom/phonemanager2345/zhushou/ConnectionService$AppReceiver;-><init>(Lcom/phonemanager2345/zhushou/ConnectionService;)V

    iput-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->appReceiver:Lcom/phonemanager2345/zhushou/ConnectionService$AppReceiver;

    .line 445
    new-instance v0, Lcom/phonemanager2345/zhushou/ConnectionService$4;

    invoke-direct {v0, p0}, Lcom/phonemanager2345/zhushou/ConnectionService$4;-><init>(Lcom/phonemanager2345/zhushou/ConnectionService;)V

    iput-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->stub:Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/phonemanager2345/zhushou/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/phonemanager2345/zhushou/ConnectionService;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/phonemanager2345/zhushou/ConnectionService;->doListen()V

    return-void
.end method

.method static synthetic access$100(Lcom/phonemanager2345/zhushou/ConnectionService;)Lcom/phonemanager2345/zhushou/BatteryInfo;
    .locals 1
    .param p0, "x0"    # Lcom/phonemanager2345/zhushou/ConnectionService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phonemanager2345/zhushou/ConnectionService;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/phonemanager2345/zhushou/ConnectionService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$202(Lcom/phonemanager2345/zhushou/ConnectionService;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcom/phonemanager2345/zhushou/ConnectionService;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/phonemanager2345/zhushou/ConnectionService;)Landroid/net/LocalSocketAddress;
    .locals 1
    .param p0, "x0"    # Lcom/phonemanager2345/zhushou/ConnectionService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->address:Landroid/net/LocalSocketAddress;

    return-object v0
.end method

.method static synthetic access$302(Lcom/phonemanager2345/zhushou/ConnectionService;Landroid/net/LocalSocketAddress;)Landroid/net/LocalSocketAddress;
    .locals 0
    .param p0, "x0"    # Lcom/phonemanager2345/zhushou/ConnectionService;
    .param p1, "x1"    # Landroid/net/LocalSocketAddress;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->address:Landroid/net/LocalSocketAddress;

    return-object p1
.end method

.method static synthetic access$400(Lcom/phonemanager2345/zhushou/ConnectionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phonemanager2345/zhushou/ConnectionService;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->active:Z

    return v0
.end method

.method static synthetic access$500(Lcom/phonemanager2345/zhushou/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/phonemanager2345/zhushou/ConnectionService;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/phonemanager2345/zhushou/ConnectionService;->closeSocket()V

    return-void
.end method

.method static synthetic access$602(Lcom/phonemanager2345/zhushou/ConnectionService;Lcom/phonemanager2345/zhushou/BindstatusChanged;)Lcom/phonemanager2345/zhushou/BindstatusChanged;
    .locals 0
    .param p0, "x0"    # Lcom/phonemanager2345/zhushou/ConnectionService;
    .param p1, "x1"    # Lcom/phonemanager2345/zhushou/BindstatusChanged;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->observer:Lcom/phonemanager2345/zhushou/BindstatusChanged;

    return-object p1
.end method

.method private closeSocket()V
    .locals 3

    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 361
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 369
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 363
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    :try_start_3
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 369
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 371
    :catch_2
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 366
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 367
    :try_start_4
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 369
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 373
    :cond_2
    :goto_1
    throw v1

    .line 371
    :catch_3
    move-exception v0

    .line 372
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private doListen()V
    .locals 5

    .prologue
    .line 160
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->serverSocket:Ljava/net/ServerSocket;

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/phonemanager2345/zhushou/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->getCanMovedFeild(Landroid/content/Context;)V

    .line 164
    new-instance v2, Ljava/net/ServerSocket;

    const/16 v3, 0x2c68

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->serverSocket:Ljava/net/ServerSocket;

    .line 165
    const-class v2, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>mainThreadFlag=<<<<<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->mainThreadFlag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    :goto_0
    iget-boolean v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->mainThreadFlag:Z

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 169
    .local v0, "client":Ljava/net/Socket;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 170
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 171
    new-instance v2, Lcom/phonemanager2345/zhushou/ThreadIO;

    iget-object v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;

    invoke-direct {v2, p0, v0, v3}, Lcom/phonemanager2345/zhushou/ThreadIO;-><init>(Landroid/content/Context;Ljava/net/Socket;Lcom/phonemanager2345/zhushou/BatteryInfo;)V

    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ThreadUtils;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v0    # "client":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    const-class v2, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doListen Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private registerReceivers()V
    .locals 3

    .prologue
    .line 212
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .local v1, "monitorFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v2, "com.market2345.serverprocess.created"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->monitorReceiver:Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/phonemanager2345/zhushou/ConnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    .local v0, "appFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->appReceiver:Lcom/phonemanager2345/zhushou/ConnectionService$AppReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/phonemanager2345/zhushou/ConnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->monitorReceiver:Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;

    invoke-virtual {p0, v0}, Lcom/phonemanager2345/zhushou/ConnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    iget-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->appReceiver:Lcom/phonemanager2345/zhushou/ConnectionService$AppReceiver;

    invoke-virtual {p0, v0}, Lcom/phonemanager2345/zhushou/ConnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    return-void
.end method


# virtual methods
.method public execCommand(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    :try_start_0
    sget-object v5, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    const-string v6, "[SHELL] execCommand begin"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "sh"

    aput-object v8, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 382
    .local v2, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 383
    .local v4, "writer":Ljava/io/BufferedWriter;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 385
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v5, Lcom/phonemanager2345/zhushou/ConnectionService$3;

    invoke-direct {v5, p0, v3, v4, v2}, Lcom/phonemanager2345/zhushou/ConnectionService$3;-><init>(Lcom/phonemanager2345/zhushou/ConnectionService;Ljava/io/BufferedReader;Ljava/io/BufferedWriter;Ljava/lang/Process;)V

    invoke-virtual {v5}, Lcom/phonemanager2345/zhushou/ConnectionService$3;->start()V

    .line 420
    const-string v5, "echo shell start ~~\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "export CLASSPATH="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 424
    const-string v5, "echo $CLASSPATH\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exec app_process /data/app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/market2345/ServerProcess$ServerThread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "cmd":Ljava/lang/String;
    const-string v5, "$"

    const-string v6, "\\$"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 430
    sget-object v5, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SHELL] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 433
    const-string v5, "echo shell end ~~\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 435
    const-string v5, "echo exit\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-class v5, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execCommand:2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->stub:Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.phonemanager2345.zhushou.connectionservice.created"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/phonemanager2345/zhushou/ConnectionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    invoke-direct {p0}, Lcom/phonemanager2345/zhushou/ConnectionService;->registerReceivers()V

    .line 72
    const-class v1, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/phonemanager2345/zhushou/ConnectionService$1;

    invoke-direct {v1, p0}, Lcom/phonemanager2345/zhushou/ConnectionService$1;-><init>(Lcom/phonemanager2345/zhushou/ConnectionService;)V

    invoke-virtual {v1}, Lcom/phonemanager2345/zhushou/ConnectionService$1;->start()V

    .line 88
    invoke-virtual {p0, p0}, Lcom/phonemanager2345/zhushou/ConnectionService;->execCommand(Landroid/content/Context;)V

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_0

    .line 90
    const/4 v1, 0x0

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->startForeground(ILandroid/app/Notification;)V

    .line 93
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "2345\u624b\u673a\u52a9\u624b"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 98
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/market2345/autocheck/AutoResidentService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Lcom/phonemanager2345/zhushou/ConnectionService$2;

    invoke-direct {v2, p0}, Lcom/phonemanager2345/zhushou/ConnectionService$2;-><init>(Lcom/phonemanager2345/zhushou/ConnectionService;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/phonemanager2345/zhushou/ConnectionService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 182
    const-class v1, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    invoke-direct {p0}, Lcom/phonemanager2345/zhushou/ConnectionService;->unregisterReceiver()V

    .line 187
    iput-boolean v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->mainThreadFlag:Z

    .line 188
    iput-boolean v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->ioThreadFlag:Z

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->active:Z

    .line 199
    invoke-direct {p0}, Lcom/phonemanager2345/zhushou/ConnectionService;->closeSocket()V

    .line 201
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/16 v9, 0x26

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "action":Ljava/lang/String;
    const-string v7, "com.phonemanager2345.zhushou.connect.pc"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 119
    const-string v7, "com.phonemanager2345.zhushou.url.key"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "result":Ljava/lang/String;
    const-string v7, "com.phonemanager2345.zhushou.url.send"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 121
    .local v6, "send":Z
    invoke-static {v5, v6}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sendDeviceInfoWifi(Ljava/lang/String;Z)V

    .line 156
    .end local v0    # "action":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "send":Z
    :cond_0
    :goto_0
    return v10

    .line 122
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v7, "com.phonemanager2345.zhushou.connection.status"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 123
    const-string v7, "conn_status_key"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 124
    .local v2, "connStatus":I
    const-string v7, "conn_notify_key"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 125
    .local v4, "notify":I
    const-string v7, "conn_command_key"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, "command":I
    if-ne v4, v10, :cond_2

    .line 127
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/CommandHander;->wifiInform(I)V

    .line 129
    :cond_2
    if-ne v1, v9, :cond_3

    .line 130
    iget-object v8, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->stub:Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;

    monitor-enter v8

    .line 132
    :try_start_0
    iget-object v7, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->stub:Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;

    const/16 v9, 0x26

    invoke-virtual {v7, v9}, Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;->setCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->stub:Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :cond_3
    iget-object v7, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->observer:Lcom/phonemanager2345/zhushou/BindstatusChanged;

    if-eqz v7, :cond_4

    .line 142
    :try_start_2
    iget-object v7, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->observer:Lcom/phonemanager2345/zhushou/BindstatusChanged;

    invoke-interface {v7, v2}, Lcom/phonemanager2345/zhushou/BindstatusChanged;->statusChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/phonemanager2345/zhushou/ConnectionService;->observer:Lcom/phonemanager2345/zhushou/BindstatusChanged;

    .line 148
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.phonemanager2345.zhushou.connectionservice.created"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/phonemanager2345/zhushou/ConnectionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 134
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 152
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.phonemanager2345.zhushou.connectionservice.created"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/phonemanager2345/zhushou/ConnectionService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
