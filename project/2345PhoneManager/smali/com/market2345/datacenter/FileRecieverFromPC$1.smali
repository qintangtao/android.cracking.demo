.class Lcom/market2345/datacenter/FileRecieverFromPC$1;
.super Landroid/database/ContentObserver;
.source "FileRecieverFromPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/datacenter/FileRecieverFromPC;->init(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/datacenter/FileRecieverFromPC;


# direct methods
.method constructor <init>(Lcom/market2345/datacenter/FileRecieverFromPC;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/market2345/datacenter/FileRecieverFromPC$1;->this$0:Lcom/market2345/datacenter/FileRecieverFromPC;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/market2345/datacenter/FileRecieverFromPC$1;->this$0:Lcom/market2345/datacenter/FileRecieverFromPC;

    invoke-virtual {v0}, Lcom/market2345/datacenter/FileRecieverFromPC;->fillData()V

    .line 44
    return-void
.end method
