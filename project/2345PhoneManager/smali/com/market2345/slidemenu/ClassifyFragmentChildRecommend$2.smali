.class Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$2;
.super Ljava/lang/Object;
.source "ClassifyFragmentChildRecommend.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$2;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$2;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    const/4 v1, 0x1

    # invokes: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadingShow(I)V
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$800(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;I)V

    .line 224
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend$2;->this$0:Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    # invokes: Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->loadData()V
    invoke-static {v0}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;->access$900(Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;)V

    .line 236
    return-void
.end method
