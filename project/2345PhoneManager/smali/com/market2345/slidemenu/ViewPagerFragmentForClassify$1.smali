.class Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$1;
.super Ljava/lang/Object;
.source "ViewPagerFragmentForClassify.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$1;->this$0:Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$1;->this$0:Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;

    iget-object v0, v0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$1;->this$0:Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;

    iget-object v1, v1, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->focusableViewAvailable(Landroid/view/View;)V

    .line 44
    return-void
.end method
