.class public final Lcom/google/zxing/client/android/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final HISTORY_REQUEST_CODE:I = 0xbacc

.field public static final KEY_AUTO_FOCUS:Ljava/lang/String; = "preferences_auto_focus"

.field public static final KEY_BULK_MODE:Ljava/lang/String; = "preferences_bulk_mode"

.field public static final KEY_CUSTOM_PRODUCT_SEARCH:Ljava/lang/String; = "preferences_custom_product_search"

.field public static final KEY_DECODE_1D:Ljava/lang/String; = "preferences_decode_1D"

.field public static final KEY_DECODE_DATA_MATRIX:Ljava/lang/String; = "preferences_decode_Data_Matrix"

.field public static final KEY_DECODE_QR:Ljava/lang/String; = "preferences_decode_QR"

.field public static final KEY_DISABLE_CONTINUOUS_FOCUS:Ljava/lang/String; = "preferences_disable_continuous_focus"

.field public static final KEY_FRONT_LIGHT_MODE:Ljava/lang/String; = "preferences_front_light_mode"

.field public static final KEY_HELP_VERSION_SHOWN:Ljava/lang/String; = "preferences_help_version_shown"

.field public static final KEY_INVERT_SCAN:Ljava/lang/String; = "preferences_invert_scan"

.field public static final KEY_PLAY_BEEP:Ljava/lang/String; = "preferences_play_beep"

.field public static final KEY_REMEMBER_DUPLICATES:Ljava/lang/String; = "preferences_remember_duplicates"

.field public static final KEY_SEARCH_COUNTRY:Ljava/lang/String; = "preferences_search_country"

.field public static final KEY_SUPPLEMENTAL:Ljava/lang/String; = "preferences_supplemental"

.field public static final KEY_VIBRATE:Ljava/lang/String; = "preferences_vibrate"

.field private static final PRODUCT_SEARCH_URL_PREFIX:Ljava/lang/String; = "http://www.google"

.field private static final PRODUCT_SEARCH_URL_SUFFIX:Ljava/lang/String; = "/m/products/scan"

.field private static final TAG:Ljava/lang/String;

