.class Lcom/market2345/slidemenu/ViewPagerFragment$1;
.super Ljava/lang/Object;
.source "ViewPagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 54
    iput-object p1, p0, Lcom/market2345/slidemenu/ViewPagerFragment$1;->this$0:Lcom/market2345/slidemenu/ViewPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment$1;->this$0:Lcom/market2345/slidemenu/ViewPagerFragment;

    iget-object v0, v0, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragment$1;->this$0:Lcom/market2345/slidemenu/ViewPagerFragment;

    iget-object v1, v1, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->focusableViewAvailable(Landroid/view/View;)V

    .line 57
    return-void
.end method
