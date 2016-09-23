.class Lcom/market2345/filebrowser/MusicService$1;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/MusicService;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/MusicService;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/market2345/filebrowser/MusicService$1;->this$0:Lcom/market2345/filebrowser/MusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService$1;->this$0:Lcom/market2345/filebrowser/MusicService;

    # getter for: Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$000(Lcom/market2345/filebrowser/MusicService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method
