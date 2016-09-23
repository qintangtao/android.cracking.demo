.class Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;FFFF)V
    .locals 2
    .param p2, "currentZoom"    # F
    .param p3, "targetZoom"    # F
    .param p4, "focalX"    # F
    .param p5, "focalY"    # F

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    iput p4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 1091
    iput p5, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 1092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    .line 1093
    iput p2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 1094
    iput p3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    .line 1095
    return-void
.end method

.method private interpolate()F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    iget v2, v2, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1123
    .local v0, "t":F
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1124
    sget-object v1, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 1125
    return v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1100
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1101
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->interpolate()F

    move-result v3

    .line 1107
    .local v3, "t":F
    iget v4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    iget v5, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    iget v6, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float v2, v4, v5

    .line 1108
    .local v2, "scale":F
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getScale()F

    move-result v4

    div-float v0, v2, v4

    .line 1110
    .local v0, "deltaScale":F
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    # getter for: Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;
    invoke-static {v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->access$100(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v4

    iget v5, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v6, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1111
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    # invokes: Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V
    invoke-static {v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->access$200(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)V

    .line 1114
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 1116
    invoke-static {v1, p0}, Lcom/market2345/filebrowser/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
