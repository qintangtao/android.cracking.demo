.class Lcom/market2345/filebrowser/FileMusicActivity$3;
.super Ljava/lang/Object;
.source "FileMusicActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 177
    iput-object p1, p0, Lcom/market2345/filebrowser/FileMusicActivity$3;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$3;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->adapter:Lcom/market2345/filebrowser/adapter/MusicAdapter;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$400(Lcom/market2345/filebrowser/FileMusicActivity;)Lcom/market2345/filebrowser/adapter/MusicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->getEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/market2345/filebrowser/FileMusicActivity$3;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$3;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$100(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v2, v0, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$3;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$100(Lcom/market2345/filebrowser/FileMusicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/market2345/filebrowser/FileBrowserUtil;->openFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method
