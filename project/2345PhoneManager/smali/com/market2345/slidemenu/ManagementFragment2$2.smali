.class Lcom/market2345/slidemenu/ManagementFragment2$2;
.super Ljava/lang/Object;
.source "ManagementFragment2.java"

# interfaces
.implements Lcom/market2345/customview/StickyLayout$HeightChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ManagementFragment2;->initData()V
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
    .line 203
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChange(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/4 v3, 0x0

    .line 206
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # setter for: Lcom/market2345/slidemenu/ManagementFragment2;->localScale:F
    invoke-static {v0, p1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$402(Lcom/market2345/slidemenu/ManagementFragment2;F)F

    .line 207
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->localScale:F
    invoke-static {v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$400(Lcom/market2345/slidemenu/ManagementFragment2;)F

    move-result v1

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->setProgress(F)V
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$500(Lcom/market2345/slidemenu/ManagementFragment2;F)V

    .line 208
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->localScale:F
    invoke-static {v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$400(Lcom/market2345/slidemenu/ManagementFragment2;)F

    move-result v1

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->scaleChangeWaveView(F)V
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$600(Lcom/market2345/slidemenu/ManagementFragment2;F)V

    .line 209
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->tv_progress_relpace:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$700(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I
    invoke-static {v2}, Lcom/market2345/slidemenu/ManagementFragment2;->access$100(Lcom/market2345/slidemenu/ManagementFragment2;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->tv_progress_relpace:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$700(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$800(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->tv_progress_relpace:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$700(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->previousClickCleanTime:J
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$900(Lcom/market2345/slidemenu/ManagementFragment2;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$2;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->tv_ram_prompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$800(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
