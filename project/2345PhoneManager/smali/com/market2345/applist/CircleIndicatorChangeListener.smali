.class public Lcom/market2345/applist/CircleIndicatorChangeListener;
.super Ljava/lang/Object;
.source "CircleIndicatorChangeListener.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private rg:Landroid/widget/RadioGroup;

.field private size:I


# direct methods
.method public constructor <init>(ILandroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "rg"    # Landroid/widget/RadioGroup;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/market2345/applist/CircleIndicatorChangeListener;->size:I

    .line 13
    iput-object p2, p0, Lcom/market2345/applist/CircleIndicatorChangeListener;->rg:Landroid/widget/RadioGroup;

    .line 14
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 44
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 29
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/market2345/applist/CircleIndicatorChangeListener;->rg:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/market2345/applist/CircleIndicatorChangeListener;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/market2345/applist/CircleIndicatorChangeListener;->rg:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/market2345/applist/CircleIndicatorChangeListener;->size:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/market2345/applist/CircleIndicatorChangeListener;->rg:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/market2345/applist/CircleIndicatorChangeListener;->rg:Landroid/widget/RadioGroup;

    iget v2, p0, Lcom/market2345/applist/CircleIndicatorChangeListener;->size:I

    rem-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 57
    :cond_0
    return-void
.end method
