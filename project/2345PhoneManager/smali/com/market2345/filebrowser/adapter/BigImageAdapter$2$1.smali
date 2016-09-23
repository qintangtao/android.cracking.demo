.class Lcom/market2345/filebrowser/adapter/BigImageAdapter$2$1;
.super Ljava/lang/Object;
.source "BigImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2$1;->this$1:Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2$1;->this$1:Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->this$0:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2$1;->this$1:Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$photoView:Lcom/market2345/filebrowser/photoview/PhotoView;

    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2$1;->this$1:Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;

    iget-object v2, v2, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2$1;->this$1:Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;

    iget-object v3, v3, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2$1;->this$1:Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;

    iget-object v4, v4, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$retryLayout:Landroid/view/View;

    # invokes: Lcom/market2345/filebrowser/adapter/BigImageAdapter;->showPhoto(Lcom/market2345/filebrowser/photoview/PhotoView;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/view/View;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->access$100(Lcom/market2345/filebrowser/adapter/BigImageAdapter;Lcom/market2345/filebrowser/photoview/PhotoView;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/view/View;)V

    .line 114
    return-void
.end method
