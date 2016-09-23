.class Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$2;
.super Ljava/lang/Object;
.source "ViewPagerFragmentForClassify.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
    .line 47
    iput-object p1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$2;->this$0:Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$2;->this$0:Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;

    invoke-virtual {v0, p1}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->onPageScrollStateChanged(I)V

    .line 63
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$2;->this$0:Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;

    invoke-virtual {v0, p1, p2, p3}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->onPageScrolled(IFI)V

    .line 52
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$2;->this$0:Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;

    invoke-virtual {v0, p1}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->leftChange(I)V

    .line 57
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$2;->this$0:Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;

    invoke-virtual {v0, p1}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->onPageSelected(I)V

    .line 58
    return-void
.end method
