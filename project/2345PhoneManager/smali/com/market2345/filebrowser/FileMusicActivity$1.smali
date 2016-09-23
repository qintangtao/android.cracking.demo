.class Lcom/market2345/filebrowser/FileMusicActivity$1;
.super Ljava/lang/Object;
.source "FileMusicActivity.java"

# interfaces
.implements Lcom/market2345/filebrowser/adapter/MusicAdapter$OnCheckChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileMusicActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileMusicActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileMusicActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/market2345/filebrowser/FileMusicActivity$1;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkChanged()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$1;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->cbTopSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$200(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$1;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$000(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lcom/market2345/filebrowser/FileMusicActivity$1;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/filebrowser/FileMusicActivity;->access$100(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$1;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # invokes: Lcom/market2345/filebrowser/FileMusicActivity;->changeTitle()V
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$300(Lcom/market2345/filebrowser/FileMusicActivity;)V

    .line 154
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
