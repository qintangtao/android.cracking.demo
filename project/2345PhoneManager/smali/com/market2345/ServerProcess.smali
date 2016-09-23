.class public Lcom/market2345/ServerProcess;
.super Ljava/lang/Object;
.source "ServerProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/ServerProcess$ConnectThread;,
        Lcom/market2345/ServerProcess$ServerThread;
    }
.end annotation


# static fields
.field public static final ACTION_PROCESS_CREATED:Ljava/lang/String; = "com.market2345.serverprocess.created"

.field public static final KEY_CONN_SERVER:Ljava/lang/String; = "com.market2345.serverprocess.connect.key"

.field public static final SOCKET_ADDRESS:Ljava/lang/String; = "com.market2345.serverprocess"

.field private static final TAG:Ljava/lang/String;

.field private static mSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/market2345/ServerProcess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/LocalServerSocket;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/market2345/ServerProcess;->mSocket:Landroid/net/LocalServerSocket;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;
    .locals 0
    .param p0, "x0"    # Landroid/net/LocalServerSocket;

    .prologue
    .line 25
    sput-object p0, Lcom/market2345/ServerProcess;->mSocket:Landroid/net/LocalServerSocket;

    return-object p0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/market2345/ServerProcess;->notifyProcessCreated()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/market2345/ServerProcess;->startService(Ljava/lang/String;Z)V

    return-void
.end method

.method public static cancelAllNotifications()V
    .locals 5

    .prologue
    .line 174
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 175
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 178
    .local v2, "sService":Landroid/app/INotificationManager;
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    .line 179
    const-string v3, "com.market2345"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v3, "com.market2345"

    invoke-interface {v2, v3}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getTopActivity()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 163
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "tasksInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 169
    :goto_0
    return-object v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 167
    sget-object v2, Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 169
    goto :goto_0
.end method

.method private static notifyProcessCreated()V
    .locals 0

    .prologue
    .line 120
    invoke-static {}, Lcom/market2345/ServerProcess;->sendBroadcast()V

    .line 121
    return-void
.end method

.method private static sendBroadcast()V
    .locals 14

    .prologue
    .line 124
    sget-object v1, Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;

    const-string v3, "sendBroadcast:com.market2345.serverprocess.created"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 126
    .local v0, "am":Landroid/app/IActivityManager;
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.market2345.serverprocess.created"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_0

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    .line 139
    :goto_0
    return-void

    .line 130
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v13

    .line 136
    .local v13, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static startService(Ljava/lang/String;Z)V
    .locals 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "connect"    # Z

    .prologue
    .line 145
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 146
    .local v0, "am":Landroid/app/IActivityManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.market2345.serverprocess.connect.key"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    sget-object v3, Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startService:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v3, v2, v4, v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
