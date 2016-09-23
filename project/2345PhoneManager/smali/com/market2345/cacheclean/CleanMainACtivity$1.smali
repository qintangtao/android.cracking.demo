.class Lcom/market2345/cacheclean/CleanMainACtivity$1;
.super Landroid/os/Handler;
.source "CleanMainACtivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/cacheclean/CleanMainACtivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanMainACtivity;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanMainACtivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x7f0b0039

    const/16 v8, 0x8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 140
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateVestigitalLayout()V

    .line 141
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateCacheLayout()V

    .line 142
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$000(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/market2345/cacheclean/CleanMainACtivity;->toClear:J

    .line 143
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->ani:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$100(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$200(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->isStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->ani:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$100(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 146
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mview:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$300(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 147
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mview:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$300(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->upWraper()V

    .line 150
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateNoData()V

    .line 151
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$200(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->isStart()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$200(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$000(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_2
    :goto_0
    return-void

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 173
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateVestigitalLayout()V

    goto :goto_0

    .line 175
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 177
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateVestigitalLayout()V

    goto :goto_0

    .line 179
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_7

    .line 181
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateCacheLayout()V

    goto :goto_0

    .line 183
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v8, :cond_8

    .line 185
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateDeepLayout()V

    .line 188
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mview:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$300(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 190
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mview:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$300(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mview:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$300(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->scanAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 194
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_d

    .line 196
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->ani:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$100(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->ani:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$100(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 198
    :cond_9
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mview:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$300(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 199
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mview:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$300(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->apkCleanTip:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$500(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileCleanTip:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$600(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$200(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkNum()I

    move-result v0

    if-nez v0, :cond_a

    .line 205
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->apkTopTex:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$800(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->apkStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$700(Lcom/market2345/cacheclean/CleanMainACtivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->apkBotTex:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1000(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$900(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_a
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$200(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v0

    if-nez v0, :cond_b

    .line 211
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileTopTex:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1200(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1100(Lcom/market2345/cacheclean/CleanMainACtivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileBotTex:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1300(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$900(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_b
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$000(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_c

    .line 217
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_1
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->upWraper()V

    goto/16 :goto_0

    .line 221
    :cond_c
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 227
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_e

    .line 229
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateCacheLayout()V

    goto/16 :goto_0

    .line 231
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_11

    .line 234
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$000(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$000(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$000(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_f

    .line 236
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1400(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ClearManger;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$000(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ScanResidual;->getSdCleanList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/market2345/cacheclean/ClearManger;->cleanSD(ZLjava/util/ArrayList;)V

    .line 242
    :goto_2
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateCacheLayout()V

    .line 243
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->upWraper()V

    .line 244
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateNoData()V

    .line 245
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->isOnekeyClear:Z
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1500(Lcom/market2345/cacheclean/CleanMainACtivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$000(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_10

    .line 250
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 240
    :cond_f
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # setter for: Lcom/market2345/cacheclean/CleanMainACtivity;->isOnekeyClear:Z
    invoke-static {v0, v5}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1502(Lcom/market2345/cacheclean/CleanMainACtivity;Z)Z

    goto :goto_2

    .line 254
    :cond_10
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 258
    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_12

    .line 260
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateVestigitalLayout()V

    goto/16 :goto_0

    .line 263
    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_13

    .line 265
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateVestigitalLayout()V

    goto/16 :goto_0

    .line 269
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 271
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateVestigitalLayout()V

    .line 272
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->upWraper()V

    .line 273
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateNoData()V

    .line 274
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$000(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_14

    .line 277
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :goto_3
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # setter for: Lcom/market2345/cacheclean/CleanMainACtivity;->isOnekeyClear:Z
    invoke-static {v0, v5}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1502(Lcom/market2345/cacheclean/CleanMainACtivity;Z)Z

    goto/16 :goto_0

    .line 281
    :cond_14
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$1;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
