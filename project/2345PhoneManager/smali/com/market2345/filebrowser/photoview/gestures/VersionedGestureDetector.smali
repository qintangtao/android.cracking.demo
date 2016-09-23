.class public final Lcom/market2345/filebrowser/photoview/gestures/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;)Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;

    .prologue
    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .local v1, "sdkVersion":I
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 32
    new-instance v0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "detector":Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;
    :goto_0
    invoke-interface {v0, p1}, Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;->setOnGestureListener(Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;)V

    .line 45
    return-object v0

    .line 34
    .end local v0    # "detector":Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;
    :cond_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 36
    new-instance v0, Lcom/market2345/filebrowser/photoview/gestures/EclairGestureDetector;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "detector":Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;
    goto :goto_0

    .line 40
    .end local v0    # "detector":Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;
    :cond_1
    new-instance v0, Lcom/market2345/filebrowser/photoview/gestures/FroyoGestureDetector;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/photoview/gestures/FroyoGestureDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "detector":Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;
    goto :goto_0
.end method
