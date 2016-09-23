.class public Lcom/market2345/slidemenu/ManagementFragment2;
.super Lcom/market2345/ui/BaseFragment;
.source "ManagementFragment2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/customview/StickyLayout$OnGiveUpTouchEventListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;,
        Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;
    }
.end annotation


# static fields
.field private static final FAKE_ANIMATION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "ManagementFragment2"


# instance fields
.field private INIT_STATE:Ljava/lang/String;

.field private final LARGR:I

.field private final MIDDLE:I

.field private RAM_OPTIMING:Ljava/lang/String;

.field private adapter:Landroid/widget/BaseAdapter;

.field canScrollVertically:Z

.field private changeFlag:Z

.field private connectionStatus:I

.field private currentRamUsage:I

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;",
            ">;"
        }
    .end annotation
.end field

.field private gridView:Landroid/widget/GridView;

.field private imageViews:[Landroid/widget/ImageView;

.field private isFinish:Z

.field private isFromDesk:Z

.field private iv_pellet_floating_layer:Landroid/widget/ImageView;

.field private layerWidth:I

.field private layout_upgrade_app_icons:Landroid/view/ViewGroup;

.field private ll_head:Landroid/widget/LinearLayout;

.field private localScale:F

.field private mHandler:Landroid/os/Handler;

.field originalHeaderHeight:I

.field private previousClickCleanTime:J

.field private sl:Lcom/market2345/customview/StickyLayout;

.field private supportTag:Ljava/lang/String;

.field private sv_content:Landroid/widget/ScrollView;

.field private taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

.field private tv_number_app_upgrade:Landroid/widget/TextView;

.field private tv_progress:Landroid/widget/TextView;

.field private tv_progress_relpace:Landroid/widget/TextView;

.field private tv_ram_prompt:Landroid/widget/TextView;

.field private tv_upgrade_count:Landroid/widget/TextView;

.field private wv:Lcom/market2345/customview/download/CleanAccelerationBallView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 81
    const/16 v0, 0x50

    iput v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->LARGR:I

    .line 82
    const/16 v0, 0x3c

    iput v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->MIDDLE:I

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->imageViews:[Landroid/widget/ImageView;

    .line 103
    const/16 v0, 0x32

    iput v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->isFromDesk:Z

    .line 106
    iput-boolean v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->isFinish:Z

    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->localScale:F

    .line 140
    iput-boolean v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->canScrollVertically:Z

    .line 330
    new-instance v0, Lcom/market2345/slidemenu/ManagementFragment2$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/market2345/slidemenu/ManagementFragment2$4;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->mHandler:Landroid/os/Handler;

    .line 626
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->connectionStatus:I

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/slidemenu/ManagementFragment2;)Lcom/market2345/customview/StickyLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sl:Lcom/market2345/customview/StickyLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/ManagementFragment2;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/market2345/slidemenu/ManagementFragment2;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->changeConnectionStatus()V

    return-void
.end method

.method static synthetic access$102(Lcom/market2345/slidemenu/ManagementFragment2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I

    return p1
.end method

.method static synthetic access$1100(Lcom/market2345/slidemenu/ManagementFragment2;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->connectionStatus:I

    return v0
.end method

.method static synthetic access$1200(Lcom/market2345/slidemenu/ManagementFragment2;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/market2345/slidemenu/ManagementFragment2;)Lcom/market2345/clean/shortcut/TaskInfoProvider;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/market2345/slidemenu/ManagementFragment2;->startAnimation(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/market2345/slidemenu/ManagementFragment2;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->updateShowCount()V

    return-void
.end method

.method static synthetic access$1700(Lcom/market2345/slidemenu/ManagementFragment2;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->RAM_OPTIMING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/market2345/slidemenu/ManagementFragment2;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->killBackground()V

    return-void
.end method

.method static synthetic access$1900(Lcom/market2345/slidemenu/ManagementFragment2;)Lcom/market2345/customview/download/CleanAccelerationBallView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/slidemenu/ManagementFragment2;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/market2345/slidemenu/ManagementFragment2;->setProgress(IF)V

    return-void
.end method

.method static synthetic access$2000(Lcom/market2345/slidemenu/ManagementFragment2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->changeFlag:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/market2345/slidemenu/ManagementFragment2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->changeFlag:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/market2345/slidemenu/ManagementFragment2;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/ManagementFragment2;->setRamPromptText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/market2345/slidemenu/ManagementFragment2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->isFinish:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/market2345/slidemenu/ManagementFragment2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->isFromDesk:Z

    return p1
.end method

.method static synthetic access$300(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sv_content:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/slidemenu/ManagementFragment2;)F
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->localScale:F

    return v0
.end method

.method static synthetic access$402(Lcom/market2345/slidemenu/ManagementFragment2;F)F
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;
    .param p1, "x1"    # F

    .prologue
    .line 73
    iput p1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->localScale:F

    return p1
.end method

.method static synthetic access$500(Lcom/market2345/slidemenu/ManagementFragment2;F)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;
    .param p1, "x1"    # F

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/ManagementFragment2;->setProgress(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/market2345/slidemenu/ManagementFragment2;F)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;
    .param p1, "x1"    # F

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/ManagementFragment2;->scaleChangeWaveView(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_progress_relpace:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/slidemenu/ManagementFragment2;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2;

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->previousClickCleanTime:J

    return-wide v0
.end method

.method private changeConnectionStatus()V
    .locals 5

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/datacenter/DataCenterObserver;->getConnStatus()I

    move-result v3

    iput v3, p0, Lcom/market2345/slidemenu/ManagementFragment2;->connectionStatus:I

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "drawID":I
    iget v3, p0, Lcom/market2345/slidemenu/ManagementFragment2;->connectionStatus:I

    packed-switch v3, :pswitch_data_0

    .line 645
    :goto_0
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    .line 646
    .local v2, "mode":Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;
    const v3, 0x7f0b0176

    invoke-virtual {p0, v3}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->title:Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->access$2400(Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    # setter for: Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->iconId:I
    invoke-static {v2, v0}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->access$2502(Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;I)I

    .line 648
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment2;->adapter:Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_1

    .line 649
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment2;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 658
    .end local v0    # "drawID":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mode":Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;
    :cond_1
    return-void

    .line 634
    .restart local v0    # "drawID":I
    :pswitch_0
    const v0, 0x7f020206

    .line 635
    goto :goto_0

    .line 637
    :pswitch_1
    const v0, 0x7f02020d

    .line 638
    goto :goto_0

    .line 640
    :pswitch_2
    const v0, 0x7f02020c

    .line 641
    goto :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getRamUsage()V
    .locals 3

    .prologue
    .line 423
    new-instance v1, Lcom/market2345/clean/shortcut/TaskInfoProvider;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/market2345/clean/shortcut/TaskInfoProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    .line 424
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    invoke-virtual {v1}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getUsedPercent()I

    move-result v0

    .line 425
    .local v0, "percent":I
    iput v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I

    .line 426
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->ll_head:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/market2345/dumpclean/main/Util;->beforehandMeasuredViewHeight(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sl:Lcom/market2345/customview/StickyLayout;

    invoke-virtual {v0, p0}, Lcom/market2345/customview/StickyLayout;->setOnGiveUpTouchEventListener(Lcom/market2345/customview/StickyLayout$OnGiveUpTouchEventListener;)V

    .line 197
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->iv_pellet_floating_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->layerWidth:I

    .line 198
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;

    invoke-virtual {v0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->layerWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 200
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;

    invoke-virtual {v0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->requestLayout()V

    .line 201
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->ll_head:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->originalHeaderHeight:I

    .line 202
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sl:Lcom/market2345/customview/StickyLayout;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->ll_head:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/market2345/customview/StickyLayout;->setOriginalHeaderHeight(I)V

    .line 203
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sl:Lcom/market2345/customview/StickyLayout;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$2;

    invoke-direct {v1, p0}, Lcom/market2345/slidemenu/ManagementFragment2$2;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;)V

    invoke-virtual {v0, v1}, Lcom/market2345/customview/StickyLayout;->setHeightChangeListener(Lcom/market2345/customview/StickyLayout$HeightChangeListener;)V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    .line 223
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    const v2, 0x7f0b00ae

    const v3, 0x7f02020a

    const-class v4, Lcom/market2345/manager/InstallManagerActivity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    const v2, 0x7f0b00a8

    const v3, 0x7f020203

    const-class v4, Lcom/market2345/dumpclean/main/SilverActivity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    const v2, 0x7f0b00b2

    const v3, 0x7f020204

    const-class v4, Lcom/market2345/filebrowser/FileCategoryActivity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    const v2, 0x7f0b0101

    const v3, 0x7f020207

    const-class v4, Lcom/market2345/startup/StartupActivity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    const v2, 0x7f0b00ac

    const v3, 0x7f020208

    const-class v4, Lcom/market2345/wificonn/WifiReceivedFilesActivity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    const v2, 0x7f0b0176

    const v3, 0x7f020206

    const-class v4, Lcom/market2345/wificonn/WifiConnectedActivity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    const v2, 0x7f0b013b

    const v3, 0x7f020209

    const-class v4, Lcom/market2345/settings/SettingActivity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    const v2, 0x7f0b00b7

    const v3, 0x7f020205

    const-class v4, Lcom/market2345/feedback/FeedBackActivity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    const v2, 0x7f0b00b4

    const v3, 0x7f0201ff

    const-class v4, Lcom/market2345/about/AboutActivity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v0, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2;->datas:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/market2345/slidemenu/ManagementFragment2$GridViewAdapter;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->adapter:Landroid/widget/BaseAdapter;

    .line 236
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$3;

    invoke-direct {v1, p0}, Lcom/market2345/slidemenu/ManagementFragment2$3;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 285
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 166
    const v0, 0x7f0903a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f09039f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->ll_head:Landroid/widget/LinearLayout;

    .line 170
    const v0, 0x7f0903a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sv_content:Landroid/widget/ScrollView;

    .line 172
    const v0, 0x7f0903a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_progress:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0903a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_progress_relpace:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0903a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/download/CleanAccelerationBallView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;

    .line 177
    const v0, 0x7f0903a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->iv_pellet_floating_layer:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->iv_pellet_floating_layer:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f09039e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/StickyLayout;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sl:Lcom/market2345/customview/StickyLayout;

    .line 181
    const v0, 0x7f0903a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f0903ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->gridView:Landroid/widget/GridView;

    .line 184
    const v0, 0x7f0903aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_upgrade_count:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f0902d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 186
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0902d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 187
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0902d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 188
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->imageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f0902d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 189
    const v0, 0x7f0903a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->layout_upgrade_app_icons:Landroid/view/ViewGroup;

    .line 190
    const v0, 0x7f0902d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_number_app_upgrade:Landroid/widget/TextView;

    .line 191
    return-void
.end method

.method private killBackground()V
    .locals 4

    .prologue
    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/market2345/slidemenu/ManagementFragment2;->previousClickCleanTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Lcom/market2345/clean/shortcut/TaskInfoProvider;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/clean/shortcut/TaskInfoProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getRamUsage()V

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->previousClickCleanTime:J

    .line 474
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->killProcess(Landroid/os/Handler;)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private refreshUIProgress()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 661
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getRamUsage()V

    .line 662
    iget v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->setProgress(IF)V

    .line 663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/market2345/slidemenu/ManagementFragment2;->previousClickCleanTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15f900

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 664
    iput-wide v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->previousClickCleanTime:J

    .line 666
    :cond_0
    iget-wide v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->previousClickCleanTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->INIT_STATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_progress_relpace:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 672
    :cond_1
    iget-boolean v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->isFromDesk:Z

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    const v1, 0x7f0b0059

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 675
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$8;

    invoke-direct {v1, p0}, Lcom/market2345/slidemenu/ManagementFragment2$8;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 682
    :cond_2
    return-void
.end method

.method private scaleChangeWaveView(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 327
    return-void
.end method

.method private setIcons(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    if-nez p1, :cond_1

    .line 419
    :cond_0
    return-void

    .line 412
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->imageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->imageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->imageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->imageViews:[Landroid/widget/ImageView;

    aget-object v2, v1, v0

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/model/App;

    iget-object v1, v1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/market2345/util/AppsUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 417
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->imageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setProgress(F)V
    .locals 6
    .param p1, "scale"    # F

    .prologue
    const/16 v5, 0x21

    .line 315
    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 320
    .local v0, "span":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, p1

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 321
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, p1

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 322
    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setProgress(IF)V
    .locals 5
    .param p1, "progress"    # I
    .param p2, "scale"    # F

    .prologue
    const/16 v4, 0x21

    .line 307
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 308
    .local v0, "span":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, p2

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 309
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p2

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 310
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_progress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;

    invoke-virtual {v1, p1}, Lcom/market2345/customview/download/CleanAccelerationBallView;->setProgress(I)V

    .line 312
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;

    invoke-virtual {v1}, Lcom/market2345/customview/download/CleanAccelerationBallView;->startWave()V

    .line 313
    return-void
.end method

.method private setRamPromptText(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 686
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    const-string v0, ".00B"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    const v1, 0x7f0b011f

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    const v1, 0x7f0b0124

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startAnimation(IILjava/lang/String;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "processSize"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 484
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;

    invoke-virtual {v1, v2}, Lcom/market2345/customview/download/CleanAccelerationBallView;->setIsAnimation(Z)V

    .line 487
    :cond_0
    iput-boolean v2, p0, Lcom/market2345/slidemenu/ManagementFragment2;->changeFlag:Z

    .line 488
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->isFinish:Z

    .line 489
    move v6, p1

    .line 490
    .local v6, "mStart":I
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 491
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$7;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/market2345/slidemenu/ManagementFragment2$7;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;ILjava/lang/String;Ljava/util/Timer;)V

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 520
    return-void
.end method

.method private updateShowCount()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    new-instance v4, Lcom/market2345/slidemenu/ManagementFragment2$5;

    invoke-direct {v4, p0}, Lcom/market2345/slidemenu/ManagementFragment2$5;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 383
    if-nez v2, :cond_2

    move v0, v3

    .line 384
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_3

    .line 385
    const v4, 0x7f0b008a

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_upgrade_count:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 387
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_upgrade_count:Landroid/widget/TextView;

    const-string v5, "#ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_upgrade_count:Landroid/widget/TextView;

    const/high16 v5, 0x41100000    # 9.0f

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 389
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_upgrade_count:Landroid/widget/TextView;

    const v5, 0x7f020047

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 390
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_upgrade_count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_0
    const/4 v4, 0x4

    if-le v0, v4, :cond_1

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    :cond_1
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->layout_upgrade_app_icons:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 396
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_number_app_upgrade:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-direct {p0, v2}, Lcom/market2345/slidemenu/ManagementFragment2;->setIcons(Ljava/util/List;)V

    .line 406
    .end local v1    # "str":Ljava/lang/String;
    :goto_1
    return-void

    .line 383
    .end local v0    # "count":I
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 400
    .restart local v0    # "count":I
    :cond_3
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->layout_upgrade_app_icons:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 401
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_upgrade_count:Landroid/widget/TextView;

    const-string v5, "#999999"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_upgrade_count:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 403
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_upgrade_count:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 404
    iget-object v3, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_upgrade_count:Landroid/widget/TextView;

    const v4, 0x7f0b0004

    invoke-virtual {p0, v4}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->supportTag:Ljava/lang/String;

    return-object v0
.end method

.method public giveUpTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sv_content:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const/4 v0, 0x1

    .line 549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "ManagementFragment2"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 121
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 113
    const-string v0, "ManagementFragment2"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 432
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Manage_Ball"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 434
    :sswitch_1
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Manage_Ball_Clean"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    :cond_1
    iget-boolean v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->isFinish:Z

    if-eqz v1, :cond_0

    .line 438
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sl:Lcom/market2345/customview/StickyLayout;

    iget v2, v2, Lcom/market2345/customview/StickyLayout;->mStatus:I

    if-ne v1, v2, :cond_2

    .line 439
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sl:Lcom/market2345/customview/StickyLayout;

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2;->sl:Lcom/market2345/customview/StickyLayout;

    invoke-virtual {v2}, Lcom/market2345/customview/StickyLayout;->getOriginalHeaderHeight()I

    move-result v2

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/market2345/customview/StickyLayout;->smoothSetHeaderHeight(IIJ)V

    .line 440
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/market2345/slidemenu/ManagementFragment2$6;

    invoke-direct {v2, p0}, Lcom/market2345/slidemenu/ManagementFragment2$6;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2;->RAM_OPTIMING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 451
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->killBackground()V

    goto :goto_0

    .line 456
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/market2345/manager/UpdateAppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    .local v0, "uninstall":Landroid/content/Intent;
    const-string v1, "posi"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/ManagementFragment2;->startActivity(Landroid/content/Intent;)V

    .line 459
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Manage_Update"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0903a1 -> :sswitch_0
        0x7f0903a5 -> :sswitch_1
        0x7f0903a8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    const-string v1, "ManagementFragment2"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const v1, 0x7f0300ba

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0b0125

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->RAM_OPTIMING:Ljava/lang/String;

    .line 134
    const v1, 0x7f0b0120

    invoke-virtual {p0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->INIT_STATE:Ljava/lang/String;

    .line 135
    invoke-direct {p0, v0}, Lcom/market2345/slidemenu/ManagementFragment2;->initView(Landroid/view/View;)V

    .line 136
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->initData()V

    .line 137
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onDestroy()V

    .line 301
    const-string v0, "ManagementFragment2"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 303
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .param p1, "hidden"    # Z

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onHiddenChanged(Z)V

    .line 290
    const-string v0, "ManagementFragment2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHiddenChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->startOrStopWave(Z)V

    .line 292
    if-nez p1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->refreshUIProgress()V

    .line 296
    :cond_0
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onResume()V

    .line 162
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->refreshUIProgress()V

    .line 163
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lcom/market2345/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    const-string v0, "ManagementFragment2"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Lcom/market2345/slidemenu/ManagementFragment2$1;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/ManagementFragment2$1;-><init>(Lcom/market2345/slidemenu/ManagementFragment2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method public setAccelerationOver()V
    .locals 2

    .prologue
    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->isFromDesk:Z

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/slidemenu/ManagementFragment2;->previousClickCleanTime:J

    .line 558
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->supportTag:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public showSelf()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 526
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 527
    check-cast v0, Landroid/util/Pair;

    .line 528
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 542
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 530
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.wifi.pc.link.status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 531
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->changeConnectionStatus()V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.pc.transfer.file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 536
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 537
    const-string v1, "pref.disconnect.pc"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/market2345/slidemenu/ManagementFragment2;->changeConnectionStatus()V

    goto :goto_0
.end method
