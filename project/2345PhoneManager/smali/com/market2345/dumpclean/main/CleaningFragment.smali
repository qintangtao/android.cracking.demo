.class public Lcom/market2345/dumpclean/main/CleaningFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "CleaningFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;,
        Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;,
        Lcom/market2345/dumpclean/main/CleaningFragment$MyHandler;
    }
.end annotation


# instance fields
.field private animationTime:J

.field private count:I

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;"
        }
    .end annotation
.end field

.field private deleteing:Ljava/lang/String;

.field private endListener:Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;

.field handler:Landroid/os/Handler;

.field private headView:Landroid/widget/FrameLayout;

.field private lv:Landroid/widget/ListView;

.field private nAdapter:Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;

.field private size:J

.field private tv_scan_progress:Landroid/widget/TextView;

.field private tv_size:Landroid/widget/TextView;

.field private tv_unit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->count:I

    .line 45
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->animationTime:J

    .line 154
    new-instance v0, Lcom/market2345/dumpclean/main/CleaningFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/main/CleaningFragment$MyHandler;-><init>(Lcom/market2345/dumpclean/main/CleaningFragment;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->handler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/dumpclean/main/CleaningFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/CleaningFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/CleaningFragment;->startCleanAnimation()V

    return-void
.end method

.method static synthetic access$108(Lcom/market2345/dumpclean/main/CleaningFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/CleaningFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->count:I

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/dumpclean/main/CleaningFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/CleaningFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->datas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/dumpclean/main/CleaningFragment;Lcom/market2345/dumpclean/mode/JunkChild;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/CleaningFragment;
    .param p1, "x1"    # Lcom/market2345/dumpclean/mode/JunkChild;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/main/CleaningFragment;->updateCleanProgress(Lcom/market2345/dumpclean/mode/JunkChild;)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/dumpclean/main/CleaningFragment;)Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/CleaningFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->nAdapter:Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/dumpclean/main/CleaningFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/CleaningFragment;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->animationTime:J

    return-wide v0
.end method

.method private cleanALlAnimation()V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 228
    invoke-direct {p0, v0, v1}, Lcom/market2345/dumpclean/main/CleaningFragment;->setCleaningSize(J)V

    .line 229
    invoke-direct {p0, v0, v1}, Lcom/market2345/dumpclean/main/CleaningFragment;->updateHeadViewColor(J)V

    .line 230
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->lv:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/CleaningFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->nAdapter:Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->notifyDataSetChanged()V

    .line 233
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->endListener:Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;

    invoke-interface {v0}, Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;->onCleanEndCallBack()V

    .line 234
    return-void
.end method

.method private initHead(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    const v0, 0x7f090287

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->headView:Landroid/widget/FrameLayout;

    .line 107
    const v0, 0x7f09023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->tv_size:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f09023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->tv_unit:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f09023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->tv_scan_progress:Landroid/widget/TextView;

    .line 110
    iget-wide v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->size:J

    invoke-direct {p0, v0, v1}, Lcom/market2345/dumpclean/main/CleaningFragment;->setCleaningSize(J)V

    .line 111
    iget-wide v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->size:J

    invoke-direct {p0, v0, v1}, Lcom/market2345/dumpclean/main/CleaningFragment;->updateHeadViewColor(J)V

    .line 112
    return-void
.end method

.method public static newInstance()Lcom/market2345/dumpclean/main/CleaningFragment;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/market2345/dumpclean/main/CleaningFragment;

    invoke-direct {v0}, Lcom/market2345/dumpclean/main/CleaningFragment;-><init>()V

    .line 58
    .local v0, "fragment":Lcom/market2345/dumpclean/main/CleaningFragment;
    return-object v0
.end method

.method private setCleaningSize(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 120
    invoke-static {p1, p2}, Lcom/market2345/dumpclean/main/Util;->getFileSizeAndUnit(J)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "fileSizeAndUnit":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->tv_size:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->tv_unit:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    return-void
.end method

.method private startCleanAnimation()V
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->lv:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 181
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/CleaningFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f04000a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 182
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v2, Lcom/market2345/dumpclean/main/CleaningFragment$2;

    invoke-direct {v2, p0}, Lcom/market2345/dumpclean/main/CleaningFragment$2;-><init>(Lcom/market2345/dumpclean/main/CleaningFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 203
    if-nez v1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->endListener:Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;

    invoke-interface {v2}, Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;->onCleanEndCallBack()V

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    iget v2, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->count:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/CleaningFragment;->cleanALlAnimation()V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private updateCleanProgress(Lcom/market2345/dumpclean/mode/JunkChild;)V
    .locals 4
    .param p1, "junkChild"    # Lcom/market2345/dumpclean/mode/JunkChild;

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-wide v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->size:J

    iget-wide v2, p1, Lcom/market2345/dumpclean/mode/JunkChild;->size:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->size:J

    .line 221
    iget-wide v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->size:J

    invoke-direct {p0, v0, v1}, Lcom/market2345/dumpclean/main/CleaningFragment;->setCleaningSize(J)V

    .line 222
    iget-wide v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->size:J

    invoke-direct {p0, v0, v1}, Lcom/market2345/dumpclean/main/CleaningFragment;->updateHeadViewColor(J)V

    .line 223
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->tv_scan_progress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->deleteing:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/market2345/dumpclean/mode/JunkChild;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateHeadViewColor(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 128
    const-wide/32 v2, 0xa00000

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 130
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/CleaningFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 132
    .local v0, "cd":Landroid/graphics/drawable/ColorDrawable;
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->headView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->endListener:Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->endListener:Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;

    invoke-interface {v1, p1, p2}, Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;->onUpdateActivityTitleColor(J)V

    .line 152
    :cond_0
    return-void

    .line 135
    .end local v0    # "cd":Landroid/graphics/drawable/ColorDrawable;
    :cond_1
    const-wide/32 v2, 0x4b00000

    cmp-long v1, p1, v2

    if-gtz v1, :cond_2

    .line 137
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/CleaningFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 139
    .restart local v0    # "cd":Landroid/graphics/drawable/ColorDrawable;
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->headView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 144
    .end local v0    # "cd":Landroid/graphics/drawable/ColorDrawable;
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/CleaningFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 146
    .restart local v0    # "cd":Landroid/graphics/drawable/ColorDrawable;
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->headView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 241
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->endListener:Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnFragmentInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/CleaningFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->deleteing:Ljava/lang/String;

    .line 85
    invoke-direct {p0, v0}, Lcom/market2345/dumpclean/main/CleaningFragment;->initHead(Landroid/view/View;)V

    .line 86
    const v1, 0x7f090288

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->lv:Landroid/widget/ListView;

    .line 87
    new-instance v1, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;

    iget-object v2, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->datas:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;-><init>(Lcom/market2345/dumpclean/main/CleaningFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->nAdapter:Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;

    .line 88
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->lv:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->nAdapter:Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->lv:Landroid/widget/ListView;

    new-instance v2, Lcom/market2345/dumpclean/main/CleaningFragment$1;

    invoke-direct {v2, p0}, Lcom/market2345/dumpclean/main/CleaningFragment$1;-><init>(Lcom/market2345/dumpclean/main/CleaningFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->handler:Landroid/os/Handler;

    const/16 v2, 0x11

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onDetach()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->endListener:Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;

    .line 252
    return-void
.end method

.method public setCleanFragmentData(Ljava/util/ArrayList;J)V
    .locals 0
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    iput-object p1, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->datas:Ljava/util/List;

    .line 73
    iput-wide p2, p0, Lcom/market2345/dumpclean/main/CleaningFragment;->size:J

    .line 75
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 257
    return-void
.end method

.method public showSelf()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method
