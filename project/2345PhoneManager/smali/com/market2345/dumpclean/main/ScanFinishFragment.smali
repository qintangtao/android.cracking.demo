.class public Lcom/market2345/dumpclean/main/ScanFinishFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "ScanFinishFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;,
        Lcom/market2345/dumpclean/main/ScanFinishFragment$MyHandler;
    }
.end annotation


# static fields
.field public static ACTION_HANDLE_SEND_ANIM:I

.field public static ACTION_SELECTED_CHANGE:I


# instance fields
.field private currentHeadViewColor:I

.field private dataSize:J

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;"
        }
    .end annotation
.end field

.field private elv_scan_result:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

.field flag:Z

.field handler:Landroid/os/Handler;

.field private handlerSendCount:I

.field private headView:Landroid/view/View;

.field private listener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mListener:Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;

.field private resources:Landroid/content/res/Resources;

.field scrollListener:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;

.field private tag:Ljava/lang/String;

.field private tv_proposal_clean:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x101

    sput v0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->ACTION_SELECTED_CHANGE:I

    .line 54
    const/16 v0, 0x11

    sput v0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->ACTION_HANDLE_SEND_ANIM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 45
    const-string v0, "ScanFinishFragment"

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->tag:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->handlerSendCount:I

    .line 120
    new-instance v0, Lcom/market2345/dumpclean/main/ScanFinishFragment$1;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/main/ScanFinishFragment$1;-><init>(Lcom/market2345/dumpclean/main/ScanFinishFragment;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->scrollListener:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;

    .line 170
    new-instance v0, Lcom/market2345/dumpclean/main/ScanFinishFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/main/ScanFinishFragment$MyHandler;-><init>(Lcom/market2345/dumpclean/main/ScanFinishFragment;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->handler:Landroid/os/Handler;

    .line 219
    new-instance v0, Lcom/market2345/dumpclean/main/ScanFinishFragment$3;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/main/ScanFinishFragment$3;-><init>(Lcom/market2345/dumpclean/main/ScanFinishFragment;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->listener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/dumpclean/main/ScanFinishFragment;)Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/ScanFinishFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->mListener:Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/dumpclean/main/ScanFinishFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/ScanFinishFragment;

    .prologue
    .line 44
    iget v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->handlerSendCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/market2345/dumpclean/main/ScanFinishFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/ScanFinishFragment;

    .prologue
    .line 44
    iget v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->handlerSendCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->handlerSendCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/dumpclean/main/ScanFinishFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/ScanFinishFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->tv_proposal_clean:Landroid/widget/TextView;

    return-object v0
.end method

.method private initHeadView(Landroid/view/View;)V
    .locals 7
    .param p1, "headView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 202
    const v4, 0x7f09023f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 203
    .local v1, "tv_scan_progress":Landroid/widget/TextView;
    const v4, 0x7f09023e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->tv_proposal_clean:Landroid/widget/TextView;

    .line 205
    const v4, 0x7f09023c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 206
    .local v2, "tv_size":Landroid/widget/TextView;
    const v4, 0x7f09023d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 207
    .local v3, "tv_unit":Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 208
    const v4, 0x7f0b012f

    invoke-virtual {p0, v4}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-wide v4, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->dataSize:J

    invoke-static {v4, v5}, Lcom/market2345/dumpclean/main/Util;->getFileSizeAndUnit(J)[Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "fileSizeAndUnit":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 212
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    iget-wide v4, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->dataSize:J

    invoke-direct {p0, p1, v4, v5}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->initHeadViewColor(Landroid/view/View;J)V

    .line 216
    return-void
.end method

.method private initHeadViewColor(Landroid/view/View;J)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "size"    # J

    .prologue
    .line 279
    const-wide/32 v0, 0xa00000

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->currentHeadViewColor:I

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->mListener:Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;

    iget v1, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->currentHeadViewColor:I

    invoke-interface {v0, v1}, Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;->updateTitleColor(I)V

    .line 291
    iget v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->currentHeadViewColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 292
    return-void

    .line 282
    :cond_0
    const-wide/32 v0, 0x4b00000

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->currentHeadViewColor:I

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->currentHeadViewColor:I

    goto :goto_0
.end method

.method public static newInstance()Lcom/market2345/dumpclean/main/ScanFinishFragment;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/market2345/dumpclean/main/ScanFinishFragment;

    invoke-direct {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;-><init>()V

    .line 73
    .local v0, "fragment":Lcom/market2345/dumpclean/main/ScanFinishFragment;
    return-object v0
.end method


# virtual methods
.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 297
    iget v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->currentHeadViewColor:I

    if-lez v0, :cond_0

    .line 300
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 238
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->mListener:Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    return-void

    .line 239
    :catch_0
    move-exception v1

    .line 240
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
    .line 82
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 89
    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->tag:Ljava/lang/String;

    const-string v7, "onCreateView"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->flag:Z

    .line 91
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->resources:Landroid/content/res/Resources;

    .line 92
    const v6, 0x7f03006f

    invoke-virtual {p1, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 93
    .local v4, "view":Landroid/view/View;
    const v6, 0x7f030054

    iget-object v7, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->elv_scan_result:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-virtual {p1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->headView:Landroid/view/View;

    .line 94
    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->headView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->initHeadView(Landroid/view/View;)V

    .line 95
    const v6, 0x7f090294

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    iput-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->elv_scan_result:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    .line 96
    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->datas:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->datas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 97
    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->elv_scan_result:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    iget-object v7, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->headView:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 98
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->datas:Ljava/util/List;

    iget-object v8, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->handler:Landroid/os/Handler;

    invoke-direct {v0, v6, v7, v8}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    .line 99
    .local v0, "adapter":Lcom/market2345/dumpclean/ExpandableListViewAdapter;
    new-instance v5, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    invoke-direct {v5, v0}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;-><init>(Landroid/widget/BaseExpandableListAdapter;)V

    .line 100
    .local v5, "wrapperAdapter":Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;
    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->elv_scan_result:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-virtual {v6, v5}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->setAdapter(Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;)V

    .line 101
    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->elv_scan_result:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    iget-object v7, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->listener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v6, v7}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "expandIndex":I
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "cache":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->datas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 105
    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->datas:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v6}, Lcom/market2345/dumpclean/mode/JunkGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    move v2, v3

    .line 110
    :cond_0
    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->elv_scan_result:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-virtual {v6, v2}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->expandGroup(I)Z

    .line 112
    .end local v0    # "adapter":Lcom/market2345/dumpclean/ExpandableListViewAdapter;
    .end local v1    # "cache":Ljava/lang/String;
    .end local v2    # "expandIndex":I
    .end local v3    # "i":I
    .end local v5    # "wrapperAdapter":Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;
    :cond_1
    iget-object v6, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->elv_scan_result:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    iget-object v7, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->scrollListener:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;

    invoke-virtual {v6, v7}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->setOnScrollFloatingGroupListener(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;)V

    .line 114
    return-object v4

    .line 104
    .restart local v0    # "adapter":Lcom/market2345/dumpclean/ExpandableListViewAdapter;
    .restart local v1    # "cache":Ljava/lang/String;
    .restart local v2    # "expandIndex":I
    .restart local v3    # "i":I
    .restart local v5    # "wrapperAdapter":Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onDestroy()V

    .line 254
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->tag:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onDetach()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->mListener:Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;

    .line 249
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 157
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onResume()V

    .line 158
    iget-boolean v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->flag:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->flag:Z

    .line 160
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/market2345/dumpclean/main/ScanFinishFragment$2;

    invoke-direct {v1, p0}, Lcom/market2345/dumpclean/main/ScanFinishFragment$2;-><init>(Lcom/market2345/dumpclean/main/ScanFinishFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_0
    return-void
.end method

.method public setDataSize(J)V
    .locals 1
    .param p1, "dataSize"    # J

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->dataSize:J

    .line 259
    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkGroup;>;"
    iput-object p1, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->datas:Ljava/util/List;

    .line 66
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 143
    return-void
.end method

.method public showSelf()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public startAnim()V
    .locals 8

    .prologue
    .line 303
    iget-object v2, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->headView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->headView:Landroid/view/View;

    const v3, 0x7f09023a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 305
    .local v0, "fl_num_layout":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->headView:Landroid/view/View;

    const v3, 0x7f09023b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 306
    .local v1, "ll_number":Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/market2345/dumpclean/main/Util;->beforehandMeasuredViewHeight(Landroid/view/View;)V

    .line 307
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f040005

    new-instance v4, Lcom/market2345/dumpclean/main/ScanFinishFragment$4;

    invoke-direct {v4, p0}, Lcom/market2345/dumpclean/main/ScanFinishFragment$4;-><init>(Lcom/market2345/dumpclean/main/ScanFinishFragment;)V

    invoke-static {v2, v1, v3, v4}, Lcom/market2345/dumpclean/animation/TweenAnimationUtils;->startAnimation(Landroid/content/Context;Landroid/view/View;ILcom/market2345/dumpclean/animation/AnimationListenerAdapter;)V

    .line 314
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v0, v2, v3}, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils;->performAnimate(Landroid/view/View;II)V

    .line 317
    .end local v0    # "fl_num_layout":Landroid/widget/FrameLayout;
    .end local v1    # "ll_number":Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method
