.class Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1$1;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "ScreenDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;


# direct methods
.method constructor <init>(Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1$1;->this$2:Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1$1;->this$2:Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;

    iget-boolean v0, v0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->isBigImgLoaded:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1$1;->this$2:Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;

    iget-object v0, v0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$impView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    :cond_0
    return-void
.end method
