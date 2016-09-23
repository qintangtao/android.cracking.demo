.class Lcom/market2345/slidemenu/ManagementFragment2$6;
.super Ljava/lang/Object;
.source "ManagementFragment2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ManagementFragment2;->onClick(Landroid/view/View;)V
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
    .line 440
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$6;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$6;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$800(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$6;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->RAM_OPTIMING:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1700(Lcom/market2345/slidemenu/ManagementFragment2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$6;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$800(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 445
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$6;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->killBackground()V
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1800(Lcom/market2345/slidemenu/ManagementFragment2;)V

    .line 446
    return-void
.end method
