.class Lcom/market2345/customview/StickyLayout$1;
.super Ljava/lang/Thread;
.source "StickyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/customview/StickyLayout;->smoothSetHeaderHeight(IIJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/customview/StickyLayout;

.field final synthetic val$frameCount:I

.field final synthetic val$from:I

.field final synthetic val$modifyOriginalHeaderHeight:Z

.field final synthetic val$partation:F

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lcom/market2345/customview/StickyLayout;Ljava/lang/String;IIIFZ)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/market2345/customview/StickyLayout$1;->this$0:Lcom/market2345/customview/StickyLayout;

    iput p3, p0, Lcom/market2345/customview/StickyLayout$1;->val$frameCount:I

    iput p4, p0, Lcom/market2345/customview/StickyLayout$1;->val$to:I

    iput p5, p0, Lcom/market2345/customview/StickyLayout$1;->val$from:I

    iput p6, p0, Lcom/market2345/customview/StickyLayout$1;->val$partation:F

    iput-boolean p7, p0, Lcom/market2345/customview/StickyLayout$1;->val$modifyOriginalHeaderHeight:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 227
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/market2345/customview/StickyLayout$1;->val$frameCount:I

    if-ge v2, v3, :cond_1

    .line 229
    iget v3, p0, Lcom/market2345/customview/StickyLayout$1;->val$frameCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 230
    iget v1, p0, Lcom/market2345/customview/StickyLayout$1;->val$to:I

    .line 234
    .local v1, "height":I
    :goto_1
    iget-object v3, p0, Lcom/market2345/customview/StickyLayout$1;->this$0:Lcom/market2345/customview/StickyLayout;

    new-instance v4, Lcom/market2345/customview/StickyLayout$1$1;

    invoke-direct {v4, p0, v1}, Lcom/market2345/customview/StickyLayout$1$1;-><init>(Lcom/market2345/customview/StickyLayout$1;I)V

    invoke-virtual {v3, v4}, Lcom/market2345/customview/StickyLayout;->post(Ljava/lang/Runnable;)Z

    .line 241
    const-wide/16 v4, 0x5

    :try_start_0
    invoke-static {v4, v5}, Lcom/market2345/customview/StickyLayout$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "height":I
    :cond_0
    iget v3, p0, Lcom/market2345/customview/StickyLayout$1;->val$from:I

    int-to-float v3, v3

    iget v4, p0, Lcom/market2345/customview/StickyLayout$1;->val$partation:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .restart local v1    # "height":I
    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 247
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "height":I
    :cond_1
    iget-boolean v3, p0, Lcom/market2345/customview/StickyLayout$1;->val$modifyOriginalHeaderHeight:Z

    if-eqz v3, :cond_2

    .line 248
    iget-object v3, p0, Lcom/market2345/customview/StickyLayout$1;->this$0:Lcom/market2345/customview/StickyLayout;

    iget v4, p0, Lcom/market2345/customview/StickyLayout$1;->val$to:I

    invoke-virtual {v3, v4}, Lcom/market2345/customview/StickyLayout;->setOriginalHeaderHeight(I)V

    .line 250
    :cond_2
    return-void
.end method
