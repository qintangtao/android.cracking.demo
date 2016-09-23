.class public Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/market2345/filebrowser/photoview/IPhotoView;
.implements Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$2;,
        Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;,
        Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;,
        Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;,
        Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;,
        Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field static final EDGE_BOTH:I = 0x2

.field static final EDGE_LEFT:I = 0x0

.field static final EDGE_NONE:I = -0x1

.field static final EDGE_RIGHT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PhotoViewAttacher"

.field static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field ZOOM_DURATION:I

.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mCurrentFlingRunnable:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLastRotation:F

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mPhotoTapListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;

.field private mRotationDetectionEnabled:Z

.field private mScaleDragDetector:Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mViewTapListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mZoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v1, 0xc8

    iput v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMinScale:F

    .line 68
    const/high16 v1, 0x40300000    # 2.75f

    iput v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMidScale:F

    .line 70
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 72
    iput-boolean v4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 140
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 142
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 144
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 146
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 148
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 163
    const/4 v1, 0x2

    iput v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mRotationDetectionEnabled:Z

    .line 169
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 308
    const/4 v1, 0x0

    iput v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mLastRotation:F

    .line 173
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 175
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 176
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 179
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 183
    :cond_0
    invoke-static {p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 185
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/market2345/filebrowser/photoview/gestures/VersionedGestureDetector;->newInstance(Landroid/content/Context;Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;)Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;

    .line 192
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$1;

    invoke-direct {v3, p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$1;-><init>(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 206
    iget-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v2, p0}, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;-><init>(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)V

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 209
    invoke-virtual {p0, v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setZoomable(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$300(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;

    .line 729
    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 740
    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 3

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 750
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/market2345/filebrowser/photoview/IPhotoView;

    if-nez v1, :cond_0

    .line 752
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 762
    .local v3, "imageView":Landroid/widget/ImageView;
    if-nez v3, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v8

    .line 767
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 768
    .local v4, "rect":Landroid/graphics/RectF;
    if-eqz v4, :cond_0

    .line 773
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 774
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 776
    .local v1, "deltaY":F
    invoke-direct {p0, v3}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v5

    .line 777
    .local v5, "viewHeight":I
    int-to-float v10, v5

    cmpg-float v10, v2, v10

    if-gtz v10, :cond_3

    .line 779
    sget-object v10, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v11, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 788
    int-to-float v10, v5

    sub-float/2addr v10, v2

    div-float/2addr v10, v13

    iget v11, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v10, v11

    .line 801
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v6

    .line 802
    .local v6, "viewWidth":I
    int-to-float v10, v6

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_5

    .line 804
    sget-object v8, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_1

    .line 813
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v13

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v10

    .line 816
    :goto_2
    const/4 v8, 0x2

    iput v8, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 834
    :goto_3
    iget-object v8, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v8, v9

    .line 835
    goto :goto_0

    .line 782
    .end local v6    # "viewWidth":I
    :pswitch_0
    iget v10, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v10

    .line 783
    goto :goto_1

    .line 785
    :pswitch_1
    int-to-float v10, v5

    sub-float/2addr v10, v2

    iget v11, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v10, v11

    .line 786
    goto :goto_1

    .line 792
    :cond_3
    iget v10, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_4

    .line 794
    iget v10, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v10

    goto :goto_1

    .line 796
    :cond_4
    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v11, v5

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 798
    int-to-float v10, v5

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v10, v11

    goto :goto_1

    .line 807
    .restart local v6    # "viewWidth":I
    :pswitch_2
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 808
    goto :goto_2

    .line 810
    :pswitch_3
    int-to-float v8, v6

    sub-float/2addr v8, v7

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v10

    .line 811
    goto :goto_2

    .line 818
    :cond_5
    iget v10, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_6

    .line 820
    iput v8, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 821
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_3

    .line 823
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v10, v6

    cmpg-float v8, v8, v10

    if-gez v8, :cond_7

    .line 825
    int-to-float v8, v6

    iget v10, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v10

    .line 826
    iput v9, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 830
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 779
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 804
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2
    .param p0, "minZoom"    # F
    .param p1, "midZoom"    # F
    .param p2, "maxZoom"    # F

    .prologue
    .line 76
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v5, 0x0

    .line 847
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 849
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 852
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 854
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 855
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 856
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 859
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 1005
    if-nez p1, :cond_0

    .line 1006
    const/4 v0, 0x0

    .line 1007
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 998
    if-nez p1, :cond_0

    .line 999
    const/4 v0, 0x0

    .line 1000
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 888
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 91
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .locals 3
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    .line 104
    :cond_0
    sget-object v0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMatrix()V
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 897
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 898
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 899
    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 904
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 907
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkImageViewScaleType()V

    .line 908
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 911
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    if-eqz v2, :cond_0

    .line 913
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 914
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 916
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-interface {v2, v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 920
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 123
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/market2345/filebrowser/photoview/IPhotoView;

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    .line 930
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 931
    .local v3, "imageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    invoke-direct {p0, v3}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v8, v10

    .line 937
    .local v8, "viewWidth":F
    invoke-direct {p0, v3}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v7, v10

    .line 938
    .local v7, "viewHeight":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 939
    .local v1, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 941
    .local v0, "drawableHeight":I
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 943
    int-to-float v10, v1

    div-float v9, v8, v10

    .line 944
    .local v9, "widthScale":F
    int-to-float v10, v0

    div-float v2, v7, v10

    .line 946
    .local v2, "heightScale":F
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_2

    .line 948
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 993
    :goto_1
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0

    .line 951
    :cond_2
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_3

    .line 953
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 954
    .local v6, "scale":F
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 955
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 958
    .end local v6    # "scale":F
    :cond_3
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_4

    .line 960
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 961
    .restart local v6    # "scale":F
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 962
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 967
    .end local v6    # "scale":F
    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v11, v0

    invoke-direct {v5, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 968
    .local v5, "mTempSrc":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v12, v12, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 970
    .local v4, "mTempDst":Landroid/graphics/RectF;
    sget-object v10, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v11, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 977
    :pswitch_0
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 973
    :pswitch_1
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 981
    :pswitch_2
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 985
    :pswitch_3
    iget-object v10, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 970
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 279
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 251
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 255
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 261
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->cancelFling()V

    .line 267
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_3

    .line 269
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 273
    :cond_3
    iput-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 274
    iput-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 275
    iput-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 278
    iput-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 712
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 285
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 718
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 719
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 329
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    if-nez v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->cleanup()V

    .line 332
    const-string v1, "PhotoViewAttacher"

    const-string v2, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;

    return-object v0
.end method

.method public getScale()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 380
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 865
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public onDrag(FF)V
    .locals 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v4, 0x1

    .line 392
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;

    invoke-interface {v2}, Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 397
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 398
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 409
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 410
    .local v1, "parent":Landroid/view/ViewParent;
    iget-boolean v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v2, :cond_4

    .line 412
    iget v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScrollEdge:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-nez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-ne v2, v4, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 414
    :cond_3
    if-eqz v1, :cond_0

    .line 415
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 420
    :cond_4
    if-eqz v1, :cond_0

    .line 422
    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onFling(FFFF)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 431
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;

    .line 432
    iget-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 433
    iget-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 441
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 443
    iget-boolean v5, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v5, :cond_2

    .line 445
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    .line 446
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 447
    .local v3, "right":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 448
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 457
    .local v2, "left":I
    iget v5, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mIvTop:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mIvBottom:I

    if-ne v0, v5, :cond_0

    iget v5, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mIvLeft:I

    if-ne v2, v5, :cond_0

    iget v5, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mIvRight:I

    if-eq v3, v5, :cond_1

    .line 460
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 463
    iput v4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mIvTop:I

    .line 464
    iput v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mIvRight:I

    .line 465
    iput v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mIvBottom:I

    .line 466
    iput v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mIvLeft:I

    .line 474
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_1
    :goto_0
    return-void

    .line 471
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onScale(FFF)V
    .locals 2
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 483
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 485
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 490
    const/4 v6, 0x0

    .line 492
    .local v6, "handled":Z
    iget-boolean v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 495
    .local v7, "parent":Landroid/view/ViewParent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 527
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;

    invoke-interface {v0, p2}, Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    const/4 v6, 0x1

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    const/4 v6, 0x1

    .line 539
    .end local v7    # "parent":Landroid/view/ViewParent;
    :cond_2
    return v6

    .line 500
    .restart local v7    # "parent":Landroid/view/ViewParent;
    :pswitch_1
    if-eqz v7, :cond_3

    .line 501
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 507
    :goto_1
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->cancelFling()V

    goto :goto_0

    .line 503
    :cond_3
    const-string v0, "PhotoViewAttacher"

    const-string v1, "onTouch getParent() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 514
    :pswitch_2
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 517
    .local v8, "rect":Landroid/graphics/RectF;
    if-eqz v8, :cond_0

    .line 519
    new-instance v0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    iget v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMinScale:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 520
    const/4 v6, 0x1

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 545
    iput-boolean p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 546
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 3
    .param p1, "finalMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Matrix cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 295
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_2

    .line 305
    :cond_1
    :goto_0
    return v1

    .line 298
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 301
    iget-object v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 302
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 303
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 305
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setMaxScale(F)V
    .locals 0
    .param p1, "maxScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 580
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 581
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2
    .param p1, "maximumScale"    # F

    .prologue
    .line 586
    iget v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 587
    iput p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 588
    return-void
.end method

.method public setMediumScale(F)V
    .locals 2
    .param p1, "mediumScale"    # F

    .prologue
    .line 572
    iget v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 573
    iput p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMidScale:F

    .line 574
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .param p1, "midScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 567
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .param p1, "minScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 553
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2
    .param p1, "minimumScale"    # F

    .prologue
    .line 558
    iget v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 559
    iput p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMinScale:F

    .line 560
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2
    .param p1, "newOnDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;-><init>(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 594
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 600
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 606
    return-void
.end method

.method public setOnViewTapListener(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 618
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    .line 313
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 314
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mLastRotation:F

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 315
    iput p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mLastRotation:F

    .line 316
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 317
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 630
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 648
    .local v6, "imageView":Landroid/widget/ImageView;
    if-eqz v6, :cond_0

    .line 651
    iget v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    if-eqz p4, :cond_2

    .line 658
    new-instance v0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 663
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    goto :goto_0
.end method

.method public setScale(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 637
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 641
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 671
    invoke-static {p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 673
    iput-object p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 676
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->update()V

    .line 678
    :cond_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 871
    if-gez p1, :cond_0

    .line 872
    const/16 p1, 0xc8

    .line 873
    :cond_0
    iput p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 874
    return-void
.end method

.method public setZoomable(Z)V
    .locals 0
    .param p1, "zoomable"    # Z

    .prologue
    .line 683
    iput-boolean p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 684
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->update()V

    .line 685
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 691
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 693
    iget-boolean v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 696
    invoke-static {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 699
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-direct {p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0
.end method
