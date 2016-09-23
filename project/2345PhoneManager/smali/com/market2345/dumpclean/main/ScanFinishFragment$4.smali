.class Lcom/market2345/dumpclean/main/ScanFinishFragment$4;
.super Lcom/market2345/dumpclean/animation/AnimationListenerAdapter;
.source "ScanFinishFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/main/ScanFinishFragment;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/main/ScanFinishFragment;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment$4;->this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;

    invoke-direct {p0}, Lcom/market2345/dumpclean/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/market2345/dumpclean/animation/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 311
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment$4;->this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;

    # getter for: Lcom/market2345/dumpclean/main/ScanFinishFragment;->tv_proposal_clean:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->access$200(Lcom/market2345/dumpclean/main/ScanFinishFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment$4;->this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;

    # getter for: Lcom/market2345/dumpclean/main/ScanFinishFragment;->tv_proposal_clean:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->access$200(Lcom/market2345/dumpclean/main/ScanFinishFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    :cond_0
    return-void
.end method
