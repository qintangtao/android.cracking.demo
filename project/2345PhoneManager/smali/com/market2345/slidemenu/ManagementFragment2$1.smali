.class Lcom/market2345/slidemenu/ManagementFragment2$1;
.super Ljava/lang/Object;
.source "ManagementFragment2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ManagementFragment2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ManagementFragment2;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ManagementFragment2;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$1;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$1;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->sl:Lcom/market2345/customview/StickyLayout;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$000(Lcom/market2345/slidemenu/ManagementFragment2;)Lcom/market2345/customview/StickyLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/customview/StickyLayout;->initData()V

    .line 150
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$1;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$1;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I
    invoke-static {v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$100(Lcom/market2345/slidemenu/ManagementFragment2;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->setProgress(IF)V
    invoke-static {v0, v1, v2}, Lcom/market2345/slidemenu/ManagementFragment2;->access$200(Lcom/market2345/slidemenu/ManagementFragment2;IF)V

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$1;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$1;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->sv_content:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$300(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/market2345/slidemenu/ManagementFragment2;->canScrollVertically:Z

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$1;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->sl:Lcom/market2345/customview/StickyLayout;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$000(Lcom/market2345/slidemenu/ManagementFragment2;)Lcom/market2345/customview/StickyLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$1;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    iget-boolean v1, v1, Lcom/market2345/slidemenu/ManagementFragment2;->canScrollVertically:Z

    invoke-virtual {v0, v1}, Lcom/market2345/customview/StickyLayout;->setSticky(Z)V

    .line 155
    return-void
.end method
