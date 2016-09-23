.class Lcom/market2345/dumpclean/CleanOverActivity$1;
.super Ljava/lang/Object;
.source "CleanOverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/CleanOverActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/CleanOverActivity;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/CleanOverActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/market2345/dumpclean/CleanOverActivity$1;->this$0:Lcom/market2345/dumpclean/CleanOverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanOverActivity$1;->this$0:Lcom/market2345/dumpclean/CleanOverActivity;

    # invokes: Lcom/market2345/dumpclean/CleanOverActivity;->initAnimSet()Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-static {v0}, Lcom/market2345/dumpclean/CleanOverActivity;->access$000(Lcom/market2345/dumpclean/CleanOverActivity;)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 57
    return-void
.end method
