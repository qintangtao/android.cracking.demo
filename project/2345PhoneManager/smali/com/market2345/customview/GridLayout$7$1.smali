.class Lcom/market2345/customview/GridLayout$7$1;
.super Lcom/market2345/customview/GridLayout$Bounds;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/customview/GridLayout$7;->getBounds()Lcom/market2345/customview/GridLayout$Bounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:I

.field final synthetic this$0:Lcom/market2345/customview/GridLayout$7;


# direct methods
.method constructor <init>(Lcom/market2345/customview/GridLayout$7;)V
    .locals 1

    .prologue
    .line 2617
    iput-object p1, p0, Lcom/market2345/customview/GridLayout$7$1;->this$0:Lcom/market2345/customview/GridLayout$7;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/market2345/customview/GridLayout$Bounds;-><init>(Lcom/market2345/customview/GridLayout$1;)V

    return-void
.end method


# virtual methods
.method protected getOffset(Lcom/market2345/customview/GridLayout;Landroid/view/View;Lcom/market2345/customview/GridLayout$Alignment;IZ)I
    .locals 2
    .param p1, "gl"    # Lcom/market2345/customview/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Lcom/market2345/customview/GridLayout$Alignment;
    .param p4, "size"    # I
    .param p5, "hrz"    # Z

    .prologue
    .line 2645
    const/4 v0, 0x0

    invoke-super/range {p0 .. p5}, Lcom/market2345/customview/GridLayout$Bounds;->getOffset(Lcom/market2345/customview/GridLayout;Landroid/view/View;Lcom/market2345/customview/GridLayout$Alignment;IZ)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected include(II)V
    .locals 2
    .param p1, "before"    # I
    .param p2, "after"    # I

    .prologue
    .line 2634
    invoke-super {p0, p1, p2}, Lcom/market2345/customview/GridLayout$Bounds;->include(II)V

    .line 2635
    iget v0, p0, Lcom/market2345/customview/GridLayout$7$1;->size:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/GridLayout$7$1;->size:I

    .line 2636
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 2628
    invoke-super {p0}, Lcom/market2345/customview/GridLayout$Bounds;->reset()V

    .line 2629
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/market2345/customview/GridLayout$7$1;->size:I

    .line 2630
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .param p1, "min"    # Z

    .prologue
    .line 2640
    invoke-super {p0, p1}, Lcom/market2345/customview/GridLayout$Bounds;->size(Z)I

    move-result v0

    iget v1, p0, Lcom/market2345/customview/GridLayout$7$1;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
