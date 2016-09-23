.class public final Lcom/market2345/download/Downloads$Impl;
.super Ljava/lang/Object;
.source "Downloads.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/download/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/download/Downloads$Impl$RequestHeaders;
    }
.end annotation


# static fields
.field public static final CANCEL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

.field public static final COLUMN_ALLOWED_NETWORK_TYPES:Ljava/lang/String; = "allowed_network_types"

.field public static final COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final COLUMN_APP_DATA:Ljava/lang/String; = "entity"

.field public static final COLUMN_CERTMD5:Ljava/lang/String; = "certMd5"

.field public static final COLUMN_CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final COLUMN_DELETE_FILE:Ljava/lang/String; = "delete_file"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DOWN_PARTIAL:Ljava/lang/String; = "downPartial"

.field public static final COLUMN_ETAG:Ljava/lang/String; = "etag"

.field public static final COLUMN_FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final COLUMN_FIRSTMD5:Ljava/lang/String; = "firstMD5"

.field public static final COLUMN_FIRSTMD5ERROR_LENGTH:Ljava/lang/String; = "firstMD5_length"

.field public static final COLUMN_ICON_URL:Ljava/lang/String; = "iconUrl"

.field public static final COLUMN_IS_UPDATE:Ljava/lang/String; = "isUpdate"

.field public static final COLUMN_LAST_MODIFIED:Ljava/lang/String; = "lastModified"

.field public static final COLUMN_LOWMD5:Ljava/lang/String; = "lowMD5"

.field public static final COLUMN_MIME_TYPE:Ljava/lang/String; = "mimetype"

.field public static final COLUMN_MIN_SDK:Ljava/lang/String; = "minSDK"

.field public static final COLUMN_NUMFAILED:Ljava/lang/String; = "mNumFailed"

.field public static final COLUMN_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final COLUMN_PATCH_SIZE:Ljava/lang/String; = "patchSize"

.field public static final COLUMN_PATCH_URL:Ljava/lang/String; = "patchUrl"

.field public static final COLUMN_PLATFORM:Ljava/lang/String; = "platform"

.field public static final COLUMN_REFERER:Ljava/lang/String; = "referer"

.field public static final COLUMN_SECONDMD5:Ljava/lang/String; = "secondMD5"

.field public static final COLUMN_SERVERMD5:Ljava/lang/String; = "serverMD5"

.field public static final COLUMN_SID:Ljava/lang/String; = "sid"

.field public static final COLUMN_SIGNATUREERROR:Ljava/lang/String; = "signatureError"

.field public static final COLUMN_SOURCEFROM:Ljava/lang/String; = "sourcefrom"

.field public static final COLUMN_SPEED:Ljava/lang/String; = "speed"

.field public static final COLUMN_START_INSTALL:Ljava/lang/String; = "startInstall"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TARGET_SIZE:Ljava/lang/String; = "targetSize"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final COLUMN_USER_AGENT:Ljava/lang/String; = "useragent"

.field public static final COLUMN_VERSIONCODE:Ljava/lang/String; = "versionCode"

.field public static final COLUMN_VERSIONNAME:Ljava/lang/String; = "versionName"

.field public static final DELETE_FILE_FALSE:I = 0x0

.field public static final DELETE_FILE_TRUE:I = 0x1

.field public static final DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

.field public static final DOWN_ALL_ALLOWED:I = 0x0

.field public static final DOWN_FULL:I = 0x0

.field public static final DOWN_ONLY_WIFI:I = 0x1

.field public static final DOWN_PARTIAL:I = 0x1

.field public static final DOWN_TYPE_DOWN:I = 0x0

.field public static final DOWN_TYPE_UPDATE:I = 0x1

.field public static final HTTP_STATUS_NOT_FOUND:I = 0x194

.field public static final INIT_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

.field public static final MIN_ARTIFICIAL_ERROR_STATUS:I = 0x1e8

.field public static final RESUME_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

.field public static final SIGNATUREERROR:I = 0x1

.field public static final START_INSTALL_FALSE:I = 0x0

.field public static final START_INSTALL_TRUE:I = 0x1

.field public static final STATUS_BAD_REQUEST:I = 0x190

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CANNOT_RESUME:I = 0x1e9

.field public static final STATUS_CHECKING:I = 0x258

.field public static final STATUS_DEVICE_NOT_FOUND_ERROR:I = 0xc7

.field public static final STATUS_DOWNLOAD_SUCCESS:I = 0xc8

.field public static final STATUS_FILE_ALREADY_EXISTS_ERROR:I = 0x1e8

.field public static final STATUS_FILE_DELETED:I = 0x1f2

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_FIRST_VALIDATE_ERROR:I = 0x2bc

.field public static final STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final STATUS_INSTALLED:I = 0x25a

.field public static final STATUS_INSTALLING:I = 0x259

.field public static final STATUS_INSUFFICIENT_SPACE_ERROR:I = 0xc6

