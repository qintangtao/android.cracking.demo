.class final Lcom/market2345/customview/GridLayout$2;
.super Lcom/market2345/customview/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/customview/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2478
    invoke-direct {p0}, Lcom/market2345/customview/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "mode"    # I

    .prologue
    .line 2486
    const/high16 v0, -0x80000000

    return v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cellDelta"    # I

    .prologue
    .line 2481
    const/high16 v0, -0x80000000

    return v0
.end method
