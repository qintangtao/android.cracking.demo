.class public Lcom/market2345/detail/SubDetailFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "SubDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;


# static fields
.field private static final ALL_COMMENTS:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field public static currentCommentsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/CommentDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

.field private allCommentsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/CommentDetailInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private allNum:I

.field private app:Lcom/market2345/model/App;

.field private appDetail:Lcom/market2345/model/SingleAppResp;

.field private appdetail_summary:Landroid/widget/TextView;

.field private author:Landroid/widget/LinearLayout;

.field private authorLeft:Landroid/widget/TextView;

.field private bigImageViewListener:Landroid/view/View$OnClickListener;

.field private btnCheckMore:Landroid/widget/Button;

.field private btnCommentCommit:Landroid/widget/Button;

.field private checkMoreComments:Landroid/widget/RelativeLayout;

.field private check_big_img_0:Landroid/widget/ImageView;

.field private check_big_img_1:Landroid/widget/ImageView;

.field private check_big_img_2:Landroid/widget/ImageView;

.field private check_big_img_3:Landroid/widget/ImageView;

.field private check_big_img_4:Landroid/widget/ImageView;

.field private currentCheckedState:Z

.field private currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

.field private currentCommentPage:I

.field private currentType:I

.field private final defaultCommentGeneral:[Ljava/lang/String;

.field private final defaultCommentGood:[Ljava/lang/String;

.field private final defaultCommentPoor:[Ljava/lang/String;

.field private etCommentContent:Landroid/widget/EditText;

.field private expandButton:Lcom/market2345/customview/ToggleText;

.field private generalDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private generalPercent:Landroid/widget/TextView;

.field private general_clip:Landroid/widget/ImageView;

.field private goodDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private goodPercent:Landroid/widget/TextView;

.field private good_clip:Landroid/widget/ImageView;

.field private isCommentFirstClick:Z

.field private languageLeft:Landroid/widget/TextView;

.field private llComments:Landroid/widget/LinearLayout;

.field private ll_tag:Landroid/widget/LinearLayout;

.field private lvFiveComments:Lcom/market2345/customview/DropDownListView;

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

.field private mhander:Landroid/os/Handler;

.field private negativeNum:I

.field private neutralNum:I

.field private p:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pageComment:Lcom/market2345/model/CommentInfo;

.field private personCount:Landroid/widget/TextView;

.field private pic_0:Landroid/widget/ImageView;

.field private pic_1:Landroid/widget/ImageView;

.field private pic_2:Landroid/widget/ImageView;

.field private pic_3:Landroid/widget/ImageView;

.field private pic_4:Landroid/widget/ImageView;

.field private poorDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private poorPercent:Landroid/widget/TextView;

.field private poor_clip:Landroid/widget/ImageView;

.field private positiveNum:I

.field private rbCommentTypeGeneral:Lcom/market2345/customview/DrawableCenterRadioButton;

.field private rbCommentTypeGood:Lcom/market2345/customview/DrawableCenterRadioButton;

.field private rbCommentTypePoor:Lcom/market2345/customview/DrawableCenterRadioButton;

.field private rgCommentType:Landroid/widget/RadioGroup;

.field private rl_pic_0:Landroid/widget/RelativeLayout;

.field private rl_pic_1:Landroid/widget/RelativeLayout;

.field private rl_pic_2:Landroid/widget/RelativeLayout;

.field private rl_pic_3:Landroid/widget/RelativeLayout;

.field private rl_pic_4:Landroid/widget/RelativeLayout;

.field private score:Landroid/widget/TextView;

.field private showDelay:Z

.field private sid:I

.field private supportSystem:Landroid/widget/TextView;

.field private tag:Ljava/lang/String;

.field private tagLinstener:Landroid/view/View$OnClickListener;

.field private tvCommentContentRemainSize:Landroid/widget/TextView;

.field private updateRight:Landroid/widget/TextView;

.field private versionLeft:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/market2345/detail/SubDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/detail/SubDetailFragment;->TAG:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 78
    iput-boolean v2, p0, Lcom/market2345/detail/SubDetailFragment;->showDelay:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    .line 102
    iput v3, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentPage:I

    .line 105
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u633a\u597d\u7528\u7684"

    aput-object v1, v0, v2

    const-string v1, "\u6211\u89c9\u5f97\u633a\u4e0d\u9519"

    aput-object v1, v0, v3

    const-string v1, "\u4e0d\u9519\uff0c\u8d5e\u4e00\u4e2a"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->defaultCommentGood:[Ljava/lang/String;

    .line 107
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u8fd8\u884c"

    aput-object v1, v0, v2

    const-string v1, "\u8fd8\u4e0d\u9519"

    aput-object v1, v0, v3

    const-string v1, "\u4e00\u822c\u822c"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->defaultCommentGeneral:[Ljava/lang/String;

    .line 109
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u611f\u89c9\u4e0d\u600e\u4e48\u6837"

    aput-object v1, v0, v2

    const-string v1, "\u6211\u89c9\u5f97\u4e0d\u597d\u7528"

    aput-object v1, v0, v3

    const-string v1, "\u6709\u5f85\u6539\u8fdb"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->defaultCommentPoor:[Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/market2345/detail/SubDetailFragment;->currentCheckedState:Z

    .line 125
    iput-boolean v3, p0, Lcom/market2345/detail/SubDetailFragment;->isCommentFirstClick:Z

    .line 129
    const/4 v0, 0x4

    iput v0, p0, Lcom/market2345/detail/SubDetailFragment;->currentType:I

    .line 537
    new-instance v0, Lcom/market2345/detail/SubDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/market2345/detail/SubDetailFragment$3;-><init>(Lcom/market2345/detail/SubDetailFragment;)V

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->bigImageViewListener:Landroid/view/View$OnClickListener;

    .line 553
    new-instance v0, Lcom/market2345/detail/SubDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/market2345/detail/SubDetailFragment$4;-><init>(Lcom/market2345/detail/SubDetailFragment;)V

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->tagLinstener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private LoadData()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/detail/SubDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->tvCommentContentRemainSize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/detail/SubDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appdetail_summary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/detail/SubDetailFragment;)Lcom/market2345/customview/ToggleText;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->expandButton:Lcom/market2345/customview/ToggleText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/detail/SubDetailFragment;)Lcom/market2345/model/SingleAppResp;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/SubDetailFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    return-object v0
.end method

.method private addTags(Landroid/widget/LinearLayout;[Ljava/lang/String;)V
    .locals 18
    .param p1, "tagContainer"    # Landroid/widget/LinearLayout;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/detail/SubDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x7f080000

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 497
    .local v3, "marginTopRight_10":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/detail/SubDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080001

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 498
    .local v4, "paddingLeft_15":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/detail/SubDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080002

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 499
    .local v5, "paddingRight_5":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 500
    .local v9, "screenWidth":I
    const/4 v1, 0x0

    .line 501
    .local v1, "allWidth":I
    const/4 v11, 0x0

    .line 503
    .local v11, "textWidth":I
    sub-int v15, v9, v4

    sub-int v14, v15, v5

    .line 504
    .local v14, "width":I
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-direct {v7, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 505
    .local v7, "rowLayout":Landroid/widget/LinearLayout;
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 506
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 507
    .local v8, "rowParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 508
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 512
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v2, v15, :cond_1

    .line 513
    aget-object v15, p2, v2

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 515
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    const v16, 0x7f0300be

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 516
    .local v13, "view":Landroid/view/View;
    const v15, 0x7f0903e3

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 517
    .local v12, "tv":Landroid/widget/TextView;
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/detail/SubDetailFragment;->tagLinstener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    invoke-virtual {v12}, Landroid/widget/TextView;->getTextSize()F

    move-result v15

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 522
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    float-to-int v11, v15

    .line 524
    sub-int v15, v14, v1

    mul-int/lit8 v16, v3, 0x3

    add-int v16, v16, v11

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 525
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    :goto_1
    add-int v15, v1, v11

    mul-int/lit8 v16, v3, 0x3

    add-int v1, v15, v16

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_0
    const/4 v1, 0x0

    .line 528
    new-instance v7, Landroid/widget/LinearLayout;

    .end local v7    # "rowLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-direct {v7, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 529
    .restart local v7    # "rowLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 530
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 535
    .end local v10    # "tag":Ljava/lang/String;
    .end local v12    # "tv":Landroid/widget/TextView;
    .end local v13    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getComment()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 852
    const-string v0, ""

    .line 854
    .local v0, "comment":Ljava/lang/String;
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 856
    .local v1, "r":Ljava/util/Random;
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->rgCommentType:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 867
    const-string v0, ""

    .line 871
    :goto_0
    return-object v0

    .line 858
    :pswitch_0
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->defaultCommentGood:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v0, v2, v3

    .line 859
    goto :goto_0

    .line 861
    :pswitch_1
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->defaultCommentGeneral:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v0, v2, v3

    .line 862
    goto :goto_0

    .line 864
    :pswitch_2
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->defaultCommentPoor:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v0, v2, v3

    .line 865
    goto :goto_0

    .line 856
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
    .line 832
    const/4 v0, 0x1

    .line 833
    .local v0, "mark":I
    iget-object v1, p0, Lcom/market2345/detail/SubDetailFragment;->rgCommentType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 844
    const/4 v0, 0x1

    .line 848
    :goto_0
    return v0

    .line 835
    :pswitch_0
    const/4 v0, 0x1

    .line 836
    goto :goto_0

    .line 838
    :pswitch_1
    const/4 v0, 0x2

    .line 839
    goto :goto_0

    .line 841
    :pswitch_2
    const/4 v0, 0x3

    .line 842
    goto :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x7f0903b1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMyDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getSpannableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "all"    # Ljava/lang/String;
    .param p2, "sub"    # Ljava/lang/String;
    .param p3, "color"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 567
    .local v1, "start":I
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 568
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 569
    return-object v0
.end method

.method private hasNoComments()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->llComments:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->etCommentContent:Landroid/widget/EditText;

    const v1, 0x7f0b00f0

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 708
    return-void
.end method

.method private initComment(Lcom/market2345/model/CommentInfo;ZI)V
    .locals 4
    .param p1, "pageComment"    # Lcom/market2345/model/CommentInfo;
    .param p2, "add"    # Z
    .param p3, "type"    # I

    .prologue
    .line 711
    const/4 v2, 0x4

    if-ne v2, p3, :cond_1

    .line 712
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 713
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    .line 715
    iget-object v2, p1, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->count:I

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->allNum:I

    .line 716
    iget-object v2, p1, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->count_1:I

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    .line 717
    iget-object v2, p1, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->count_2:I

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    .line 718
    iget-object v2, p1, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->count_3:I

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->negativeNum:I

    .line 719
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 720
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/CommentDetailInfo;

    .line 721
    .local v0, "comment":Lcom/market2345/model/CommentDetailInfo;
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 723
    .end local v0    # "comment":Lcom/market2345/model/CommentDetailInfo;
    :cond_0
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 727
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz p2, :cond_2

    .line 728
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    iget-object v3, p1, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 730
    :cond_2
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    iput-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    .line 731
    invoke-virtual {p0, p3}, Lcom/market2345/detail/SubDetailFragment;->showComments(I)V

    .line 732
    return-void
.end method

.method private initComments(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 891
    .local p1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 892
    .local v1, "type":I
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 894
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 895
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->hasNoComments()V

    .line 929
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 899
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Lcom/market2345/model/CommentInfo;

    if-eqz v2, :cond_6

    .line 900
    check-cast v0, Lcom/market2345/model/CommentInfo;

    .end local v0    # "obj":Ljava/lang/Object;
    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    .line 902
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 903
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v2, v2, Lcom/market2345/model/CommentsPageInfo;->count:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 904
    :cond_2
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->hasNoComments()V

    goto :goto_0

    .line 906
    :cond_3
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/market2345/detail/SubDetailFragment;->initComment(Lcom/market2345/model/CommentInfo;ZI)V

    .line 907
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/market2345/detail/event/CommentNumEvent;

    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v4, v4, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v4, v4, Lcom/market2345/model/CommentsPageInfo;->count:I

    invoke-direct {v3, v4}, Lcom/market2345/detail/event/CommentNumEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 910
    :cond_4
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 912
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->hasNoComments()V

    goto :goto_0

    .line 914
    :cond_5
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b0055

    invoke-virtual {p0, v3}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 917
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_6
    const-string v2, "441"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 918
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->currentType:I

    packed-switch v2, :pswitch_data_0

    .line 927
    :cond_7
    :goto_1
    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubDetailFragment;->showComments(I)V

    goto :goto_0

    .line 920
    :pswitch_0
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    if-nez v2, :cond_7

    .line 921
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    .line 922
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    iput-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    goto :goto_1

    .line 918
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private initData()V
    .locals 6

    .prologue
    .line 171
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->versionLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    iget-object v1, v1, Lcom/market2345/model/App;->version:Ljava/lang/String;

    invoke-static {v1}, Lcom/market2345/common/util/Utils;->getTwelveLengthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->languageLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    iget-object v1, v1, Lcom/market2345/model/App;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->updateRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    iget-object v1, v1, Lcom/market2345/model/App;->publicDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->supportSystem:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b89\u5353"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    iget-object v2, v2, Lcom/market2345/model/App;->system:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    iget-object v0, v0, Lcom/market2345/model/App;->author:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->author:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->authorLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    iget-object v1, v1, Lcom/market2345/model/App;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    iget-object v0, v0, Lcom/market2345/model/App;->mark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->score:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    iget-object v1, v1, Lcom/market2345/model/App;->mark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_1
    sget-object v0, Lcom/market2345/detail/DetailActivity;->pair:Landroid/util/Pair;

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->p:Landroid/util/Pair;

    .line 184
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->p:Landroid/util/Pair;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->p:Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/market2345/detail/SubDetailFragment;->initComments(Landroid/util/Pair;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->sid:I

    iget v3, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentPage:I

    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->currentType:I

    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->mhander:Landroid/os/Handler;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/market2345/http/MarketAPI;->getComments(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;IIILandroid/os/Handler;)V

    goto :goto_0
.end method

.method private initDatas()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 442
    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    if-eqz v7, :cond_3

    .line 443
    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v7, v7, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    if-eqz v7, :cond_3

    .line 445
    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v7, v7, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v7, v7, Lcom/market2345/model/App;->smallimgInfo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 446
    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v7, v7, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v7, v7, Lcom/market2345/model/App;->smallimgInfo:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "allUrls":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    .line 448
    new-instance v7, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const v8, 0x7f020045

    invoke-virtual {v7, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    const v8, 0x7f020045

    invoke-virtual {v7, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    const v8, 0x7f020045

    invoke-virtual {v7, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v7, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 460
    .local v4, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    const/4 v7, 0x5

    new-array v5, v7, [Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->pic_0:Landroid/widget/ImageView;

    aput-object v7, v5, v10

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->pic_1:Landroid/widget/ImageView;

    aput-object v7, v5, v9

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->pic_2:Landroid/widget/ImageView;

    aput-object v7, v5, v11

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->pic_3:Landroid/widget/ImageView;

    aput-object v7, v5, v12

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->pic_4:Landroid/widget/ImageView;

    aput-object v7, v5, v13

    .line 461
    .local v5, "picImageViews":[Landroid/widget/ImageView;
    const/4 v7, 0x5

    new-array v2, v7, [Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->check_big_img_0:Landroid/widget/ImageView;

    aput-object v7, v2, v10

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->check_big_img_1:Landroid/widget/ImageView;

    aput-object v7, v2, v9

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->check_big_img_2:Landroid/widget/ImageView;

    aput-object v7, v2, v11

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->check_big_img_3:Landroid/widget/ImageView;

    aput-object v7, v2, v12

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->check_big_img_4:Landroid/widget/ImageView;

    aput-object v7, v2, v13

    .line 462
    .local v2, "checkPicImageViews":[Landroid/widget/ImageView;
    const/4 v7, 0x5

    new-array v6, v7, [Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->rl_pic_0:Landroid/widget/RelativeLayout;

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->rl_pic_1:Landroid/widget/RelativeLayout;

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->rl_pic_2:Landroid/widget/RelativeLayout;

    aput-object v7, v6, v11

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->rl_pic_3:Landroid/widget/RelativeLayout;

    aput-object v7, v6, v12

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->rl_pic_4:Landroid/widget/RelativeLayout;

    aput-object v7, v6, v13

    .line 463
    .local v6, "rlPic":[Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_1

    array-length v7, v5

    if-ge v3, v7, :cond_1

    .line 464
    aget-object v7, v1, v3

    invoke-static {v7}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 465
    aget-object v7, v6, v3

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    aget-object v8, v1, v3

    aget-object v9, v5, v3

    invoke-virtual {v7, v8, v9, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 468
    aget-object v7, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 469
    aget-object v7, v5, v3

    iget-object v8, p0, Lcom/market2345/detail/SubDetailFragment;->bigImageViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    aget-object v7, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 472
    aget-object v7, v2, v3

    iget-object v8, p0, Lcom/market2345/detail/SubDetailFragment;->bigImageViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "allUrls":[Ljava/lang/String;
    .end local v2    # "checkPicImageViews":[Landroid/widget/ImageView;
    .end local v3    # "i":I
    .end local v4    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .end local v5    # "picImageViews":[Landroid/widget/ImageView;
    .end local v6    # "rlPic":[Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v7, v7, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v7, v7, Lcom/market2345/model/App;->tagName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 480
    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v7, v7, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v7, v7, Lcom/market2345/model/App;->tagName:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "allTags":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v7, v0

    if-lez v7, :cond_2

    .line 482
    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->ll_tag:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->ll_tag:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v0}, Lcom/market2345/detail/SubDetailFragment;->addTags(Landroid/widget/LinearLayout;[Ljava/lang/String;)V

    .line 488
    .end local v0    # "allTags":[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v7, v7, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v7, v7, Lcom/market2345/model/App;->summary:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 489
    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v7, v7, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v7, v7, Lcom/market2345/model/App;->summary:Ljava/lang/String;

    invoke-direct {p0, v7, v10}, Lcom/market2345/detail/SubDetailFragment;->setExpandButtonDisplay(Ljava/lang/String;Z)V

    .line 493
    :cond_3
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->initDatas()V

    .line 288
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->expandButton:Lcom/market2345/customview/ToggleText;

    invoke-virtual {v0, p0}, Lcom/market2345/customview/ToggleText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->btnCommentCommit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->rbCommentTypeGood:Lcom/market2345/customview/DrawableCenterRadioButton;

    invoke-virtual {v0, p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->rbCommentTypePoor:Lcom/market2345/customview/DrawableCenterRadioButton;

    invoke-virtual {v0, p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->rbCommentTypeGeneral:Lcom/market2345/customview/DrawableCenterRadioButton;

    invoke-virtual {v0, p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->btnCheckMore:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->rbCommentTypeGood:Lcom/market2345/customview/DrawableCenterRadioButton;

    invoke-virtual {v0, p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 300
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->rbCommentTypePoor:Lcom/market2345/customview/DrawableCenterRadioButton;

    invoke-virtual {v0, p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 301
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->rbCommentTypeGeneral:Lcom/market2345/customview/DrawableCenterRadioButton;

    invoke-virtual {v0, p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 303
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->etCommentContent:Landroid/widget/EditText;

    new-instance v1, Lcom/market2345/detail/SubDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/market2345/detail/SubDetailFragment$1;-><init>(Lcom/market2345/detail/SubDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 331
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    .line 215
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->mhander:Landroid/os/Handler;

    .line 216
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 217
    .local v2, "root":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 219
    const v5, 0x7f0903d1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->ll_tag:Landroid/widget/LinearLayout;

    .line 220
    const v5, 0x7f0903c9

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->appdetail_summary:Landroid/widget/TextView;

    .line 221
    const v5, 0x7f0903c8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/market2345/customview/ToggleText;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->expandButton:Lcom/market2345/customview/ToggleText;

    .line 222
    const v5, 0x7f0903cb

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->versionLeft:Landroid/widget/TextView;

    .line 223
    const v5, 0x7f0903cd

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->languageLeft:Landroid/widget/TextView;

    .line 224
    const v5, 0x7f0903d0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->authorLeft:Landroid/widget/TextView;

    .line 225
    const v5, 0x7f0903cf

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->author:Landroid/widget/LinearLayout;

    .line 226
    const v5, 0x7f0903cc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->updateRight:Landroid/widget/TextView;

    .line 228
    const v5, 0x7f0903ba

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->pic_0:Landroid/widget/ImageView;

    .line 229
    const v5, 0x7f0903bd

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->pic_1:Landroid/widget/ImageView;

    .line 230
    const v5, 0x7f0903c0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->pic_2:Landroid/widget/ImageView;

    .line 231
    const v5, 0x7f0903c3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->pic_3:Landroid/widget/ImageView;

    .line 232
    const v5, 0x7f0903c6

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->pic_4:Landroid/widget/ImageView;

    .line 234
    const v5, 0x7f0903bb

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->check_big_img_0:Landroid/widget/ImageView;

    .line 235
    const v5, 0x7f0903be

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->check_big_img_1:Landroid/widget/ImageView;

    .line 236
    const v5, 0x7f0903c1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->check_big_img_2:Landroid/widget/ImageView;

    .line 237
    const v5, 0x7f0903c4

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->check_big_img_3:Landroid/widget/ImageView;

    .line 238
    const v5, 0x7f0903c7

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->check_big_img_4:Landroid/widget/ImageView;

    .line 240
    const v5, 0x7f0903b9

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->rl_pic_0:Landroid/widget/RelativeLayout;

    .line 241
    const v5, 0x7f0903bc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->rl_pic_1:Landroid/widget/RelativeLayout;

    .line 242
    const v5, 0x7f0903bf

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->rl_pic_2:Landroid/widget/RelativeLayout;

    .line 243
    const v5, 0x7f0903c2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->rl_pic_3:Landroid/widget/RelativeLayout;

    .line 244
    const v5, 0x7f0903c5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->rl_pic_4:Landroid/widget/RelativeLayout;

    .line 246
    const v5, 0x7f0903ce

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->supportSystem:Landroid/widget/TextView;

    .line 247
    const v5, 0x7f0903d5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->score:Landroid/widget/TextView;

    .line 249
    const v5, 0x7f0903d2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->llComments:Landroid/widget/LinearLayout;

    .line 251
    const v5, 0x7f0903d9

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->good_clip:Landroid/widget/ImageView;

    .line 252
    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->good_clip:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/ClipDrawable;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->goodDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 253
    const v5, 0x7f0903dc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->general_clip:Landroid/widget/ImageView;

    .line 254
    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->general_clip:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/ClipDrawable;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->generalDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 255
    const v5, 0x7f0903df

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->poor_clip:Landroid/widget/ImageView;

    .line 256
    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->poor_clip:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/ClipDrawable;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->poorDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 258
    const v5, 0x7f0903d8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->goodPercent:Landroid/widget/TextView;

    .line 259
    const v5, 0x7f0903db

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->generalPercent:Landroid/widget/TextView;

    .line 260
    const v5, 0x7f0903de

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->poorPercent:Landroid/widget/TextView;

    .line 261
    const v5, 0x7f0903d6

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->personCount:Landroid/widget/TextView;

    .line 263
    const v5, 0x7f0903e0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/market2345/customview/DropDownListView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->lvFiveComments:Lcom/market2345/customview/DropDownListView;

    .line 264
    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->lvFiveComments:Lcom/market2345/customview/DropDownListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/market2345/customview/DropDownListView;->setDropDownStyle(Z)V

    .line 265
    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->lvFiveComments:Lcom/market2345/customview/DropDownListView;

    const v6, 0x3fffffff    # 1.9999999f

    invoke-virtual {v5, v6}, Lcom/market2345/customview/DropDownListView;->setListViewMaxHeight(I)V

    .line 266
    const v5, 0x7f0903e1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->checkMoreComments:Landroid/widget/RelativeLayout;

    .line 267
    const v5, 0x7f0903e2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->btnCheckMore:Landroid/widget/Button;

    .line 269
    const v5, 0x7f0903b0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->rgCommentType:Landroid/widget/RadioGroup;

    .line 270
    const v5, 0x7f0903b1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/market2345/customview/DrawableCenterRadioButton;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->rbCommentTypeGood:Lcom/market2345/customview/DrawableCenterRadioButton;

    .line 271
    const v5, 0x7f0903b2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/market2345/customview/DrawableCenterRadioButton;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->rbCommentTypeGeneral:Lcom/market2345/customview/DrawableCenterRadioButton;

    .line 272
    const v5, 0x7f0903b3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/market2345/customview/DrawableCenterRadioButton;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->rbCommentTypePoor:Lcom/market2345/customview/DrawableCenterRadioButton;

    .line 274
    const v5, 0x7f0903b4

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->etCommentContent:Landroid/widget/EditText;

    .line 275
    const v5, 0x7f0903b5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->tvCommentContentRemainSize:Landroid/widget/TextView;

    .line 276
    const-string v0, "100"

    .line 277
    .local v0, "number":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8fd8\u53ef\u4ee5\u8f93\u5165"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5b57"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "reminder":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 279
    .local v4, "start":I
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 280
    .local v3, "spannableString":Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#3097fd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 281
    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->tvCommentContentRemainSize:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v5, 0x7f090106

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->btnCommentCommit:Landroid/widget/Button;

    .line 284
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "reminder":Ljava/lang/String;
    .end local v3    # "spannableString":Landroid/text/SpannableString;
    .end local v4    # "start":I
    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/market2345/detail/SubDetailFragment;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/market2345/detail/SubDetailFragment;

    invoke-direct {v0}, Lcom/market2345/detail/SubDetailFragment;-><init>()V

    return-object v0
.end method

.method private setCommentsNum(IIII)V
    .locals 6
    .param p1, "all"    # I
    .param p2, "positive"    # I
    .param p3, "neutral"    # I
    .param p4, "negative"    # I

    .prologue
    .line 738
    if-eqz p1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->personCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->goodPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p1

    int-to-double v4, p2

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/market2345/detail/SubDetailFragment;->getPercent(DD)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->generalPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p1

    int-to-double v4, p3

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/market2345/detail/SubDetailFragment;->getPercent(DD)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->poorPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p1

    int-to-double v4, p4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/market2345/detail/SubDetailFragment;->getPercent(DD)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->goodDrawable:Landroid/graphics/drawable/ClipDrawable;

    mul-int/lit16 v1, p2, 0x2710

    div-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 744
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->generalDrawable:Landroid/graphics/drawable/ClipDrawable;

    mul-int/lit16 v1, p3, 0x2710

    div-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 745
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->poorDrawable:Landroid/graphics/drawable/ClipDrawable;

    mul-int/lit16 v1, p4, 0x2710

    div-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 747
    :cond_0
    return-void
.end method

.method private setExpandButtonDisplay(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 417
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appdetail_summary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appdetail_summary:Landroid/widget/TextView;

    new-instance v1, Lcom/market2345/detail/SubDetailFragment$2;

    invoke-direct {v1, p0, p2}, Lcom/market2345/detail/SubDetailFragment$2;-><init>(Lcom/market2345/detail/SubDetailFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 429
    if-eqz p2, :cond_0

    .line 430
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appdetail_summary:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appdetail_summary:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method

.method private showComments(ZI)V
    .locals 8
    .param p1, "add"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 761
    sget-object v2, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 816
    :goto_0
    return-void

    .line 765
    :cond_0
    sget-object v2, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 766
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/CommentDetailInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 767
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/CommentDetailInfo;

    .line 768
    .local v0, "comment":Lcom/market2345/model/CommentDetailInfo;
    iget v2, v0, Lcom/market2345/model/CommentDetailInfo;->mark:I

    packed-switch v2, :pswitch_data_0

    .line 780
    if-nez p1, :cond_2

    .line 781
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    .line 785
    :cond_2
    :goto_2
    if-nez p1, :cond_1

    .line 786
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    if-nez v2, :cond_3

    .line 787
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 788
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 770
    :pswitch_0
    if-nez p1, :cond_2

    .line 771
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    goto :goto_2

    .line 775
    :pswitch_1
    if-nez p1, :cond_2

    .line 776
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    goto :goto_2

    .line 791
    :cond_3
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    invoke-interface {v2, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 795
    .end local v0    # "comment":Lcom/market2345/model/CommentDetailInfo;
    :cond_4
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    iput-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    .line 796
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 797
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->hasNoComments()V

    goto :goto_0

    .line 799
    :cond_5
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->llComments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->lvFiveComments:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v2, v6}, Lcom/market2345/customview/DropDownListView;->setVisibility(I)V

    .line 801
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->allNum:I

    iget v3, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    iget v5, p0, Lcom/market2345/detail/SubDetailFragment;->negativeNum:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/market2345/detail/SubDetailFragment;->setCommentsNum(IIII)V

    .line 802
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v7, :cond_6

    .line 803
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->checkMoreComments:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 808
    :goto_3
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    if-nez v2, :cond_7

    .line 809
    new-instance v2, Lcom/market2345/detail/DetailAllCommentAdapter;

    iget-object v3, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/market2345/detail/SubDetailFragment;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/market2345/detail/DetailAllCommentAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    .line 810
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->lvFiveComments:Lcom/market2345/customview/DropDownListView;

    iget-object v3, p0, Lcom/market2345/detail/SubDetailFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    invoke-virtual {v2, v3}, Lcom/market2345/customview/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 805
    :cond_6
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->checkMoreComments:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 806
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    invoke-interface {v2, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    goto :goto_3

    .line 812
    :cond_7
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    iget-object v3, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/market2345/detail/DetailAllCommentAdapter;->setList(Ljava/util/List;)V

    .line 813
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    invoke-virtual {v2}, Lcom/market2345/detail/DetailAllCommentAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 768
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getPercent(DD)Ljava/lang/Double;
    .locals 5
    .param p1, "numA"    # D
    .param p3, "numB"    # D

    .prologue
    .line 750
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, "df":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/math/BigDecimal;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p3

    div-double/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->initView()V

    .line 165
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->initData()V

    .line 166
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->initListener()V

    .line 167
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->showSelf()V

    .line 168
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 143
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    .line 148
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appDetail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/SingleAppResp;

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    .line 149
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    if-nez v0, :cond_2

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    .line 151
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->app:Lcom/market2345/model/App;

    iget v0, v0, Lcom/market2345/model/App;->sid:I

    iput v0, p0, Lcom/market2345/detail/SubDetailFragment;->sid:I

    .line 154
    :cond_2
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 820
    if-eqz p2, :cond_0

    .line 821
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 825
    :pswitch_0
    iput-boolean p2, p0, Lcom/market2345/detail/SubDetailFragment;->currentCheckedState:Z

    goto :goto_0

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x7f0903b1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 337
    :sswitch_0
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->expandButton:Lcom/market2345/customview/ToggleText;

    invoke-virtual {v0}, Lcom/market2345/customview/ToggleText;->toggle()V

    .line 338
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->expandButton:Lcom/market2345/customview/ToggleText;

    invoke-virtual {v0}, Lcom/market2345/customview/ToggleText;->isClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "AppDetail_zhankai"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->expandButton:Lcom/market2345/customview/ToggleText;

    const v1, 0x7f020014

    invoke-direct {p0, v1}, Lcom/market2345/detail/SubDetailFragment;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v4, v4, v1, v4}, Lcom/market2345/customview/ToggleText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v0, v0, Lcom/market2345/model/App;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v0, v0, Lcom/market2345/model/App;->summary:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/market2345/detail/SubDetailFragment;->setExpandButtonDisplay(Ljava/lang/String;Z)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->expandButton:Lcom/market2345/customview/ToggleText;

    const v1, 0x7f020013

    invoke-direct {p0, v1}, Lcom/market2345/detail/SubDetailFragment;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v4, v4, v1, v4}, Lcom/market2345/customview/ToggleText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v0, v0, Lcom/market2345/model/App;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v0, v0, Lcom/market2345/model/App;->summary:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/market2345/detail/SubDetailFragment;->setExpandButtonDisplay(Ljava/lang/String;Z)V

    goto :goto_0

    .line 353
    :sswitch_1
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->rgCommentType:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 354
    new-instance v10, Lcom/market2345/detail/SelectDialogFragment;

    invoke-direct {v10}, Lcom/market2345/detail/SelectDialogFragment;-><init>()V

    .line 355
    .local v10, "f":Lcom/market2345/detail/SelectDialogFragment;
    invoke-virtual {v10, p0}, Lcom/market2345/detail/SelectDialogFragment;->setSelectedListener(Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;)V

    .line 356
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SelectDialogFragment"

    invoke-virtual {v10, v0, v1}, Lcom/market2345/detail/SelectDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    .end local v10    # "f":Lcom/market2345/detail/SelectDialogFragment;
    :cond_2
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->etCommentContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, "comment":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->getComment()Ljava/lang/String;

    move-result-object v7

    .line 365
    :cond_3
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    .line 366
    .local v11, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->etCommentContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v11, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 370
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 371
    .local v8, "curMill":J
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/market2345/detail/SubDetailFragment;->sid:I

    invoke-static {v0, v1}, Lcom/market2345/util/SPUtil;->getLatestCommentTime(Landroid/content/Context;I)J

    move-result-wide v0

    sub-long v0, v8, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 372
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0100

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 376
    :cond_5
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/market2345/detail/SubDetailFragment;->sid:I

    invoke-static {v0, v8, v9, v1}, Lcom/market2345/util/SPUtil;->setLatestCommentTime(Landroid/content/Context;JI)V

    .line 378
    new-instance v0, Lcom/market2345/model/CommentDetailInfo;

    invoke-direct {v0}, Lcom/market2345/model/CommentDetailInfo;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    .line 379
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v0

    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/account/model/Account;->isLocalExisted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 380
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v1

    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/CommentDetailInfo;->uname:Ljava/lang/String;

    .line 385
    :goto_1
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iput-object v7, v0, Lcom/market2345/model/CommentDetailInfo;->comment:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {v8, v9, v1}, Lcom/market2345/common/util/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/CommentDetailInfo;->date:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->getCommentMark()I

    move-result v1

    iput v1, v0, Lcom/market2345/model/CommentDetailInfo;->mark:I

    .line 388
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iput-object v4, v0, Lcom/market2345/model/CommentDetailInfo;->child:Lcom/market2345/model/CommentDetailInfo;

    .line 389
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iget-object v2, v1, Lcom/market2345/model/CommentDetailInfo;->comment:Ljava/lang/String;

    iget-object v1, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iget v3, v1, Lcom/market2345/model/CommentDetailInfo;->mark:I

    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->sid:I

    iget-object v1, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iget-object v5, v1, Lcom/market2345/model/CommentDetailInfo;->uname:Ljava/lang/String;

    iget-object v6, p0, Lcom/market2345/detail/SubDetailFragment;->mhander:Landroid/os/Handler;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/market2345/http/MarketAPI;->commitComment(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Ljava/lang/String;IILjava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 382
    :cond_6
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/market2345/model/CommentDetailInfo;->uname:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    const v1, 0x7f0b00b6

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/CommentDetailInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 394
    .end local v7    # "comment":Ljava/lang/String;
    .end local v8    # "curMill":J
    .end local v11    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_2
    iget-boolean v0, p0, Lcom/market2345/detail/SubDetailFragment;->isCommentFirstClick:Z

    if-eqz v0, :cond_7

    .line 395
    iput-boolean v5, p0, Lcom/market2345/detail/SubDetailFragment;->isCommentFirstClick:Z

    goto/16 :goto_0

    .line 399
    :cond_7
    iget-boolean v0, p0, Lcom/market2345/detail/SubDetailFragment;->currentCheckedState:Z

    if-eqz v0, :cond_8

    .line 400
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 402
    :cond_8
    iput-boolean v6, p0, Lcom/market2345/detail/SubDetailFragment;->currentCheckedState:Z

    goto/16 :goto_0

    .line 407
    :sswitch_3
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x7f090106 -> :sswitch_1
        0x7f0903b1 -> :sswitch_2
        0x7f0903b2 -> :sswitch_2
        0x7f0903b3 -> :sswitch_2
        0x7f0903c8 -> :sswitch_0
        0x7f0903e2 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    const v0, 0x7f0300bd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 933
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onDestroy()V

    .line 934
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 935
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->adapter:Lcom/market2345/detail/DetailAllCommentAdapter;

    .line 938
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    const-string v0, "http://zhushou.2345.com/index.php?c=comment&d=addArd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {p0, v1}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

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
    .line 941
    const-string v1, "SubCommentsFragment"

    invoke-virtual {p1}, Lcom/market2345/detail/event/CommentEvent;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {p1}, Lcom/market2345/detail/event/CommentEvent;->getCommentInfo()Lcom/market2345/model/CommentDetailInfo;

    move-result-object v0

    .line 943
    .local v0, "info":Lcom/market2345/model/CommentDetailInfo;
    sget-object v1, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 944
    sget-object v1, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-virtual {p0, v0}, Lcom/market2345/detail/SubDetailFragment;->showNewComment(Lcom/market2345/model/CommentDetailInfo;)V

    .line 947
    .end local v0    # "info":Lcom/market2345/model/CommentDetailInfo;
    :cond_0
    return-void
.end method

.method public onSelect(I)V
    .locals 2
    .param p1, "buttonId"    # I

    .prologue
    .line 876
    packed-switch p1, :pswitch_data_0

    .line 887
    :goto_0
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->btnCommentCommit:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 888
    return-void

    .line 878
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->rgCommentType:Landroid/widget/RadioGroup;

    const v1, 0x7f0903b1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 881
    :pswitch_1
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->rgCommentType:Landroid/widget/RadioGroup;

    const v1, 0x7f0903b2

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 884
    :pswitch_2
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment;->rgCommentType:Landroid/widget/RadioGroup;

    const v1, 0x7f0903b3

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 876
    :pswitch_data_0
    .packed-switch 0x7f090108
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f0b0047

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 574
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    const-string v4, "http://zhushou.2345.com/index.php?c=comment&d=listAndroid"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v2, p2

    .line 579
    check-cast v2, Landroid/util/Pair;

    .line 580
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 581
    .local v3, "type":I
    iget-object p2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 583
    if-nez p2, :cond_2

    .line 584
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->hasNoComments()V

    goto :goto_0

    .line 588
    :cond_2
    instance-of v4, p2, Lcom/market2345/model/CommentInfo;

    if-eqz v4, :cond_7

    move-object v4, p2

    .line 589
    check-cast v4, Lcom/market2345/model/CommentInfo;

    iput-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    .line 591
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v4, v4, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v4, v4, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 592
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v4, v4, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v4, v4, Lcom/market2345/model/CommentsPageInfo;->count:I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v4, v4, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 593
    :cond_3
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->hasNoComments()V

    goto :goto_0

    .line 595
    :cond_4
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    invoke-direct {p0, v4, v9, v3}, Lcom/market2345/detail/SubDetailFragment;->initComment(Lcom/market2345/model/CommentInfo;ZI)V

    .line 596
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v5, Lcom/market2345/detail/event/CommentNumEvent;

    iget-object v6, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v6, v6, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v6, v6, Lcom/market2345/model/CommentsPageInfo;->count:I

    invoke-direct {v5, v6}, Lcom/market2345/detail/event/CommentNumEvent;-><init>(I)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 599
    :cond_5
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 601
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->hasNoComments()V

    goto :goto_0

    .line 603
    :cond_6
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0b0055

    invoke-virtual {p0, v5}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 606
    :cond_7
    const-string v4, "441"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 607
    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->currentType:I

    packed-switch v4, :pswitch_data_0

    .line 616
    :cond_8
    :goto_1
    invoke-virtual {p0, v3}, Lcom/market2345/detail/SubDetailFragment;->showComments(I)V

    goto/16 :goto_0

    .line 609
    :pswitch_0
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    if-nez v4, :cond_8

    .line 610
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    .line 611
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    iput-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    goto :goto_1

    .line 618
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "type":I
    :cond_9
    const-string v4, "http://zhushou.2345.com/index.php?c=comment&d=addArd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    const-string v4, "200"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 620
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->rgCommentType:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 621
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->etCommentContent:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->etCommentContent:Landroid/widget/EditText;

    const-string v5, "\u6211\u8981\u8bf4\u4e24\u53e5~"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 623
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v5, Lcom/market2345/detail/event/CommentEvent;

    const-string v6, "SubDetailFragment"

    iget-object v7, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    invoke-direct {v5, v6, v7}, Lcom/market2345/detail/event/CommentEvent;-><init>(Ljava/lang/String;Lcom/market2345/model/CommentDetailInfo;)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 624
    sget-object v4, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 625
    sget-object v4, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    sget-object v4, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_d

    .line 627
    sget-object v4, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 628
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/CommentDetailInfo;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 629
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/CommentDetailInfo;

    .line 630
    .local v0, "comment":Lcom/market2345/model/CommentDetailInfo;
    iget v4, v0, Lcom/market2345/model/CommentDetailInfo;->mark:I

    packed-switch v4, :pswitch_data_1

    .line 638
    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    .line 642
    :goto_3
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    if-nez v4, :cond_b

    .line 643
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    .line 644
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_a
    :goto_4
    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->allNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/market2345/detail/SubDetailFragment;->allNum:I

    goto :goto_2

    .line 632
    :pswitch_1
    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    goto :goto_3

    .line 635
    :pswitch_2
    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->negativeNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/market2345/detail/SubDetailFragment;->negativeNum:I

    goto :goto_3

    .line 647
    :cond_b
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    invoke-interface {v4, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 651
    .end local v0    # "comment":Lcom/market2345/model/CommentDetailInfo;
    :cond_c
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    iput-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    .line 652
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iget v4, v4, Lcom/market2345/model/CommentDetailInfo;->mark:I

    invoke-virtual {p0, v4}, Lcom/market2345/detail/SubDetailFragment;->showComments(I)V

    .line 653
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->lvFiveComments:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v4, v8}, Lcom/market2345/customview/DropDownListView;->setSelection(I)V

    .line 677
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/CommentDetailInfo;>;"
    :goto_5
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0b0048

    invoke-virtual {p0, v5}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 656
    :cond_d
    new-instance v4, Lcom/market2345/model/CommentInfo;

    invoke-direct {v4}, Lcom/market2345/model/CommentInfo;-><init>()V

    iput-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    .line 657
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    new-instance v5, Lcom/market2345/model/CommentsPageInfo;

    invoke-direct {v5}, Lcom/market2345/model/CommentsPageInfo;-><init>()V

    iput-object v5, v4, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    .line 658
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v4, v4, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iput v9, v4, Lcom/market2345/model/CommentsPageInfo;->count:I

    .line 659
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v4, v4, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iput v9, v4, Lcom/market2345/model/CommentsPageInfo;->page:I

    .line 660
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v4, v4, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iput v9, v4, Lcom/market2345/model/CommentsPageInfo;->pagecount:I

    .line 661
    iput v9, p0, Lcom/market2345/detail/SubDetailFragment;->allNum:I

    .line 662
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iget v4, v4, Lcom/market2345/model/CommentDetailInfo;->mark:I

    packed-switch v4, :pswitch_data_2

    .line 673
    :goto_6
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    .line 674
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v4, v4, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;

    iget v5, v5, Lcom/market2345/model/CommentDetailInfo;->mark:I

    invoke-direct {p0, v4, v9, v5}, Lcom/market2345/detail/SubDetailFragment;->initComment(Lcom/market2345/model/CommentInfo;ZI)V

    goto :goto_5

    .line 664
    :pswitch_3
    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    goto :goto_6

    .line 667
    :pswitch_4
    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    goto :goto_6

    .line 670
    :pswitch_5
    iget v4, p0, Lcom/market2345/detail/SubDetailFragment;->negativeNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/market2345/detail/SubDetailFragment;->negativeNum:I

    goto :goto_6

    .line 678
    :cond_e
    const-string v4, "411"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 680
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0b018b

    invoke-virtual {p0, v5}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 681
    :cond_f
    const-string v4, "412"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 683
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0b00f9

    invoke-virtual {p0, v5}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 684
    :cond_10
    const-string v4, "413"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 686
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0b007a

    invoke-virtual {p0, v5}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 687
    :cond_11
    const-string v4, "414"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 689
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 691
    :cond_12
    invoke-virtual {p0}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/market2345/detail/SubDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 630
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 662
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/market2345/detail/SubDetailFragment;->tag:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public showComments(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 757
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/market2345/detail/SubDetailFragment;->showComments(ZI)V

    .line 758
    return-void
.end method

.method public showNewComment(Lcom/market2345/model/CommentDetailInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/market2345/model/CommentDetailInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 950
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->etCommentContent:Landroid/widget/EditText;

    const-string v3, "\u6211\u8981\u8bf4\u4e24\u53e5~"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 952
    sget-object v2, Lcom/market2345/detail/SubDetailFragment;->currentCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 953
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/CommentDetailInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 954
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/CommentDetailInfo;

    .line 955
    .local v0, "comment":Lcom/market2345/model/CommentDetailInfo;
    iget v2, v0, Lcom/market2345/model/CommentDetailInfo;->mark:I

    packed-switch v2, :pswitch_data_0

    .line 963
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    .line 967
    :goto_1
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 968
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 969
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsListWhenNull:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    :cond_0
    :goto_2
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->allNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->allNum:I

    goto :goto_0

    .line 957
    :pswitch_0
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    goto :goto_1

    .line 960
    :pswitch_1
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->negativeNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->negativeNum:I

    goto :goto_1

    .line 972
    :cond_1
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 976
    .end local v0    # "comment":Lcom/market2345/model/CommentDetailInfo;
    :cond_2
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->allCommentsList:Ljava/util/List;

    iput-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->mComments:Ljava/util/List;

    .line 977
    iget v2, p1, Lcom/market2345/model/CommentDetailInfo;->mark:I

    invoke-virtual {p0, v2}, Lcom/market2345/detail/SubDetailFragment;->showComments(I)V

    .line 978
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->lvFiveComments:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v2, v5}, Lcom/market2345/customview/DropDownListView;->setSelection(I)V

    .line 1004
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/CommentDetailInfo;>;"
    :goto_3
    return-void

    .line 981
    :cond_3
    new-instance v2, Lcom/market2345/model/CommentInfo;

    invoke-direct {v2}, Lcom/market2345/model/CommentInfo;-><init>()V

    iput-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    .line 982
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    new-instance v3, Lcom/market2345/model/CommentsPageInfo;

    invoke-direct {v3}, Lcom/market2345/model/CommentsPageInfo;-><init>()V

    iput-object v3, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    .line 983
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iput v4, v2, Lcom/market2345/model/CommentsPageInfo;->count:I

    .line 984
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iput v4, v2, Lcom/market2345/model/CommentsPageInfo;->page:I

    .line 985
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iput v4, v2, Lcom/market2345/model/CommentsPageInfo;->pagecount:I

    .line 986
    iput v4, p0, Lcom/market2345/detail/SubDetailFragment;->allNum:I

    .line 987
    iget v2, p1, Lcom/market2345/model/CommentDetailInfo;->mark:I

    packed-switch v2, :pswitch_data_1

    .line 998
    :goto_4
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    .line 999
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget-object v2, v2, Lcom/market2345/model/CommentInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment;->pageComment:Lcom/market2345/model/CommentInfo;

    iget v3, p1, Lcom/market2345/model/CommentDetailInfo;->mark:I

    invoke-direct {p0, v2, v4, v3}, Lcom/market2345/detail/SubDetailFragment;->initComment(Lcom/market2345/model/CommentInfo;ZI)V

    goto :goto_3

    .line 989
    :pswitch_2
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->positiveNum:I

    goto :goto_4

    .line 992
    :pswitch_3
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->neutralNum:I

    goto :goto_4

    .line 995
    :pswitch_4
    iget v2, p0, Lcom/market2345/detail/SubDetailFragment;->negativeNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/market2345/detail/SubDetailFragment;->negativeNum:I

    goto :goto_4

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 987
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public showSelf()V
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/market2345/detail/SubDetailFragment;->showDelay:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/market2345/detail/SubDetailFragment;->LoadData()V

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/detail/SubDetailFragment;->showDelay:Z

    goto :goto_0
.end method
