.class final Lcom/phonemanager2345/zhushou/CommandHander$2;
.super Ljava/lang/Object;
.source "CommandHander.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonemanager2345/zhushou/CommandHander;->notifyPhoneStatus2PC(Ljava/net/Socket;Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:[Lcom/phonemanager2345/zhushou/CheckBindStstus;


# direct methods
.method constructor <init>([Lcom/phonemanager2345/zhushou/CheckBindStstus;)V
    .locals 0

    .prologue
    .line 2894
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/CommandHander$2;->val$c:[Lcom/phonemanager2345/zhushou/CheckBindStstus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 2902
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/CommandHander$2;->val$c:[Lcom/phonemanager2345/zhushou/CheckBindStstus;

    invoke-static {p2}, Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;->asInterface(Landroid/os/IBinder;)Lcom/phonemanager2345/zhushou/CheckBindStstus;

    move-result-object v2

    aput-object v2, v1, v3

    .line 2903
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/CommandHander$2;->val$c:[Lcom/phonemanager2345/zhushou/CheckBindStstus;

    monitor-enter v2

    .line 2904
    :try_start_0
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/CommandHander$2;->val$c:[Lcom/phonemanager2345/zhushou/CheckBindStstus;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2905
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2907
    :try_start_1
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/CommandHander$2;->val$c:[Lcom/phonemanager2345/zhushou/CheckBindStstus;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x26

    invoke-interface {v1, v2}, Lcom/phonemanager2345/zhushou/CheckBindStstus;->setCommand(I)V

    .line 2908
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/CommandHander$2;->val$c:[Lcom/phonemanager2345/zhushou/CheckBindStstus;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2909
    :try_start_2
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/CommandHander$2;->val$c:[Lcom/phonemanager2345/zhushou/CheckBindStstus;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2910
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2911
    :try_start_3
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/CommandHander$2;->val$c:[Lcom/phonemanager2345/zhushou/CheckBindStstus;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x27

    invoke-interface {v1, v2}, Lcom/phonemanager2345/zhushou/CheckBindStstus;->setCommand(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2915
    :goto_0
    return-void

    .line 2905
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 2910
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2912
    :catch_0
    move-exception v0

    .line 2913
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2898
    return-void
.end method
