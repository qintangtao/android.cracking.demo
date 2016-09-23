.class public Lcom/market2345/filebrowser/MusicService;
.super Landroid/app/Service;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/MusicService$LocalBinder;,
        Lcom/market2345/filebrowser/MusicService$MyHandler;
    }
.end annotation


# static fields
.field private static final FADEDOWN:I = 0x5

.field private static final FADEUP:I = 0x6

.field private static final FOCUSCHANGE:I = 0x4

.field private static final MAX_HISTORY_SIZE:I = 0x64

.field private static final RELEASE_WAKELOCK:I = 0x2

.field private static final SERVER_DIED:I = 0x3

.field private static final TRACK_ENDED:I = 0x1

.field private static final TRACK_WENT_TO_NEXT:I = 0x7


# instance fields
.field private final TAG:Ljava/lang/String;

.field private binder:Landroid/os/IBinder;

.field public data:Ljava/lang/String;

.field public id:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mMediaplayerHandler:Landroid/os/Handler;

.field protected mPausedByTransientLossOfFocus:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const-string v0, "MusicService"

    iput-object v0, p0, Lcom/market2345/filebrowser/MusicService;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/market2345/filebrowser/MusicService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/MusicService$LocalBinder;-><init>(Lcom/market2345/filebrowser/MusicService;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/MusicService;->binder:Landroid/os/IBinder;

    .line 60
    new-instance v0, Lcom/market2345/filebrowser/MusicService$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/MusicService$MyHandler;-><init>(Lcom/market2345/filebrowser/MusicService;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/market2345/filebrowser/MusicService$1;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/MusicService$1;-><init>(Lcom/market2345/filebrowser/MusicService;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/MusicService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/MusicService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/filebrowser/MusicService;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/MusicService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/filebrowser/MusicService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/MusicService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/filebrowser/MusicService;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/MusicService;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/market2345/filebrowser/MusicService;->pause()V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/filebrowser/MusicService;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/MusicService;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/market2345/filebrowser/MusicService;->play()V

    return-void
.end method

.method private initMediaPlayer()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 270
    return-void
.end method

.method private pause()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 228
    :cond_0
    return-void
.end method

.method private play()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/market2345/filebrowser/MusicService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 199
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 203
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 170
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 171
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/MusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/market2345/filebrowser/MusicService;->mAudioManager:Landroid/media/AudioManager;

    .line 172
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    .line 173
    iget-object v1, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 175
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/MusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 176
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/MusicService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 177
    iget-object v1, p0, Lcom/market2345/filebrowser/MusicService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 178
    iget-object v1, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/market2345/filebrowser/MusicService$2;

    invoke-direct {v2, p0}, Lcom/market2345/filebrowser/MusicService$2;-><init>(Lcom/market2345/filebrowser/MusicService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 187
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public play(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/market2345/filebrowser/MusicService;->initMediaPlayer()V

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 237
    iget-object v1, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 238
    invoke-direct {p0}, Lcom/market2345/filebrowser/MusicService;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 257
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public position()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 313
    iget-object v2, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 321
    :cond_0
    return-wide v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 292
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 281
    :cond_0
    return-void
.end method
