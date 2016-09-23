.class Lcom/market2345/customview/TopicIntroduceView$1;
.super Ljava/lang/Object;
.source "TopicIntroduceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/customview/TopicIntroduceView;->showSpeed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/customview/TopicIntroduceView;


# direct methods
.method constructor <init>(Lcom/market2345/customview/TopicIntroduceView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/market2345/customview/TopicIntroduceView$1;->this$0:Lcom/market2345/customview/TopicIntroduceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/customview/TopicIntroduceView$1;->this$0:Lcom/market2345/customview/TopicIntroduceView;

    invoke-virtual {v0}, Lcom/market2345/customview/TopicIntroduceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b009b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void
.end method
