.class public Lcom/market2345/detail/ScreenDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ScreenDialogFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;
    }
.end annotation


# static fields
.field public static final BIG_IMAGES_URL:Ljava/lang/String; = "big_images_url"

.field public static final BIG_IMAGE_INDEX:Ljava/lang/String; = "big_image_index"

.field public static final SCREEN_COUNTS:I = 0x5

.field public static final SMALL_IMAGES_URL:Ljava/lang/String; = "small_images_url"


# instance fields
.field private curIndicator:Landroid/widget/ImageView;

.field private indicator_container:Landroid/widget/LinearLayout;

.field private pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 96
    return-void
.end method

.method public static newInstance()Lcom/market2345/detail/ScreenDialogFragment;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/market2345/detail/ScreenDialogFragment;

    invoke-direct {v0}, Lcom/market2345/detail/ScreenDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x5

    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/market2345/detail/ScreenDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "big_images_url"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    .local v1, "bigImgUrls":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/market2345/detail/ScreenDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "small_images_url"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 65
    .local v7, "smallImgUrls":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 66
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "bigImages":[Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "smallImages":[Ljava/lang/String;
    array-length v8, v0

    if-ge v8, v2, :cond_0

    array-length v2, v0

    .line 70
    .local v2, "count":I
    :cond_0
    array-length v8, v6

    if-ge v8, v2, :cond_1

    array-length v2, v6

    .line 72
    :cond_1
    iget-object v8, p0, Lcom/market2345/detail/ScreenDialogFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v9, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;

    invoke-direct {v9, p0, v0, v6, v2}, Lcom/market2345/detail/ScreenDialogFragment$ImagePagerAdapter;-><init>(Lcom/market2345/detail/ScreenDialogFragment;[Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    invoke-virtual {p0}, Lcom/market2345/detail/ScreenDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "big_image_index"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 74
    .local v4, "index":I
    iget-object v8, p0, Lcom/market2345/detail/ScreenDialogFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 75
    iget-object v8, p0, Lcom/market2345/detail/ScreenDialogFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 77
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 78
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/market2345/detail/ScreenDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v5, "indicator":Landroid/widget/ImageView;
    if-ne v3, v4, :cond_2

    .line 80
    iput-object v5, p0, Lcom/market2345/detail/ScreenDialogFragment;->curIndicator:Landroid/widget/ImageView;

    .line 81
    const v8, 0x7f0200d5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    :goto_1
    iget-object v8, p0, Lcom/market2345/detail/ScreenDialogFragment;->indicator_container:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_2
    const v8, 0x7f0200d4

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 89
    .end local v0    # "bigImages":[Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "indicator":Landroid/widget/ImageView;
    .end local v6    # "smallImages":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/market2345/detail/ScreenDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c000f

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const v1, 0x7f03003e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/market2345/detail/ScreenDialogFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 55
    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/market2345/detail/ScreenDialogFragment;->indicator_container:Landroid/widget/LinearLayout;

    .line 57
    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 219
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 223
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lcom/market2345/detail/ScreenDialogFragment;->indicator_container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 228
    .local v0, "indicator":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/market2345/detail/ScreenDialogFragment;->curIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/market2345/detail/ScreenDialogFragment;->curIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    :cond_0
    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iput-object v0, p0, Lcom/market2345/detail/ScreenDialogFragment;->curIndicator:Landroid/widget/ImageView;

    .line 234
    return-void
.end method