.field public static final STATUS_LENGTH_REQUIRED:I = 0x19b

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_PAUSED_BY_APP:I = 0xc1

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final STATUS_QUEUED_FOR_WIFI:I = 0xc4

.field public static final STATUS_RETRYING:I = 0xc5

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SECOND_VALIDATE_ERROR:I = 0x2bd

.field public static final STATUS_SIGNATURE_ERROR:I = 0x2bf

.field public static final STATUS_TOO_MANY_DELS:I = 0x2be

.field public static final STATUS_TOO_MANY_REDIRECTS:I = 0x1f1

.field public static final STATUS_TOO_MANY_RETRIES:I = 0x1f3

.field public static final STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final STATUS_WAITING_FOR_NETWORK:I = 0xc3

.field public static final STATUS_WAITING_TO_RETRY:I = 0xc2

.field public static final UNSIGNATUREERROR:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.market2345.vallnyDownloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "all_downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/download/Downloads$Impl;->DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.market2345.vallnyDownloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "init_all_downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/download/Downloads$Impl;->INIT_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.market2345.vallnyDownloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "resume_all_downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/download/Downloads$Impl;->RESUME_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.market2345.vallnyDownloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cancel_all_downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/download/Downloads$Impl;->CANCEL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static isStatusClientError(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 331
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 347
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 324
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusInformational(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 310
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusServerError(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 338
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 317
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static statusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 550
    sparse-switch p0, :sswitch_data_0

    .line 598
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 552
    :sswitch_0
    const-string v0, "PENDING"

    goto :goto_0

    .line 554
    :sswitch_1
    const-string v0, "RUNNING"

    goto :goto_0

    .line 556
    :sswitch_2
    const-string v0, "PAUSED_BY_APP"

    goto :goto_0

    .line 558
    :sswitch_3
    const-string v0, "WAITING_TO_RETRY"

    goto :goto_0

    .line 560
    :sswitch_4
    const-string v0, "WAITING_FOR_NETWORK"

    goto :goto_0

    .line 562
    :sswitch_5
    const-string v0, "QUEUED_FOR_WIFI"

    goto :goto_0

    .line 564
    :sswitch_6
    const-string v0, "INSUFFICIENT_SPACE_ERROR"

    goto :goto_0

    .line 566
    :sswitch_7
    const-string v0, "DEVICE_NOT_FOUND_ERROR"

    goto :goto_0

    .line 568
    :sswitch_8
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 570
    :sswitch_9
    const-string v0, "BAD_REQUEST"

    goto :goto_0

    .line 572
    :sswitch_a
    const-string v0, "NOT_ACCEPTABLE"

    goto :goto_0

    .line 574
    :sswitch_b
    const-string v0, "LENGTH_REQUIRED"

    goto :goto_0

    .line 576
    :sswitch_c
    const-string v0, "PRECONDITION_FAILED"

    goto :goto_0

    .line 578
    :sswitch_d
    const-string v0, "FILE_ALREADY_EXISTS_ERROR"

    goto :goto_0

    .line 580
    :sswitch_e
    const-string v0, "CANNOT_RESUME"

    goto :goto_0

    .line 582
    :sswitch_f
    const-string v0, "CANCELED"

    goto :goto_0

    .line 584
    :sswitch_10
    const-string v0, "UNKNOWN_ERROR"

    goto :goto_0

    .line 586
    :sswitch_11
    const-string v0, "FILE_ERROR"

    goto :goto_0

    .line 588
    :sswitch_12
    const-string v0, "UNHANDLED_REDIRECT"

    goto :goto_0

    .line 590
    :sswitch_13
    const-string v0, "UNHANDLED_HTTP_CODE"

    goto :goto_0

    .line 592
    :sswitch_14
    const-string v0, "HTTP_DATA_ERROR"

    goto :goto_0

    .line 594
    :sswitch_15
    const-string v0, "HTTP_EXCEPTION"

    goto :goto_0

    .line 596
    :sswitch_16
    const-string v0, "TOO_MANY_REDIRECTS"

    goto :goto_0

    .line 550
    nop

    :sswitch_data_0
    .sparse-switch
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_2
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_5
        0xc6 -> :sswitch_6
        0xc7 -> :sswitch_7
        0xc8 -> :sswitch_8
        0x190 -> :sswitch_9
        0x196 -> :sswitch_a
        0x19b -> :sswitch_b
        0x19c -> :sswitch_c
        0x1e8 -> :sswitch_d
        0x1e9 -> :sswitch_e
        0x1ea -> :sswitch_f
        0x1eb -> :sswitch_10
        0x1ec -> :sswitch_11
        0x1ed -> :sswitch_12
        0x1ee -> :sswitch_13
        0x1ef -> :sswitch_14
        0x1f0 -> :sswitch_15
        0x1f1 -> :sswitch_16
    .end sparse-switch
.end method