.field private static final ZXING_URLS:[Ljava/lang/String;


# instance fields
.field private ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

.field private lastResult:Lcom/google/zxing/Result;

.field private open:Z

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private source:Lcom/google/zxing/client/android/IntentSource;

.field private viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const-class v0, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://zxing.appspot.com/scan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "zxing://scan/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v1, :cond_0

    .line 343
    iput-object p2, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 354
    :goto_0
    return-void

    .line 345
    :cond_0
    if-eqz p2, :cond_1

    .line 346
    iput-object p2, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    const v2, 0x7f090005

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 350
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_0
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 499
    new-instance v1, Landroid/app/Dialog;

    const v3, 0x7f0c0012

    invoke-direct {v1, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 500
    .local v1, "myDialog":Landroid/app/Dialog;
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;

    invoke-direct {v0, p0}, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;-><init>(Landroid/content/Context;)V

    .line 501
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v0, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->setTitle(Ljava/lang/CharSequence;)V

    .line 502
    const v3, 0x7f0b00e9

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/lm/util/StringUtils;->ToDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->setMessage(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 505
    const v3, 0x7f0b010a

    new-instance v4, Lcom/google/zxing/client/android/CaptureActivity$1;

    invoke-direct {v4, p0, v1}, Lcom/google/zxing/client/android/CaptureActivity$1;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3, v4}, Lcom/market2345/customview/DialogSimpleTitleMessageSingleButtonView;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 511
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 512
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 513
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 514
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void

    .line 480
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 483
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v0, :cond_2

    .line 484
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivityHandler;

    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeHints:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 486
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 487
    :catch_0
    move-exception v7

    .line 488
    .local v7, "ioe":Ljava/io/IOException;
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    .line 490
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 493
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected error initializing camera"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0
.end method

.method private static isZXingURL(Ljava/lang/String;)Z
    .locals 6
    .param p0, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 276
    if-nez p0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v4

    .line 279
    :cond_1
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 280
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    const/4 v4, 0x1

    goto :goto_0

    .line 279
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    .line 528
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->drawViewfinder()V

    .line 524
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 532
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 533
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->overridePendingTransition(II)V

    .line 534
    return-void
.end method

.method getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .locals 11
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;
    .param p3, "scaleFactor"    # F

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 430
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, "result":Ljava/lang/String;
    const-string v2, "http://zhushou.2345.com/qr.htm?"

    .line 433
    .local v2, "pa":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 434
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/market2345/datacenter/DataCenterObserver;->getConnStatus()I

    move-result v6

    if-lez v6, :cond_1

    .line 435
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/market2345/wificonn/WifiConnectedActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 459
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    .line 465
    :goto_1
    return-void

    .line 437
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.phonemanager2345.zhushou.connect.pc"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "action":Landroid/content/Intent;
    const-string v6, "com.phonemanager2345.zhushou.url.key"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 441
    const-string v6, "[?]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "path":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v9, :cond_0

    .line 443
    aget-object v6, v4, v8

    const-string v7, "[&]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "params":[Ljava/lang/String;
    array-length v6, v3

    if-eqz v6, :cond_0

    array-length v6, v3

    if-lt v6, v10, :cond_0

    .line 445
    array-length v6, v3

    const/4 v7, 0x5

    if-lt v6, v7, :cond_2

    const/16 v6, 0x26

    aget-object v7, v3, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-static {p0}, Lcom/market2345/update/UpdateUtils;->isUpdateStatusDefault(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/market2345/download/DownloadManager;->isWifiNetwork()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 446
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/market2345/update/WifiUpdateDialogActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "key_update_versionName"

    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v6, "key_connect_url"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 451
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/market2345/wificonn/WifiConnDialogActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v6, "pc_name"

    aget-object v7, v3, v9

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v6, "connect"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 462
    .end local v0    # "action":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "params":[Ljava/lang/String;
    .end local v4    # "path":[Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/market2345/qrscan/QRResultActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v6, "scan_result"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 171
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 172
    const v1, 0x7f0300a1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->setContentView(I)V

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 175
    new-instance v1, Lcom/google/zxing/client/android/InactivityTimer;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 176
    new-instance v1, Lcom/google/zxing/client/android/AmbientLightManager;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/AmbientLightManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 178
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->shutdown()V

    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 309
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 313
    sparse-switch p1, :sswitch_data_0

    .line 337
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 315
    :sswitch_1
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_1

    .line 316
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(I)V

    .line 317
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    goto :goto_0

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v1, :cond_0

    .line 321
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_0

    .line 331
    :sswitch_2
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_0

    .line 334
    :sswitch_3
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_0

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 289
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    .line 292
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/InactivityTimer;->onPause()V

    .line 295
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/AmbientLightManager;->stop()V

    .line 296
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 297
    iget-boolean v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v2, :cond_1

    .line 298
    const v2, 0x7f090336

    invoke-virtual {p0, v2}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 299
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 300
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 302
    .end local v0    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v1    # "surfaceView":Landroid/view/SurfaceView;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 303
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/zxing/client/android/camera/CameraManager;->init(Landroid/content/Context;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v8

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 192
    const v8, 0x7f090337

    invoke-virtual {p0, v8}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/client/android/ViewfinderView;

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    .line 196
    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 197
    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 199
    const v8, 0x7f090336

    invoke-virtual {p0, v8}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceView;

    .line 200
    .local v6, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    .line 201
    .local v5, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-eqz v8, :cond_2

    .line 205
    invoke-direct {p0, v5}, Lcom/google/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 213
    :goto_0
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    iget-object v9, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v8, v9}, Lcom/google/zxing/client/android/AmbientLightManager;->start(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 215
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v8}, Lcom/google/zxing/client/android/InactivityTimer;->onResume()V

    .line 217
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 219
    .local v4, "intent":Landroid/content/Intent;
    sget-object v8, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 220
    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 221
    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 223
    if-eqz v4, :cond_1

    .line 225
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "dataString":Ljava/lang/String;
    const-string v8, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 232
    sget-object v8, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 233
    invoke-static {v4}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v8

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 234
    invoke-static {v4}, Lcom/google/zxing/client/android/DecodeHintManager;->parseDecodeHints(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeHints:Ljava/util/Map;

    .line 236
    const-string v8, "SCAN_WIDTH"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "SCAN_HEIGHT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 237
    const-string v8, "SCAN_WIDTH"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 238
    .local v7, "width":I
    const-string v8, "SCAN_HEIGHT"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 239
    .local v2, "height":I
    if-lez v7, :cond_0

    if-lez v2, :cond_0

    .line 240
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v8, v7, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 270
    .end local v2    # "height":I
    .end local v7    # "width":I
    :cond_0
    :goto_1
    const-string v8, "CHARACTER_SET"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 273
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "dataString":Ljava/lang/String;
    :cond_1
    return-void

    .line 209
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-interface {v5, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 210
    const/4 v8, 0x3

    invoke-interface {v5, v8}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0

    .line 249
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "dataString":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    if-eqz v1, :cond_4

    const-string v8, "http://www.google"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "/m/products/scan"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 253
    sget-object v8, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 254
    sget-object v8, Lcom/google/zxing/client/android/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Collection;

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    goto :goto_1

    .line 256
    :cond_4
    invoke-static {v1}, Lcom/google/zxing/client/android/CaptureActivity;->isZXingURL(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 262
    sget-object v8, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 263
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 264
    .local v3, "inputUri":Landroid/net/Uri;
    invoke-static {v3}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v8

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 266
    invoke-static {v3}, Lcom/google/zxing/client/android/DecodeHintManager;->parseDecodeHints(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeHints:Ljava/util/Map;

    goto :goto_1
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    const v1, 0x7f09001d

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 520
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 418
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 400
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 408
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 414
    return-void
.end method

.method public toggleTorch(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    iget-boolean v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->open:Z

    if-nez v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    .line 158
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    const v2, 0x7f020267

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    :goto_0
    iget-boolean v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->open:Z

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->open:Z

    .line 164
    return-void

    .line 160
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    .line 161
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    const v2, 0x7f02026a

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 163
    goto :goto_1
.end method
