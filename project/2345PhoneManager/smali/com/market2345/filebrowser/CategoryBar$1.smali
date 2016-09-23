.class Lcom/market2345/filebrowser/CategoryBar$1;
.super Ljava/util/TimerTask;
.source "CategoryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/CategoryBar;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/CategoryBar;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/CategoryBar;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/market2345/filebrowser/CategoryBar$1;->this$0:Lcom/market2345/filebrowser/CategoryBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/market2345/filebrowser/CategoryBar$1;->this$0:Lcom/market2345/filebrowser/CategoryBar;

    # invokes: Lcom/market2345/filebrowser/CategoryBar;->stepAnimation()V
    invoke-static {v0}, Lcom/market2345/filebrowser/CategoryBar;->access$100(Lcom/market2345/filebrowser/CategoryBar;)V

    .line 225
    return-void
.end method
