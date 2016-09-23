.class Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;
.super Landroid/os/Handler;
.source "LeftSlidingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x1f40

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 526
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 527
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_8

    .line 528
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-boolean v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->isDown:Z

    if-eqz v1, :cond_3

    .line 529
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->timer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$500(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    add-int/lit8 v1, v1, -0xc

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    add-int/lit8 v1, v1, -0xc

    :goto_0
    iput v1, v3, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    .line 531
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    if-nez v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iput-boolean v2, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->isDown:Z

    .line 558
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    if-lt v1, v5, :cond_6

    .line 559
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->imageSrc:Landroid/widget/ImageView;

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 560
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    const v2, 0x7f0200bd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    :goto_2
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->imageSrc:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 570
    .local v0, "clip":Landroid/graphics/drawable/ClipDrawable;
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 571
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevelChange()V

    .line 574
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iput-boolean v4, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->isOver:Z

    .line 579
    .end local v0    # "clip":Landroid/graphics/drawable/ClipDrawable;
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v1, v2

    .line 530
    goto :goto_0

    .line 538
    :cond_3
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    add-int/lit8 v1, v1, 0xc

    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v3, v3, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->endLevel:I

    if-gt v1, v3, :cond_4

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    add-int/lit8 v1, v1, 0xc

    :goto_4
    iput v1, v2, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    .line 540
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v2, v2, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->endLevel:I

    if-ne v1, v2, :cond_0

    .line 542
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iput-boolean v4, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->isDown:Z

    .line 544
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->processCount:I
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$100(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)I

    move-result v1

    if-lez v1, :cond_5

    .line 545
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6e05\u7406\u540e\u53f0\u8f6f\u4ef6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->processCount:I
    invoke-static {v3}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$100(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\uff0c\u91ca\u653e\u5185\u5b58"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->processSize:Ljava/lang/String;
    invoke-static {v3}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$200(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\u5ef6\u957f\u5f85\u673a\u65f6\u95f4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->saveTime:I
    invoke-static {v3}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$300(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5206\u949f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 550
    :goto_5
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->task:Ljava/util/TimerTask;
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$600(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 551
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # setter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->task:Ljava/util/TimerTask;
    invoke-static {v1, v6}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$602(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 552
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->timer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$500(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 553
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # setter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->timer:Ljava/util/Timer;
    invoke-static {v1, v6}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$502(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;Ljava/util/Timer;)Ljava/util/Timer;

    goto/16 :goto_1

    .line 538
    :cond_4
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->endLevel:I

    goto/16 :goto_4

    .line 547
    :cond_5
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u60a8\u7684\u7231\u673a\u5df2\u5904\u4e8e\u6700\u4f73\u72b6\u6001,\u4e0d\u9700\u8981\u52a0\u901f"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 561
    :cond_6
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    if-ge v1, v5, :cond_7

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    const/16 v2, 0x1770

    if-le v1, v2, :cond_7

    .line 562
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->imageSrc:Landroid/widget/ImageView;

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 563
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 565
    :cond_7
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->imageSrc:Landroid/widget/ImageView;

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 566
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->waterLevel:Landroid/widget/ImageView;

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 575
    :cond_8
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 577
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->mText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$700(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$5;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v3, v3, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->actualLevel:I

    invoke-virtual {v2, v3}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getProgress(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
