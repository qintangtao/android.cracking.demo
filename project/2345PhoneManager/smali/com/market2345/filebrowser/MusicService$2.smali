.class Lcom/market2345/filebrowser/MusicService$2;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/MusicService;->onCreate()V
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
    .line 179
    iput-object p1, p0, Lcom/market2345/filebrowser/MusicService$2;->this$0:Lcom/market2345/filebrowser/MusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 185
    return-void
.end method
