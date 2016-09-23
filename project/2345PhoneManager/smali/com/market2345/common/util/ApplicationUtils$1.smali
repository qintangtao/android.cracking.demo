.class final Lcom/market2345/common/util/ApplicationUtils$1;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/common/util/ApplicationUtils;->enlargeClickArea(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$parentView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lcom/market2345/common/util/ApplicationUtils$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/market2345/common/util/ApplicationUtils$1;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 962
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 964
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/market2345/common/util/ApplicationUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 965
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit16 v2, v2, -0xc8

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 967
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v2, v2, 0xc8

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 968
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit16 v2, v2, -0xc8

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 970
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/market2345/common/util/ApplicationUtils$1;->val$view:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 972
    .local v1, "touchDelegate":Landroid/view/TouchDelegate;
    iget-object v2, p0, Lcom/market2345/common/util/ApplicationUtils$1;->val$parentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 973
    return-void
.end method
