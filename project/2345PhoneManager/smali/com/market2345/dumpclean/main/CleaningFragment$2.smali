.class Lcom/market2345/dumpclean/main/CleaningFragment$2;
.super Ljava/lang/Object;
.source "CleaningFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/main/CleaningFragment;->startCleanAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/main/CleaningFragment;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/main/CleaningFragment;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/market2345/dumpclean/main/CleaningFragment$2;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment$2;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    # getter for: Lcom/market2345/dumpclean/main/CleaningFragment;->datas:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/dumpclean/main/CleaningFragment;->access$200(Lcom/market2345/dumpclean/main/CleaningFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 197
    .local v0, "junkChild":Lcom/market2345/dumpclean/mode/JunkChild;
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment$2;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    # invokes: Lcom/market2345/dumpclean/main/CleaningFragment;->updateCleanProgress(Lcom/market2345/dumpclean/mode/JunkChild;)V
    invoke-static {v1, v0}, Lcom/market2345/dumpclean/main/CleaningFragment;->access$300(Lcom/market2345/dumpclean/main/CleaningFragment;Lcom/market2345/dumpclean/mode/JunkChild;)V

    .line 198
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment$2;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    # getter for: Lcom/market2345/dumpclean/main/CleaningFragment;->datas:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/dumpclean/main/CleaningFragment;->access$200(Lcom/market2345/dumpclean/main/CleaningFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment$2;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    # getter for: Lcom/market2345/dumpclean/main/CleaningFragment;->nAdapter:Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;
    invoke-static {v1}, Lcom/market2345/dumpclean/main/CleaningFragment;->access$400(Lcom/market2345/dumpclean/main/CleaningFragment;)Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/dumpclean/main/CleaningFragment$CleanAdapter;->notifyDataSetChanged()V

    .line 200
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment$2;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    iget-object v1, v1, Lcom/market2345/dumpclean/main/CleaningFragment;->handler:Landroid/os/Handler;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/market2345/dumpclean/main/CleaningFragment$2;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    # getter for: Lcom/market2345/dumpclean/main/CleaningFragment;->animationTime:J
    invoke-static {v3}, Lcom/market2345/dumpclean/main/CleaningFragment;->access$500(Lcom/market2345/dumpclean/main/CleaningFragment;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 201
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 191
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment$2;->this$0:Lcom/market2345/dumpclean/main/CleaningFragment;

    # operator++ for: Lcom/market2345/dumpclean/main/CleaningFragment;->count:I
    invoke-static {v0}, Lcom/market2345/dumpclean/main/CleaningFragment;->access$108(Lcom/market2345/dumpclean/main/CleaningFragment;)I

    .line 187
    return-void
.end method
