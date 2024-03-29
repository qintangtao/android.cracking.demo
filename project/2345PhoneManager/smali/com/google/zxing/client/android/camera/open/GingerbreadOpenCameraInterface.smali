.class public final Lcom/google/zxing/client/android/camera/open/GingerbreadOpenCameraInterface;
.super Ljava/lang/Object;
.source "GingerbreadOpenCameraInterface.java"

# interfaces
.implements Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GingerbreadOpenCamera"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public open()Landroid/hardware/Camera;
    .locals 7

    .prologue
    .line 41
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 42
    .local v3, "numCameras":I
    if-nez v3, :cond_0

    .line 44
    const-string v4, "GingerbreadOpenCamera"

    const-string v5, "No cameras!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    .local v2, "index":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 51
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 52
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 53
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_2

    .line 61
    .end local v1    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    if-ge v2, v3, :cond_3

    .line 63
    const-string v4, "GingerbreadOpenCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opening camera #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .local v0, "camera":Landroid/hardware/Camera;
    goto :goto_0

    .line 57
    .end local v0    # "camera":Landroid/hardware/Camera;
    .restart local v1    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_1

    .line 68
    .end local v1    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_3
    const-string v4, "GingerbreadOpenCamera"

    const-string v5, "No camera facing back; returning camera #0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .restart local v0    # "camera":Landroid/hardware/Camera;
    goto :goto_0
.end method
