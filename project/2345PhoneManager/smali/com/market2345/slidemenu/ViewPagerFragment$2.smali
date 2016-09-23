.class Lcom/market2345/slidemenu/ViewPagerFragment$2;
.super Ljava/lang/Object;
.source "ViewPagerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/ViewPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ViewPagerFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/market2345/slidemenu/ViewPagerFragment$2;->this$0:Lcom/market2345/slidemenu/ViewPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment$2;->this$0:Lcom/market2345/slidemenu/ViewPagerFragment;

    invoke-virtual {v0, p1}, Lcom/market2345/slidemenu/ViewPagerFragment;->onPageScrollStateChanged(I)V

    .line 76
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment$2;->this$0:Lcom/market2345/slidemenu/ViewPagerFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/market2345/slidemenu/ViewPagerFragment;->onPageScrolled(IFI)V

    .line 65
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment$2;->this$0:Lcom/market2345/slidemenu/ViewPagerFragment;

    invoke-virtual {v0, p1}, Lcom/market2345/slidemenu/ViewPagerFragment;->leftChange(I)V

    .line 70
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment$2;->this$0:Lcom/market2345/slidemenu/ViewPagerFragment;

    invoke-virtual {v0, p1}, Lcom/market2345/slidemenu/ViewPagerFragment;->onPageSelected(I)V

    .line 71
    return-void
.end method
