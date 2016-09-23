.class Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FeedbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/feedback/FeedbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field rlReply:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/market2345/feedback/FeedbackAdapter;

.field tvReplyContent:Landroid/widget/TextView;

.field tvReplyTime:Landroid/widget/TextView;

.field tvUserFeedbackContent:Landroid/widget/TextView;

.field tvUserFeedbackTime:Landroid/widget/TextView;

.field tvUserName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/market2345/feedback/FeedbackAdapter;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;->this$0:Lcom/market2345/feedback/FeedbackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/feedback/FeedbackAdapter;Lcom/market2345/feedback/FeedbackAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/feedback/FeedbackAdapter;
    .param p2, "x1"    # Lcom/market2345/feedback/FeedbackAdapter$1;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/market2345/feedback/FeedbackAdapter$ViewHolder;-><init>(Lcom/market2345/feedback/FeedbackAdapter;)V

    return-void
.end method
