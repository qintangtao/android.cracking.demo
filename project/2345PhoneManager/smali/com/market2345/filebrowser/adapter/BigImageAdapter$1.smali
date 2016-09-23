.class Lcom/market2345/filebrowser/adapter/BigImageAdapter$1;
.super Ljava/lang/Object;
.source "BigImageAdapter.java"

# interfaces
.implements Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;


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


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/adapter/BigImageAdapter;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$1;->this$0:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 89
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$1;->this$0:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    # getter for: Lcom/market2345/filebrowser/adapter/BigImageAdapter;->listerer:Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;
    invoke-static {v0}, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->access$000(Lcom/market2345/filebrowser/adapter/BigImageAdapter;)Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$1;->this$0:Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    # getter for: Lcom/market2345/filebrowser/adapter/BigImageAdapter;->listerer:Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;
    invoke-static {v0}, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->access$000(Lcom/market2345/filebrowser/adapter/BigImageAdapter;)Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;

    move-result-object v0

    invoke-interface {v0}, Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;->onChange()V

    .line 93
    :cond_0
    return-void
.end method
