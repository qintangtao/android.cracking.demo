.class Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ScreenDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/detail/ScreenDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePagerAdapter"
.end annotation


# instance fields
.field private final bigImagesUrl:[Ljava/lang/String;

.field private final count:I

.field private optionsB:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private final smallImagesUrl:[Ljava/lang/String;

.field final synthetic this$0:Lcom/market2345/detail/ScreenDialogFragment;


# direct methods
.method constructor <init>(Lcom/market2345/detail/ScreenDialogFragment;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .param p2, "bigImagesUrl"    # [Ljava/lang/String;
    .param p3, "smallImageUrl"    # [Ljava/lang/String;
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 105
    iput-object p1, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->this$0:Lcom/market2345/detail/ScreenDialogFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->bigImagesUrl:[Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->smallImagesUrl:[Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->count:I

    .line 110
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->optionsB:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 116
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 125
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->count:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 134
    iget-object v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->this$0:Lcom/market2345/detail/ScreenDialogFragment;

    invoke-virtual {v0}, Lcom/market2345/detail/ScreenDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    invoke-virtual {v0, v1, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 135
    .local v6, "rlView":Landroid/widget/RelativeLayout;
    const v0, 0x7f0901ff

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 136
    .local v5, "impView":Landroid/widget/ImageView;
    const v0, 0x7f090200

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 137
    .local v2, "rlLoading":Landroid/view/View;
    const v0, 0x7f090201

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 139
    .local v3, "ivLoading":Landroid/widget/ImageView;
    invoke-virtual {v6, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->smallImagesUrl:[Ljava/lang/String;

    aget-object v4, v0, p2

    .line 143
    .local v4, "smallurl":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v0, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->bigImagesUrl:[Ljava/lang/String;

    aget-object v8, v0, p2

    iget-object v9, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->optionsB:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter$1;-><init>(Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v8, v5, v9, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 185
    invoke-virtual {p1, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 186
    return-object v6
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 191
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;->this$0:Lcom/market2345/detail/ScreenDialogFragment;

    invoke-virtual {v1}, Lcom/market2345/detail/ScreenDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 210
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 213
    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 196
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 205
    return-void
.end method
