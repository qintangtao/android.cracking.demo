.class Lcom/market2345/dumpclean/main/ScanFinishFragment$1;
.super Ljava/lang/Object;
.source "ScanFinishFragment.java"

# interfaces
.implements Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$OnScrollFloatingGroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/dumpclean/main/ScanFinishFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/main/ScanFinishFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment$1;->this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollFloatingGroupListener(Landroid/view/View;I)V
    .locals 11
    .param p1, "floatingGroupView"    # Landroid/view/View;
    .param p2, "scrollY"    # I

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    .line 124
    neg-int v8, p2

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 126
    .local v0, "interpolation":F
    mul-float v8, v10, v0

    sub-float v8, v10, v8

    float-to-int v7, v8

    .line 127
    .local v7, "whiteToBlackRed":I
    mul-float v8, v10, v0

    sub-float v8, v10, v8

    float-to-int v6, v8

    .line 128
    .local v6, "whiteToBlackGreen":I
    mul-float v8, v10, v0

    sub-float v8, v10, v8

    float-to-int v4, v8

    .line 129
    .local v4, "whiteToBlackBlue":I
    mul-float v8, v10, v0

    sub-float v8, v10, v8

    float-to-int v3, v8

    .line 130
    .local v3, "whileToBlackAlpha":I
    invoke-static {v3, v7, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 131
    .local v5, "whiteToBlackColor":I
    const v8, 0x7f0902c4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "root":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 133
    .local v2, "rootDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 134
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 135
    :cond_0
    return-void
.end method
