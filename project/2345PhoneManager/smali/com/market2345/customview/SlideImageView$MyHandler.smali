.class Lcom/market2345/customview/SlideImageView$MyHandler;
.super Landroid/os/Handler;
.source "SlideImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/customview/SlideImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field theView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/customview/SlideImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/customview/SlideImageView;)V
    .locals 1
    .param p1, "view"    # Lcom/market2345/customview/SlideImageView;

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/customview/SlideImageView$MyHandler;->theView:Ljava/lang/ref/WeakReference;

    .line 112
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 116
    iget-object v1, p0, Lcom/market2345/customview/SlideImageView$MyHandler;->theView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/SlideImageView;

    .line 117
    .local v0, "view":Lcom/market2345/customview/SlideImageView;
    if-eqz v0, :cond_0

    .line 118
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    # getter for: Lcom/market2345/customview/SlideImageView;->posiCalul:Lcom/market2345/customview/PositionCaculate;
    invoke-static {v0}, Lcom/market2345/customview/SlideImageView;->access$000(Lcom/market2345/customview/SlideImageView;)Lcom/market2345/customview/PositionCaculate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/customview/PositionCaculate;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    # getter for: Lcom/market2345/customview/SlideImageView;->posiCalul:Lcom/market2345/customview/PositionCaculate;
    invoke-static {v0}, Lcom/market2345/customview/SlideImageView;->access$000(Lcom/market2345/customview/SlideImageView;)Lcom/market2345/customview/PositionCaculate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/customview/PositionCaculate;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    # getter for: Lcom/market2345/customview/SlideImageView;->posiCalul:Lcom/market2345/customview/PositionCaculate;
    invoke-static {v0}, Lcom/market2345/customview/SlideImageView;->access$000(Lcom/market2345/customview/SlideImageView;)Lcom/market2345/customview/PositionCaculate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/customview/PositionCaculate;->getCurrX()I

    move-result v1

    # setter for: Lcom/market2345/customview/SlideImageView;->currentLeft:I
    invoke-static {v0, v1}, Lcom/market2345/customview/SlideImageView;->access$102(Lcom/market2345/customview/SlideImageView;I)I

    .line 124
    :cond_1
    invoke-virtual {v0}, Lcom/market2345/customview/SlideImageView;->invalidate()V

    .line 125
    const-wide/16 v2, 0x28

    invoke-virtual {p0, v4, v2, v3}, Lcom/market2345/customview/SlideImageView$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0, v4}, Lcom/market2345/customview/SlideImageView$MyHandler;->removeMessages(I)V

    .line 128
    const/4 v1, 0x2

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v1, v2, v3}, Lcom/market2345/customview/SlideImageView$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/market2345/customview/SlideImageView$MyHandler;->removeMessages(I)V

    .line 134
    invoke-virtual {v0}, Lcom/market2345/customview/SlideImageView;->autoSlide()V

    goto :goto_0

    .line 137
    :pswitch_2
    # setter for: Lcom/market2345/customview/SlideImageView;->sliding:Z
    invoke-static {v0, v4}, Lcom/market2345/customview/SlideImageView;->access$202(Lcom/market2345/customview/SlideImageView;Z)Z

    .line 138
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/market2345/customview/SlideImageView;->startTime:J
    invoke-static {v0, v2, v3}, Lcom/market2345/customview/SlideImageView;->access$302(Lcom/market2345/customview/SlideImageView;J)J

    .line 139
    invoke-virtual {v0}, Lcom/market2345/customview/SlideImageView;->invalidate()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
