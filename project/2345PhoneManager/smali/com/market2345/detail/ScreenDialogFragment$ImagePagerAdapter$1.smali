.class Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;
.super Ljava/lang/Object;
.source "ScreenDialogFragment.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isBigImgLoaded:Z

.field final synthetic this$1:Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;

.field final synthetic val$impView:Landroid/widget/ImageView;

.field final synthetic val$ivLoading:Landroid/widget/ImageView;

.field final synthetic val$rlLoading:Landroid/view/View;

.field final synthetic val$smallurl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 143
    iput-object p1, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->this$1:Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;

    iput-object p2, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$rlLoading:Landroid/view/View;

    iput-object p3, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$ivLoading:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$smallurl:Ljava/lang/String;

    iput-object p5, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$impView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->isBigImgLoaded:Z

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->isBigImgLoaded:Z

    .line 181
    iget-object v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$rlLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->isBigImgLoaded:Z

    .line 174
    iget-object v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$rlLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$rlLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 148
    iput-boolean v2, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->isBigImgLoaded:Z

    .line 149
    iget-object v1, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$rlLoading:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$ivLoading:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 151
    .local v0, "d":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 152
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 154
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;->val$smallurl:Ljava/lang/String;

    new-instance v3, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1$1;-><init>(Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 163
    return-void
.end method
