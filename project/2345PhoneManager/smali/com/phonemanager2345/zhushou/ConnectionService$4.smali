.class Lcom/phonemanager2345/zhushou/ConnectionService$4;
.super Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonemanager2345/zhushou/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile command:I

.field final synthetic this$0:Lcom/phonemanager2345/zhushou/ConnectionService;


# direct methods
.method constructor <init>(Lcom/phonemanager2345/zhushou/ConnectionService;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService$4;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-direct {p0}, Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkStstus(Lcom/phonemanager2345/zhushou/BindstatusChanged;)V
    .locals 1
    .param p1, "observer"    # Lcom/phonemanager2345/zhushou/BindstatusChanged;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService$4;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # setter for: Lcom/phonemanager2345/zhushou/ConnectionService;->observer:Lcom/phonemanager2345/zhushou/BindstatusChanged;
    invoke-static {v0, p1}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$602(Lcom/phonemanager2345/zhushou/ConnectionService;Lcom/phonemanager2345/zhushou/BindstatusChanged;)Lcom/phonemanager2345/zhushou/BindstatusChanged;

    .line 451
    return-void
.end method

.method public flushCommand(I)V
    .locals 1
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 455
    monitor-enter p0

    .line 456
    :try_start_0
    iput p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService$4;->command:I

    .line 457
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 458
    monitor-exit p0

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCommand()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService$4;->command:I

    return v0
.end method

.method public setCommand(I)V
    .locals 0
    .param p1, "command"    # I

    .prologue
    .line 468
    iput p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService$4;->command:I

    .line 469
    return-void
.end method
