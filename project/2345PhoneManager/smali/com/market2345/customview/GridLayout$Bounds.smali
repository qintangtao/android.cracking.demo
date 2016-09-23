.class Lcom/market2345/customview/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/customview/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2122
    invoke-virtual {p0}, Lcom/market2345/customview/GridLayout$Bounds;->reset()V

    .line 2123
    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/customview/GridLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/customview/GridLayout$1;

    .prologue
    .line 2116
    invoke-direct {p0}, Lcom/market2345/customview/GridLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOffset(Lcom/market2345/customview/GridLayout;Landroid/view/View;Lcom/market2345/customview/GridLayout$Alignment;IZ)I
    .locals 2
    .param p1, "gl"    # Lcom/market2345/customview/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Lcom/market2345/customview/GridLayout$Alignment;
    .param p4, "size"    # I
    .param p5, "horizontal"    # Z

    .prologue
    .line 2146
    iget v0, p0, Lcom/market2345/customview/GridLayout$Bounds;->before:I

    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompat;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v1

    invoke-virtual {p3, p2, p4, v1}, Lcom/market2345/customview/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected include(II)V
    .locals 1
    .param p1, "before"    # I
    .param p2, "after"    # I

    .prologue
    .line 2132
    iget v0, p0, Lcom/market2345/customview/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/GridLayout$Bounds;->before:I

    .line 2133
    iget v0, p0, Lcom/market2345/customview/GridLayout$Bounds;->after:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/GridLayout$Bounds;->after:I

    .line 2134
    return-void
.end method

.method protected final include(Lcom/market2345/customview/GridLayout;Landroid/view/View;Lcom/market2345/customview/GridLayout$Spec;Lcom/market2345/customview/GridLayout$Axis;)V
    .locals 6
    .param p1, "gl"    # Lcom/market2345/customview/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "spec"    # Lcom/market2345/customview/GridLayout$Spec;
    .param p4, "axis"    # Lcom/market2345/customview/GridLayout$Axis;

    .prologue
    .line 2150
    iget v4, p0, Lcom/market2345/customview/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p3}, Lcom/market2345/customview/GridLayout$Spec;->getFlexibility()I

    move-result v5

    and-int/2addr v4, v5

    iput v4, p0, Lcom/market2345/customview/GridLayout$Bounds;->flexibility:I

    .line 2151
    iget-boolean v2, p4, Lcom/market2345/customview/GridLayout$Axis;->horizontal:Z

    .line 2152
    .local v2, "horizontal":Z
    invoke-virtual {p1, p2, v2}, Lcom/market2345/customview/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v3

    .line 2153
    .local v3, "size":I
    iget-object v4, p3, Lcom/market2345/customview/GridLayout$Spec;->alignment:Lcom/market2345/customview/GridLayout$Alignment;

    invoke-virtual {p1, v4, v2}, Lcom/market2345/customview/GridLayout;->getAlignment(Lcom/market2345/customview/GridLayout$Alignment;Z)Lcom/market2345/customview/GridLayout$Alignment;

    move-result-object v0

    .line 2155
    .local v0, "alignment":Lcom/market2345/customview/GridLayout$Alignment;
    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompat;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v4

    invoke-virtual {v0, p2, v3, v4}, Lcom/market2345/customview/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    .line 2156
    .local v1, "before":I
    sub-int v4, v3, v1

    invoke-virtual {p0, v1, v4}, Lcom/market2345/customview/GridLayout$Bounds;->include(II)V

    .line 2157
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2126
    iput v0, p0, Lcom/market2345/customview/GridLayout$Bounds;->before:I

    .line 2127
    iput v0, p0, Lcom/market2345/customview/GridLayout$Bounds;->after:I

    .line 2128
    const/4 v0, 0x2

    iput v0, p0, Lcom/market2345/customview/GridLayout$Bounds;->flexibility:I

    .line 2129
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .param p1, "min"    # Z

    .prologue
    .line 2137
    if-nez p1, :cond_0

    .line 2138
    iget v0, p0, Lcom/market2345/customview/GridLayout$Bounds;->flexibility:I

    invoke-static {v0}, Lcom/market2345/customview/GridLayout;->canStretch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2139
    const v0, 0x186a0

    .line 2142
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/market2345/customview/GridLayout$Bounds;->before:I

    iget v1, p0, Lcom/market2345/customview/GridLayout$Bounds;->after:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/market2345/customview/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/market2345/customview/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
