.class Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DetailAllCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/detail/DetailAllCommentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field divider:Landroid/view/View;

.field ivCommentType:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/market2345/detail/DetailAllCommentAdapter;

.field tvCommentContent:Landroid/widget/TextView;

.field tvCommentUser:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/market2345/detail/DetailAllCommentAdapter;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;->this$0:Lcom/market2345/detail/DetailAllCommentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/detail/DetailAllCommentAdapter;Lcom/market2345/detail/DetailAllCommentAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/detail/DetailAllCommentAdapter;
    .param p2, "x1"    # Lcom/market2345/detail/DetailAllCommentAdapter$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/market2345/detail/DetailAllCommentAdapter$ViewHolder;-><init>(Lcom/market2345/detail/DetailAllCommentAdapter;)V

    return-void
.end method
