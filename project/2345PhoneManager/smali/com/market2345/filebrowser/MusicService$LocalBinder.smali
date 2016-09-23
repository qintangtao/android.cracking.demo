.class public Lcom/market2345/filebrowser/MusicService$LocalBinder;
.super Landroid/os/Binder;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/MusicService;


# direct methods
.method public constructor <init>(Lcom/market2345/filebrowser/MusicService;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/market2345/filebrowser/MusicService$LocalBinder;->this$0:Lcom/market2345/filebrowser/MusicService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/market2345/filebrowser/MusicService;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/market2345/filebrowser/MusicService$LocalBinder;->this$0:Lcom/market2345/filebrowser/MusicService;

    return-object v0
.end method
