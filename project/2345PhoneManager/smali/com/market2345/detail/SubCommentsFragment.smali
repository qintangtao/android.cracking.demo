.class public Lcom/market2345/detail/SubCommentsFragment;
.super Lcom/market2345/slidemenu/SlidingBaseFragment;
.source "SubCommentsFragment.java"

# interfaces
.implements Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;


# static fields
.field private static final ALL_COMMENTS:I = 0x4

.field private static final NEGATIVE_COMMENTS:I = 0x3

.field private static final NEUTRAL_COMMENTS:I = 0x2

.field private static final POSITIVE_COMMENTS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

.field private allComments:Landroid/widget/RadioButton;

.field private allCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

.field private allCommentsListWhenNull:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/CommentDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private btnCommentCommit:Landroid/widget/TextView;

.field private commentsCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private commitListener:Landroid/view/View$OnClickListener;

.field private currentCheckedState:Z

.field private currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

.field private currentType:I

.field private final defaultCommentGeneral:[Ljava/lang/String;

.field private final defaultCommentGood:[Ljava/lang/String;

.field private final defaultCommentPoor:[Ljava/lang/String;

.field private etCommentContent:Landroid/widget/EditText;

.field private firstLoad:Z

.field loadDelay:Z

.field private loading:Z

.field private localCommentListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private lvComments:Landroid/widget/ListView;

.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/CommentDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDatas:Lcom/market2345/model/CommentListData;

.field mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

.field mLoading:Landroid/view/View;

.field mNoData:Landroid/view/View;

.field mNoDataRetryButton:Landroid/widget/Button;

.field mProgress:Landroid/widget/ProgressBar;

.field private mhander:Landroid/os/Handler;

.field private negativeComments:Landroid/widget/RadioButton;

.field private negativeCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

.field private neutralComments:Landroid/widget/RadioButton;

.field private neutralCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

.field private pageComment:Lcom/market2345/model/CommentInfo;

.field private pbCommentLoading:Landroid/widget/ProgressBar;

.field private positiveComments:Landroid/widget/RadioButton;

.field private positiveCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

.field private rbCommentTypeGeneral:Lcom/market2345/customview/DrawableCenterRadioButton;

.field private rbCommentTypeGood:Lcom/market2345/customview/DrawableCenterRadioButton;

.field private rbCommentTypePoor:Lcom/market2345/customview/DrawableCenterRadioButton;

.field private rgCommentType:Landroid/widget/RadioGroup;

.field private rlCommentLoadingNoData:Landroid/widget/RelativeLayout;

.field private selectedListener:Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;

.field private showDelay:Z

.field private sid:I

.field private tag:Ljava/lang/String;

.field private tvCommentContentRemainSize:Landroid/widget/TextView;

.field private tvCommentNoData:Landroid/widget/TextView;

.field private vCommentsIndicator:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/detail/SubCommentsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Lcom/market2345/slidemenu/SlidingBaseFragment;-><init>()V

    .line 68
    iput-boolean v2, p0, Lcom/market2345/detail/SubCommentsFragment;->showDelay:Z

    .line 91
    iput-boolean v2, p0, Lcom/market2345/detail/SubCommentsFragment;->loadDelay:Z

    .line 92
    iput-boolean v2, p0, Lcom/market2345/detail/SubCommentsFragment;->loading:Z

    .line 93
    iput-boolean v3, p0, Lcom/market2345/detail/SubCommentsFragment;->firstLoad:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mComments:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/market2345/detail/model/CommentListDataNew;

    invoke-direct {v0}, Lcom/market2345/detail/model/CommentListDataNew;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->allCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    .line 115
    new-instance v0, Lcom/market2345/detail/model/CommentListDataNew;

    invoke-direct {v0}, Lcom/market2345/detail/model/CommentListDataNew;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    .line 121
    new-instance v0, Lcom/market2345/detail/model/CommentListDataNew;

    invoke-direct {v0}, Lcom/market2345/detail/model/CommentListDataNew;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    .line 126
    const/4 v0, 0x4

    iput v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    .line 127
    new-instance v0, Lcom/market2345/detail/model/CommentListDataNew;

    invoke-direct {v0}, Lcom/market2345/detail/model/CommentListDataNew;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    .line 136
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u633a\u597d\u7528\u7684"

    aput-object v1, v0, v2

    const-string v1, "\u6211\u89c9\u5f97\u633a\u4e0d\u9519"

    aput-object v1, v0, v3

    const-string v1, "\u4e0d\u9519\uff0c\u8d5e\u4e00\u4e2a"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->defaultCommentGood:[Ljava/lang/String;

    .line 138
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u8fd8\u884c"

    aput-object v1, v0, v2

    const-string v1, "\u8fd8\u4e0d\u9519"

    aput-object v1, v0, v3

    const-string v1, "\u4e00\u822c\u822c"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->defaultCommentGeneral:[Ljava/lang/String;

    .line 140
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u611f\u89c9\u4e0d\u600e\u4e48\u6837"

    aput-object v1, v0, v2

    const-string v1, "\u6211\u89c9\u5f97\u4e0d\u597d\u7528"

    aput-object v1, v0, v3

    const-string v1, "\u6709\u5f85\u6539\u8fdb"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->defaultCommentPoor:[Ljava/lang/String;

    .line 154
    iput-boolean v2, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCheckedState:Z

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/detail/SubCommentsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    return v0
.end method

.method static synthetic access$002(Lcom/market2345/detail/SubCommentsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    return p1
.end method

.method static synthetic access$100(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/detail/model/CommentListDataNew;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->getCurrentCommentListDataNew()Lcom/market2345/detail/model/CommentListDataNew;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/market2345/detail/SubCommentsFragment;Lcom/market2345/model/CommentDetailInfo;)Lcom/market2345/model/CommentDetailInfo;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;
    .param p1, "x1"    # Lcom/market2345/model/CommentDetailInfo;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/market2345/detail/SubCommentsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->getCommentMark()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/market2345/detail/SubCommentsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mhander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->btnCommentCommit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->tvCommentContentRemainSize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/market2345/detail/SubCommentsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/market2345/detail/SubCommentsFragment;->loading:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/market2345/detail/SubCommentsFragment;Lcom/market2345/model/CommentListData;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;
    .param p1, "x1"    # Lcom/market2345/model/CommentListData;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/market2345/detail/SubCommentsFragment;->setCommentData(Lcom/market2345/model/CommentListData;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/market2345/detail/SubCommentsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/market2345/detail/SubCommentsFragment;->showError(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/detail/SubCommentsFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/market2345/detail/SubCommentsFragment;->loadData(II)V

    return-void
.end method

.method static synthetic access$302(Lcom/market2345/detail/SubCommentsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCheckedState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/market2345/detail/SubCommentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->showComments()V

    return-void
.end method

.method static synthetic access$500(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->rgCommentType:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->selectedListener:Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->etCommentContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/detail/SubCommentsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/detail/SubCommentsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 64
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->sid:I

    return v0
.end method

.method private changeListData(Lcom/market2345/model/CommentListData;)V
    .locals 4
    .param p1, "mDatas"    # Lcom/market2345/model/CommentListData;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 699
    if-eqz p1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->lvComments:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 702
    iget-object v0, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    .line 703
    iget-object v0, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v0, v0, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v0, v0, Lcom/market2345/model/CommentsPageInfo;->page:I

    iget-object v1, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v1, v1, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v1, v1, Lcom/market2345/model/CommentsPageInfo;->pagecount:I

    if-ne v0, v1, :cond_2

    .line 704
    invoke-virtual {p0, v2, v2, v2, v3}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    .line 710
    :goto_0
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v0, v0, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v0, v0, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 711
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v0, v0, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v0, v0, Lcom/market2345/model/CommentsPageInfo;->count:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v0, v0, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 712
    :cond_0
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    invoke-direct {p0, v2, v0}, Lcom/market2345/detail/SubCommentsFragment;->hasNoComments(ZI)V

    .line 730
    :cond_1
    :goto_1
    return-void

    .line 705
    :cond_2
    iget-object v0, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v0, v0, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v0, v0, Lcom/market2345/model/CommentsPageInfo;->page:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    .line 706
    invoke-virtual {p0, v2, v2, v3, v2}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    goto :goto_0

    .line 708
    :cond_3
    invoke-virtual {p0, v3, v2, v2, v2}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    goto :goto_0

    .line 714
    :cond_4
    invoke-direct {p0, p1}, Lcom/market2345/detail/SubCommentsFragment;->setCommentData(Lcom/market2345/model/CommentListData;)V

    .line 715
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    goto :goto_1

    .line 717
    :cond_5
    const/16 v0, 0x1b9

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v1, v1, Lcom/market2345/model/CommentInfo;->response:Lcom/market2345/model/ResponseInfo;

    iget v1, v1, Lcom/market2345/model/ResponseInfo;->code:I

    if-ne v0, v1, :cond_6

    .line 718
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    invoke-direct {p0, v2, v0}, Lcom/market2345/detail/SubCommentsFragment;->hasNoComments(ZI)V

    goto :goto_1

    .line 720
    :cond_6
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mComments:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 722
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    invoke-virtual {v0}, Lcom/market2345/detail/DetailAllCommentAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 724
    :cond_7
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    invoke-direct {p0, v2, v0}, Lcom/market2345/detail/SubCommentsFragment;->hasNoComments(ZI)V

    goto :goto_1
.end method

.method private createLocalHttpBuilder(II)Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 5
    .param p1, "currentType"    # I
    .param p2, "currentCommentPage"    # I

    .prologue
    .line 774
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 775
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=comment&d=listAndroid"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "authKey"

    const-string v3, "duotetomobile20120903"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "softId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/market2345/detail/SubCommentsFragment;->sid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v1, v2, p2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setKeyWord(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 777
    return-object v0
.end method

.method private getComment()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 674
    const-string v0, ""

    .line 676
    .local v0, "comment":Ljava/lang/String;
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 678
    .local v1, "r":Ljava/util/Random;
    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->rgCommentType:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 689
    const-string v0, ""

    .line 693
    :goto_0
    return-object v0

    .line 680
    :pswitch_0
    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->defaultCommentGood:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v0, v2, v3

    .line 681
    goto :goto_0

    .line 683
    :pswitch_1
    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->defaultCommentGeneral:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v0, v2, v3

    .line 684
    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->defaultCommentPoor:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v0, v2, v3

    .line 687
    goto :goto_0

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x7f0903b1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCommentMark()I
    .locals 2

    .prologue
    .line 654
    const/4 v0, 0x1

    .line 655
    .local v0, "mark":I
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->rgCommentType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 666
    const/4 v0, 0x1

    .line 670
    :goto_0
    return v0

    .line 657
    :pswitch_0
    const/4 v0, 0x1

    .line 658
    goto :goto_0

    .line 660
    :pswitch_1
    const/4 v0, 0x2

    .line 661
    goto :goto_0

    .line 663
    :pswitch_2
    const/4 v0, 0x3

    .line 664
    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x7f0903b1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentCommentListDataNew()Lcom/market2345/detail/model/CommentListDataNew;
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->allCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    .line 274
    :goto_0
    return-object v0

    .line 268
    :cond_0
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    goto :goto_0

    .line 270
    :cond_1
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 271
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    goto :goto_0

    .line 272
    :cond_2
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 273
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    goto :goto_0

    .line 274
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNoComments(ZI)V
    .locals 4
    .param p1, "isClickable"    # Z
    .param p2, "type"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    invoke-virtual {v0}, Lcom/market2345/detail/DetailAllCommentAdapter;->notifyDataSetChanged()V

    .line 547
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->lvComments:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->pbCommentLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->tvCommentNoData:Landroid/widget/TextView;

    const-string v1, "#1a1a1a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    if-nez p1, :cond_0

    .line 551
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 552
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    .line 553
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->rlCommentLoadingNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->tvCommentNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->vCommentsIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->etCommentContent:Landroid/widget/EditText;

    const v1, 0x7f0b00f0

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->rlCommentLoadingNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->tvCommentNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->tvCommentNoData:Landroid/widget/TextView;

    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 561
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->tvCommentNoData:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u66f4\u591a\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->tvCommentNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method

.method private initAdapter()V
    .locals 4

    .prologue
    .line 800
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    if-nez v0, :cond_0

    .line 801
    new-instance v0, Lcom/market2345/detail/DetailAllCommentAdapter;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->mComments:Ljava/util/List;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/market2345/detail/SubCommentsFragment;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/market2345/detail/DetailAllCommentAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    .line 802
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    invoke-virtual {v0, p0}, Lcom/market2345/detail/DetailAllCommentAdapter;->setLazyLoadListener(Lcom/market2345/detail/DetailAllCommentAdapter$LazyloadListener;)V

    .line 803
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->lvComments:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 805
    :cond_0
    return-void
.end method

.method private initCheckListener1111()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/market2345/detail/SubCommentsFragment$4;

    invoke-direct {v0, p0}, Lcom/market2345/detail/SubCommentsFragment$4;-><init>(Lcom/market2345/detail/SubCommentsFragment;)V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->localCommentListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 295
    new-instance v0, Lcom/market2345/detail/SubCommentsFragment$5;

    invoke-direct {v0, p0}, Lcom/market2345/detail/SubCommentsFragment$5;-><init>(Lcom/market2345/detail/SubCommentsFragment;)V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->commentsCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 329
    new-instance v0, Lcom/market2345/detail/SubCommentsFragment$6;

    invoke-direct {v0, p0}, Lcom/market2345/detail/SubCommentsFragment$6;-><init>(Lcom/market2345/detail/SubCommentsFragment;)V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->commitListener:Landroid/view/View$OnClickListener;

    .line 379
    new-instance v0, Lcom/market2345/detail/SubCommentsFragment$7;

    invoke-direct {v0, p0}, Lcom/market2345/detail/SubCommentsFragment$7;-><init>(Lcom/market2345/detail/SubCommentsFragment;)V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->selectedListener:Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;

    .line 396
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->initCheckListener1111()V

    .line 428
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->allComments:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->commentsCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 429
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralComments:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->commentsCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 430
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveComments:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->commentsCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 431
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeComments:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->commentsCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 433
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->btnCommentCommit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->commitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->rbCommentTypeGood:Lcom/market2345/customview/DrawableCenterRadioButton;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->localCommentListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DrawableCenterRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 435
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->rbCommentTypePoor:Lcom/market2345/customview/DrawableCenterRadioButton;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->localCommentListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DrawableCenterRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 436
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->rbCommentTypeGeneral:Lcom/market2345/customview/DrawableCenterRadioButton;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->localCommentListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DrawableCenterRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 438
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->etCommentContent:Landroid/widget/EditText;

    new-instance v1, Lcom/market2345/detail/SubCommentsFragment$8;

    invoke-direct {v1, p0}, Lcom/market2345/detail/SubCommentsFragment$8;-><init>(Lcom/market2345/detail/SubCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 466
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->getCurrentCommentListDataNew()Lcom/market2345/detail/model/CommentListDataNew;

    move-result-object v1

    iget v1, v1, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/market2345/detail/SubCommentsFragment;->loadData(II)V

    .line 467
    return-void
.end method

.method private loadData(II)V
    .locals 1
    .param p1, "currentType"    # I
    .param p2, "currentCommentPage"    # I

    .prologue
    .line 755
    invoke-virtual {p0, p1, p2}, Lcom/market2345/detail/SubCommentsFragment;->buildHttp(II)V

    .line 756
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 760
    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/market2345/detail/SubCommentsFragment;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/market2345/detail/SubCommentsFragment;

    invoke-direct {v0}, Lcom/market2345/detail/SubCommentsFragment;-><init>()V

    return-object v0
.end method

.method private setCommentData(Lcom/market2345/model/CommentListData;)V
    .locals 3
    .param p1, "datas"    # Lcom/market2345/model/CommentListData;

    .prologue
    .line 472
    if-eqz p1, :cond_0

    .line 473
    invoke-virtual {p1}, Lcom/market2345/model/CommentListData;->getType()I

    move-result v0

    .line 475
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 516
    .end local v0    # "type":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->showComments()V

    .line 517
    return-void

    .line 478
    .restart local v0    # "type":I
    :pswitch_0
    iget-object v1, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v1, v1, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v1, v1, Lcom/market2345/model/CommentsPageInfo;->page:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 479
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->allCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->count:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->all:I

    .line 480
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->count_1:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->all:I

    .line 481
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->count_2:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->all:I

    .line 482
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->count_3:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->all:I

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->allCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->page:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    .line 485
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->allCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->pagecount:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->pageCount:I

    .line 487
    iget-object v1, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v1, v1, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->allCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v1, v1, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 492
    :pswitch_1
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->page:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    .line 493
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->pagecount:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->pageCount:I

    .line 495
    iget-object v1, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v1, v1, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v1, v1, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 500
    :pswitch_2
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->page:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    .line 501
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->pagecount:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->pageCount:I

    .line 503
    iget-object v1, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v1, v1, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v1, v1, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 508
    :pswitch_3
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->page:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    .line 509
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->pagecount:I

    iput v2, v1, Lcom/market2345/detail/model/CommentListDataNew;->pageCount:I

    .line 511
    iget-object v1, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v1, v1, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v1, v1, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private setCommentsNum(IIII)V
    .locals 8
    .param p1, "allNum"    # I
    .param p2, "positiveNum"    # I
    .param p3, "neutralNum"    # I
    .param p4, "negativeNum"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 528
    const v4, 0x7f0b0005

    invoke-virtual {p0, v4}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "all":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v4, p0, Lcom/market2345/detail/SubCommentsFragment;->allComments:Landroid/widget/RadioButton;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 532
    const v4, 0x7f0b00ff

    invoke-virtual {p0, v4}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "positive":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 534
    iget-object v4, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveComments:Landroid/widget/RadioButton;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 536
    const v4, 0x7f0b00ef

    invoke-virtual {p0, v4}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "neutral":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 538
    iget-object v4, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralComments:Landroid/widget/RadioButton;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 540
    const v4, 0x7f0b00ec

    invoke-virtual {p0, v4}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "negative":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 542
    iget-object v4, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeComments:Landroid/widget/RadioButton;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 543
    return-void
.end method

.method private setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/market2345/httpnew/HttpTransactionBuilder;

    .prologue
    .line 782
    const-class v0, Lcom/market2345/model/CommentListData;

    invoke-virtual {p1, v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v0

    new-instance v1, Lcom/market2345/detail/SubCommentsFragment$9;

    invoke-direct {v1, p0}, Lcom/market2345/detail/SubCommentsFragment$9;-><init>(Lcom/market2345/detail/SubCommentsFragment;)V

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 797
    return-void
.end method

.method private showComments()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 568
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mComments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mComments:Ljava/util/List;

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 571
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mComments:Ljava/util/List;

    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->getCurrentCommentListDataNew()Lcom/market2345/detail/model/CommentListDataNew;

    move-result-object v1

    iget-object v1, v1, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 572
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mDatas:Lcom/market2345/model/CommentListData;

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mDatas:Lcom/market2345/model/CommentListData;

    iget-object v0, v0, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v0, v0, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v0, v0, Lcom/market2345/model/CommentsPageInfo;->page:I

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->mDatas:Lcom/market2345/model/CommentListData;

    iget-object v1, v1, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v1, v1, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v1, v1, Lcom/market2345/model/CommentsPageInfo;->pagecount:I

    if-ne v0, v1, :cond_1

    .line 574
    invoke-virtual {p0, v2, v2, v2, v3}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    .line 580
    :goto_0
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->allCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    invoke-virtual {v0}, Lcom/market2345/detail/model/CommentListDataNew;->getAll()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    invoke-virtual {v1}, Lcom/market2345/detail/model/CommentListDataNew;->getAll()I

    move-result v1

    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    invoke-virtual {v2}, Lcom/market2345/detail/model/CommentListDataNew;->getAll()I

    move-result v2

    iget-object v3, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    invoke-virtual {v3}, Lcom/market2345/detail/model/CommentListDataNew;->getAll()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/market2345/detail/SubCommentsFragment;->setCommentsNum(IIII)V

    .line 581
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->rlCommentLoadingNoData:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    invoke-virtual {v0}, Lcom/market2345/detail/DetailAllCommentAdapter;->notifyDataSetChanged()V

    .line 588
    :goto_1
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mDatas:Lcom/market2345/model/CommentListData;

    iget-object v0, v0, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v0, v0, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v0, v0, Lcom/market2345/model/CommentsPageInfo;->page:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 576
    invoke-virtual {p0, v2, v2, v3, v2}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    goto :goto_0

    .line 578
    :cond_2
    invoke-virtual {p0, v3, v2, v2, v2}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    goto :goto_0

    .line 584
    :cond_3
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    invoke-direct {p0, v2, v0}, Lcom/market2345/detail/SubCommentsFragment;->hasNoComments(ZI)V

    goto :goto_1
.end method

.method private showError(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 808
    if-ne p1, v1, :cond_1

    .line 810
    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    .line 811
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    invoke-virtual {p0, v0, v1, v0, v0}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public buildHttp(II)V
    .locals 2
    .param p1, "currentType"    # I
    .param p2, "currentCommentPage"    # I

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 765
    invoke-direct {p0, p1, p2}, Lcom/market2345/detail/SubCommentsFragment;->createLocalHttpBuilder(II)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v0

    .line 766
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    if-eqz v0, :cond_0

    .line 767
    invoke-direct {p0, v0}, Lcom/market2345/detail/SubCommentsFragment;->setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V

    .line 768
    invoke-virtual {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    .line 771
    .end local v0    # "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    :cond_0
    return-void
.end method

.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public isEnd()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 821
    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-nez v2, :cond_1

    move v0, v1

    .line 834
    :cond_0
    :goto_0
    return v0

    .line 824
    :cond_1
    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v2}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 828
    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->mDatas:Lcom/market2345/model/CommentListData;

    if-nez v2, :cond_2

    move v0, v1

    .line 829
    goto :goto_0

    .line 831
    :cond_2
    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->mRetry:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 832
    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->mDatas:Lcom/market2345/model/CommentListData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment;->mDatas:Lcom/market2345/model/CommentListData;

    invoke-virtual {v2}, Lcom/market2345/model/CommentListData;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isLoadOver()Z
    .locals 1

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/market2345/detail/SubCommentsFragment;->loading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lazyload()V
    .locals 2

    .prologue
    .line 840
    const-string v0, "yiming"

    const-string v1, "lazyload@Fragment"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 841
    iget-boolean v0, p0, Lcom/market2345/detail/SubCommentsFragment;->loading:Z

    if-eqz v0, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/detail/SubCommentsFragment;->loading:Z

    .line 847
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->getCurrentCommentListDataNew()Lcom/market2345/detail/model/CommentListDataNew;

    move-result-object v1

    iget v1, v1, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/market2345/detail/SubCommentsFragment;->loadData(II)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 401
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 171
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/market2345/detail/SubCommentsFragment;->sid:I

    .line 177
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->mhander:Landroid/os/Handler;

    .line 178
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const v10, 0x7f0903b4

    const/4 v9, 0x0

    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 183
    const-string v6, "yiming"

    const-string v7, "SubCommentsFragment onCreateView"

    invoke-static {v6, v7}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const v6, 0x7f0300bb

    invoke-virtual {p1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 186
    .local v3, "root":Landroid/view/View;
    const v6, 0x7f0903af

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->lvComments:Landroid/widget/ListView;

    .line 187
    const v6, 0x7f0900f4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->mLoading:Landroid/view/View;

    .line 188
    iget-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->mRetry:Landroid/view/View;

    new-instance v7, Lcom/market2345/detail/SubCommentsFragment$1;

    invoke-direct {v7, p0}, Lcom/market2345/detail/SubCommentsFragment$1;-><init>(Lcom/market2345/detail/SubCommentsFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->mLoadMore:Landroid/view/View;

    new-instance v7, Lcom/market2345/detail/SubCommentsFragment$2;

    invoke-direct {v7, p0}, Lcom/market2345/detail/SubCommentsFragment$2;-><init>(Lcom/market2345/detail/SubCommentsFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->mLoading:Landroid/view/View;

    const v7, 0x7f09012a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 218
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0300bc

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, "headPlaceHolder":Landroid/view/View;
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->etCommentContent:Landroid/widget/EditText;

    .line 220
    const v6, 0x7f0903b5

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->tvCommentContentRemainSize:Landroid/widget/TextView;

    .line 221
    const-string v1, "100"

    .line 222
    .local v1, "number":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8fd8\u53ef\u4ee5\u8f93\u5165"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u5b57"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "reminder":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 224
    .local v5, "start":I
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 225
    .local v4, "spannableString":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const-string v7, "#3097fd"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    const/16 v8, 0x21

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 226
    iget-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->tvCommentContentRemainSize:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v6, 0x7f090135

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->allComments:Landroid/widget/RadioButton;

    .line 229
    const v6, 0x7f090136

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveComments:Landroid/widget/RadioButton;

    .line 230
    const v6, 0x7f090137

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralComments:Landroid/widget/RadioButton;

    .line 231
    const v6, 0x7f090138

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeComments:Landroid/widget/RadioButton;

    .line 232
    const v6, 0x7f0903b6

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->vCommentsIndicator:Landroid/view/View;

    .line 235
    const v6, 0x7f0903b0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->rgCommentType:Landroid/widget/RadioGroup;

    .line 236
    const v6, 0x7f0903b1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/market2345/customview/DrawableCenterRadioButton;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->rbCommentTypeGood:Lcom/market2345/customview/DrawableCenterRadioButton;

    .line 237
    const v6, 0x7f0903b2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/market2345/customview/DrawableCenterRadioButton;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->rbCommentTypeGeneral:Lcom/market2345/customview/DrawableCenterRadioButton;

    .line 238
    const v6, 0x7f0903b3

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/market2345/customview/DrawableCenterRadioButton;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->rbCommentTypePoor:Lcom/market2345/customview/DrawableCenterRadioButton;

    .line 240
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->etCommentContent:Landroid/widget/EditText;

    .line 241
    const v6, 0x7f090106

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->btnCommentCommit:Landroid/widget/TextView;

    .line 242
    iget-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->lvComments:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 243
    iget-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->lvComments:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/market2345/detail/SubCommentsFragment;->foot:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 244
    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->initAdapter()V

    .line 245
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v9, v9, v9}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    .line 246
    iget-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->mLoading:Landroid/view/View;

    const v7, 0x7f09012b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->mNoData:Landroid/view/View;

    .line 247
    iget-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->mNoData:Landroid/view/View;

    const v7, 0x7f09012d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->mNoDataRetryButton:Landroid/widget/Button;

    .line 248
    iget-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->mNoDataRetryButton:Landroid/widget/Button;

    new-instance v7, Lcom/market2345/detail/SubCommentsFragment$3;

    invoke-direct {v7, p0}, Lcom/market2345/detail/SubCommentsFragment$3;-><init>(Lcom/market2345/detail/SubCommentsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v6, 0x7f0903ac

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->rlCommentLoadingNoData:Landroid/widget/RelativeLayout;

    .line 258
    const v6, 0x7f0903ad

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->pbCommentLoading:Landroid/widget/ProgressBar;

    .line 259
    const v6, 0x7f0903ae

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/market2345/detail/SubCommentsFragment;->tvCommentNoData:Landroid/widget/TextView;

    .line 260
    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->initListener()V

    .line 261
    return-object v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 649
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 650
    invoke-super {p0}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onDestroy()V

    .line 651
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    const-string v0, "http://zhushou.2345.com/index.php?c=comment&d=listAndroid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    const/4 v0, 0x1

    iget v1, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    invoke-direct {p0, v0, v1}, Lcom/market2345/detail/SubCommentsFragment;->hasNoComments(ZI)V

    goto :goto_0

    .line 642
    :cond_2
    const-string v0, "http://zhushou.2345.com/index.php?c=comment&d=addArd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/market2345/detail/event/CommentEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/market2345/detail/event/CommentEvent;

    .prologue
    .line 733
    const-string v1, "SubDetailFragment"

    invoke-virtual {p1}, Lcom/market2345/detail/event/CommentEvent;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {p1}, Lcom/market2345/detail/event/CommentEvent;->getCommentInfo()Lcom/market2345/model/CommentDetailInfo;

    move-result-object v0

    .line 735
    .local v0, "info":Lcom/market2345/model/CommentDetailInfo;
    invoke-virtual {p0, v0}, Lcom/market2345/detail/SubCommentsFragment;->showNewComment(Lcom/market2345/model/CommentDetailInfo;)V

    .line 737
    .end local v0    # "info":Lcom/market2345/model/CommentDetailInfo;
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const v2, 0x7f0b0047

    const/4 v4, 0x0

    .line 592
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const-string v0, "http://zhushou.2345.com/index.php?c=comment&d=addArd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const-string v0, "200"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 597
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->vCommentsIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->rgCommentType:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 599
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->etCommentContent:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->etCommentContent:Landroid/widget/EditText;

    const-string v1, "\u6211\u8981\u8bf4\u4e24\u53e5~"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 601
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/market2345/detail/event/CommentEvent;

    const-string v2, "SubCommentsFragment"

    iget-object v3, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    invoke-direct {v1, v2, v3}, Lcom/market2345/detail/event/CommentEvent;-><init>(Ljava/lang/String;Lcom/market2345/model/CommentDetailInfo;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->allCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v0, v0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 604
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iget v0, v0, Lcom/market2345/model/CommentDetailInfo;->mark:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 605
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v0, v0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 614
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->showComments()V

    .line 615
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0048

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iget v0, v0, Lcom/market2345/model/CommentDetailInfo;->mark:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 608
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v0, v0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 610
    :cond_4
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iget v0, v0, Lcom/market2345/model/CommentDetailInfo;->mark:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 611
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v0, v0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 616
    :cond_5
    const-string v0, "411"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 618
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b018b

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 619
    :cond_6
    const-string v0, "412"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 621
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b00f9

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 622
    :cond_7
    const-string v0, "413"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 624
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b007a

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 625
    :cond_8
    const-string v0, "414"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 627
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 629
    :cond_9
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/market2345/detail/SubCommentsFragment;->tag:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public showNewComment(Lcom/market2345/model/CommentDetailInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/market2345/model/CommentDetailInfo;

    .prologue
    const/4 v2, 0x0

    .line 740
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->vCommentsIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->etCommentContent:Landroid/widget/EditText;

    const-string v1, "\u6211\u8981\u8bf4\u4e24\u53e5~"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->allCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v0, v0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 744
    iget v0, p1, Lcom/market2345/model/CommentDetailInfo;->mark:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 745
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->neutralCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v0, v0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 751
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->showComments()V

    .line 752
    return-void

    .line 746
    :cond_1
    iget v0, p1, Lcom/market2345/model/CommentDetailInfo;->mark:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 747
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->negativeCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v0, v0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 748
    :cond_2
    iget v0, p1, Lcom/market2345/model/CommentDetailInfo;->mark:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 749
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment;->positiveCommentsList:Lcom/market2345/detail/model/CommentListDataNew;

    iget-object v0, v0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public showSelf()V
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/detail/SubCommentsFragment;->loadDelay:Z

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-boolean v0, p0, Lcom/market2345/detail/SubCommentsFragment;->firstLoad:Z

    if-eqz v0, :cond_0

    .line 419
    iget v0, p0, Lcom/market2345/detail/SubCommentsFragment;->currentType:I

    invoke-direct {p0}, Lcom/market2345/detail/SubCommentsFragment;->getCurrentCommentListDataNew()Lcom/market2345/detail/model/CommentListDataNew;

    move-result-object v1

    iget v1, v1, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/market2345/detail/SubCommentsFragment;->loadData(II)V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/detail/SubCommentsFragment;->firstLoad:Z

    goto :goto_0
.end method
