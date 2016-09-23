.class Lcom/phonemanager2345/zhushou/ConnectionService$2;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonemanager2345/zhushou/ConnectionService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonemanager2345/zhushou/ConnectionService;


# direct methods
.method constructor <init>(Lcom/phonemanager2345/zhushou/ConnectionService;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService$2;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 105
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 101
    return-void
.end method
