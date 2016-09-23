.class Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "BigImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/adapter/BigImageAdapter;->showPhoto(Lcom/market2345/filebrowser/photoview/PhotoView;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$photoView:Lcom/market2345/filebrowser/photoview/PhotoView;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$retryLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/adapter/BigImageAdapter;Landroid/widget/ProgressBar;Lcom/market2345/filebrowser/photoview/PhotoView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->this$0:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    iput-object p2, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$photoView:Lcom/market2345/filebrowser/photoview/PhotoView;

    iput-object p4, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$retryLayout:Landroid/view/View;

    iput-object p5, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0x8

    .line 120
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$photoView:Lcom/market2345/filebrowser/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/photoview/PhotoView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$retryLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    const/16 v1, 0x8

    .line 106
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$photoView:Lcom/market2345/filebrowser/photoview/PhotoView;

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/photoview/PhotoView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$retryLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$retryLayout:Landroid/view/View;

    new-instance v1, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2$1;-><init>(Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 99
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$photoView:Lcom/market2345/filebrowser/photoview/PhotoView;

    invoke-virtual {v0, v2}, Lcom/market2345/filebrowser/photoview/PhotoView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;->val$retryLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void
.end method
