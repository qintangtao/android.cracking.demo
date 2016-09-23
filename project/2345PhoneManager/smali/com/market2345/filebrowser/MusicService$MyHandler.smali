.class Lcom/market2345/filebrowser/MusicService$MyHandler;
.super Landroid/os/Handler;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field mCurrentVolume:F

.field theService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/filebrowser/MusicService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/filebrowser/MusicService;)V
    .locals 1
    .param p1, "service"    # Lcom/market2345/filebrowser/MusicService;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->theService:Ljava/lang/ref/WeakReference;

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x6

    const/4 v4, 0x5

    .line 71
    iget-object v1, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->theService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/MusicService;

    .line 72
    .local v0, "service":Lcom/market2345/filebrowser/MusicService;
    if-eqz v0, :cond_0

    .line 73
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    iget v1, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    const v2, 0x3d4ccccd    # 0.05f

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    .line 77
    iget v1, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 79
    # getter for: Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$000(Lcom/market2345/filebrowser/MusicService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    :goto_1
    # getter for: Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$100(Lcom/market2345/filebrowser/MusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget v2, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    iget v3, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 83
    :cond_1
    iput v3, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    goto :goto_1

    .line 88
    :pswitch_2
    iget v1, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    .line 89
    iget v1, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_2

    .line 91
    # getter for: Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$000(Lcom/market2345/filebrowser/MusicService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    :goto_2
    # getter for: Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$100(Lcom/market2345/filebrowser/MusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget v2, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    iget v3, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 95
    :cond_2
    iput v6, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    goto :goto_2

    .line 106
    :pswitch_3
    # getter for: Lcom/market2345/filebrowser/MusicService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$200(Lcom/market2345/filebrowser/MusicService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 113
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_1

    .line 149
    :pswitch_5
    const-string v1, "MusicService"

    const-string v2, "Unknown audio focus change code"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :pswitch_6
    invoke-virtual {v0}, Lcom/market2345/filebrowser/MusicService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    iput-boolean v7, v0, Lcom/market2345/filebrowser/MusicService;->mPausedByTransientLossOfFocus:Z

    .line 120
    :cond_3
    # invokes: Lcom/market2345/filebrowser/MusicService;->pause()V
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$300(Lcom/market2345/filebrowser/MusicService;)V

    goto :goto_0

    .line 123
    :pswitch_7
    # getter for: Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$000(Lcom/market2345/filebrowser/MusicService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    # getter for: Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$000(Lcom/market2345/filebrowser/MusicService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 127
    :pswitch_8
    invoke-virtual {v0}, Lcom/market2345/filebrowser/MusicService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/market2345/filebrowser/MusicService;->mPausedByTransientLossOfFocus:Z

    .line 131
    :cond_4
    # invokes: Lcom/market2345/filebrowser/MusicService;->pause()V
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$300(Lcom/market2345/filebrowser/MusicService;)V

    goto/16 :goto_0

    .line 134
    :pswitch_9
    const-string v1, "MusicService"

    const-string v2, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v0}, Lcom/market2345/filebrowser/MusicService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/market2345/filebrowser/MusicService;->mPausedByTransientLossOfFocus:Z

    if-eqz v1, :cond_5

    .line 137
    iput-boolean v7, v0, Lcom/market2345/filebrowser/MusicService;->mPausedByTransientLossOfFocus:Z

    .line 138
    const/4 v1, 0x0

    iput v1, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    .line 139
    # getter for: Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$100(Lcom/market2345/filebrowser/MusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget v2, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    iget v3, p0, Lcom/market2345/filebrowser/MusicService$MyHandler;->mCurrentVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 140
    # invokes: Lcom/market2345/filebrowser/MusicService;->play()V
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$400(Lcom/market2345/filebrowser/MusicService;)V

    goto/16 :goto_0

    .line 144
    :cond_5
    # getter for: Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$000(Lcom/market2345/filebrowser/MusicService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    # getter for: Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/filebrowser/MusicService;->access$000(Lcom/market2345/filebrowser/MusicService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 113
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method
