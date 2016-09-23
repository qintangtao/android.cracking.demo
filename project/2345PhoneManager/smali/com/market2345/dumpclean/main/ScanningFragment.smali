.class public Lcom/market2345/dumpclean/main/ScanningFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "ScanningFragment.java"


# instance fields
.field private headView:Landroid/widget/FrameLayout;

.field private junk_sort_item_apk_image:Landroid/view/View;

.field private junk_sort_item_apk_progress:Landroid/view/View;

.field private junk_sort_item_cache_image:Landroid/view/View;

.field private junk_sort_item_cache_progress:Landroid/view/View;

.field private junk_sort_item_ram_image:Landroid/view/View;

.field private junk_sort_item_ram_progress:Landroid/view/View;

.field private junk_sort_item_residual_image:Landroid/view/View;

.field private junk_sort_item_residual_progress:Landroid/view/View;

.field private resources:Landroid/content/res/Resources;

.field private scanning:Ljava/lang/String;

.field private tv_scan_progress:Landroid/widget/TextView;

.field private tv_size:Landroid/widget/TextView;

.field private tv_unit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 55
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    const v0, 0x7f090287

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->headView:Landroid/widget/FrameLayout;

    .line 79
    const v0, 0x7f09023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->tv_scan_progress:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f09023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->tv_size:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f09023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->tv_unit:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f090182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_ram_progress:Landroid/view/View;

    .line 84
    const v0, 0x7f090183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_ram_image:Landroid/view/View;

    .line 86
    const v0, 0x7f090187

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_cache_progress:Landroid/view/View;

    .line 87
    const v0, 0x7f090188

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_cache_image:Landroid/view/View;

    .line 89
    const v0, 0x7f09018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_residual_progress:Landroid/view/View;

    .line 90
    const v0, 0x7f09018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_residual_image:Landroid/view/View;

    .line 92
    const v0, 0x7f090191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_apk_progress:Landroid/view/View;

    .line 93
    const v0, 0x7f090192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_apk_image:Landroid/view/View;

    .line 94
    return-void
.end method

.method public static newInstance()Lcom/market2345/dumpclean/main/ScanningFragment;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/market2345/dumpclean/main/ScanningFragment;

    invoke-direct {v0}, Lcom/market2345/dumpclean/main/ScanningFragment;-><init>()V

    .line 50
    .local v0, "fragment":Lcom/market2345/dumpclean/main/ScanningFragment;
    return-object v0
.end method


# virtual methods
.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 111
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const v1, 0x7f030070

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/ScanningFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->resources:Landroid/content/res/Resources;

    .line 71
    iget-object v1, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0b0131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->scanning:Ljava/lang/String;

    .line 72
    invoke-direct {p0, v0}, Lcom/market2345/dumpclean/main/ScanningFragment;->initView(Landroid/view/View;)V

    .line 73
    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onDetach()V

    .line 117
    return-void
.end method

.method public scanColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->headView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->headView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 162
    :cond_0
    return-void
.end method

.method public scanColor(Landroid/graphics/drawable/TransitionDrawable;I)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/TransitionDrawable;
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->headView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->headView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public scanState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_ram_progress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_ram_image:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_apk_progress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_apk_image:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_cache_progress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_cache_image:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 141
    :pswitch_4
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_residual_progress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->junk_sort_item_residual_image:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public scanning(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->tv_scan_progress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->scanning:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setScanSize([Ljava/lang/String;)V
    .locals 5
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 169
    .local v0, "strSize":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v1, p1, v2

    .line 170
    .local v1, "strUnit":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->tv_size:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/market2345/dumpclean/main/ScanningFragment;->tv_unit:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 178
    return-void
.end method

.method public showSelf()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method
