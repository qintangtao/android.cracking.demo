.class Lcom/market2345/filebrowser/FileBigImageActivity$1;
.super Ljava/lang/Object;
.source "FileBigImageActivity.java"

# interfaces
.implements Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileBigImageActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileBigImageActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileBigImageActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->head:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$000(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->head:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$000(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->foot:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$100(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->head:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$000(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->foot:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$100(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
