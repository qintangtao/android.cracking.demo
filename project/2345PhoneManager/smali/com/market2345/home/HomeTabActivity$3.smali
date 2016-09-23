.class Lcom/market2345/home/HomeTabActivity$3;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/home/HomeTabActivity;->delayedInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/home/HomeTabActivity;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/market2345/home/HomeTabActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity$3;->this$0:Lcom/market2345/home/HomeTabActivity;

    iput-object p2, p0, Lcom/market2345/home/HomeTabActivity$3;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 618
    invoke-static {}, Lcom/market2345/slidemenu/DataCacheForViewPager;->getInstance()Lcom/market2345/slidemenu/DataCacheForViewPager;

    move-result-object v4

    const-string v5, "scale"

    invoke-virtual {v4, v5}, Lcom/market2345/slidemenu/DataCacheForViewPager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 619
    .local v3, "scale":F
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v3

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 620
    .local v2, "right":I
    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v4, v3

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 621
    .local v0, "bottom":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 622
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/market2345/home/HomeTabActivity$3;->val$parent:Landroid/view/View;

    new-instance v5, Landroid/view/TouchDelegate;

    iget-object v6, p0, Lcom/market2345/home/HomeTabActivity$3;->this$0:Lcom/market2345/home/HomeTabActivity;

    # getter for: Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/market2345/home/HomeTabActivity;->access$1100(Lcom/market2345/home/HomeTabActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 623
    return-void
.end method
