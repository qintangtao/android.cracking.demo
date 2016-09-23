.class public Lcom/market2345/download/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field public static final APP_INSTALL_AUTO:I = 0x0

.field public static final APP_INSTALL_EXTERNAL:I = 0x2

.field public static final APP_INSTALL_INTERNAL:I = 0x1

.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_FAILED_INVALID_PACKAGE:I = -0x3

.field public static final DELETE_FAILED_PERMISSION_DENIED:I = -0x4

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_OTHER:I = -0xf4240

.field public static final INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16

.field public static final INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PackageUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    if-eqz p0, :cond_0

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 474
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 477
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 478
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 479
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 481
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 486
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getInstallLocation()I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 496
    const-string v5, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm get-install-location"

    invoke-static {v5, v4, v3}, Lcom/market2345/util/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 498
    .local v0, "commandResult":Lcom/market2345/util/ShellUtils$CommandResult;
    iget v5, v0, Lcom/market2345/util/ShellUtils$CommandResult;->result:I

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 500
    :try_start_0
    iget-object v5, v0, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 501
    .local v2, "location":I
    packed-switch v2, :pswitch_data_0

    .end local v2    # "location":I
    :cond_0
    :goto_0
    move v3, v4

    .line 512
    :goto_1
    :pswitch_0
    return v3

    .line 505
    .restart local v2    # "location":I
    :pswitch_1
    const/4 v3, 0x2

    goto :goto_1

    .line 507
    .end local v2    # "location":I
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 509
    const-string v3, "PackageUtils"

    const-string v5, "pm get-install-location error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getInstallLocationParams()Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    invoke-static {}, Lcom/market2345/download/util/PackageUtils;->getInstallLocation()I

    move-result v0

    .line 522
    .local v0, "location":I
    packed-switch v0, :pswitch_data_0

    .line 528
    const-string v1, ""

    :goto_0
    return-object v1

    .line 524
    :pswitch_0
    const-string v1, "-f"

    goto :goto_0

    .line 526
    :pswitch_1
    const-string v1, "-s"

    goto :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final install(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/market2345/download/util/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/market2345/util/ShellUtils;->checkRootPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    invoke-static {p0, p1}, Lcom/market2345/download/util/PackageUtils;->installSilent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/market2345/download/util/PackageUtils;->installNormal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static installNormal(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadInfo"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 90
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v4, "i":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    iget-object v7, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1

    :cond_0
    move v5, v6

    .line 110
    :goto_0
    return v5

    .line 97
    :cond_1
    const/4 v6, 0x3

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "chmod"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "771"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 98
    .local v0, "args1":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 99
    const/4 v6, 0x3

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "chmod"

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const-string v7, "777"

    aput-object v7, v1, v6

    const/4 v6, 0x2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 100
    .local v1, "args2":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "args1":[Ljava/lang/String;
    .end local v1    # "args2":[Ljava/lang/String;
    :goto_1
    iget-wide v6, p1, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v12, v6, v7}, Lcom/market2345/log/DownloadLog;->downloadEvent(IJ)V

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static installNormal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 59
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v4, "i":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1

    :cond_0
    move v5, v6

    .line 80
    :goto_0
    return v5

    .line 66
    :cond_1
    const/4 v6, 0x3

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "chmod"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "771"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 67
    .local v0, "args1":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 68
    const/4 v6, 0x3

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "chmod"

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const-string v7, "777"

    aput-object v7, v1, v6

    const/4 v6, 0x2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 69
    .local v1, "args2":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "args1":[Ljava/lang/String;
    .end local v1    # "args2":[Ljava/lang/String;
    :goto_1
    invoke-static {v12, p1}, Lcom/market2345/log/DownloadLog;->downloadEvent(ILjava/lang/String;)V

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static installSilent(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/market2345/download/util/PackageUtils;->getInstallLocationParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/market2345/download/util/PackageUtils;->installSilent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static installSilent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "pmParams"    # Ljava/lang/String;

    .prologue
    const v5, -0xf4240

    const/4 v4, 0x1

    const/4 v6, -0x3

    .line 149
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v4, v6

    .line 281
    .end local p2    # "pmParams":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 153
    .restart local p2    # "pmParams":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v4, v6

    .line 155
    goto :goto_0

    .line 162
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm install "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_5

    const-string p2, ""

    .end local p2    # "pmParams":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    const-string v8, "\\ "

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    .local v0, "command":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/market2345/download/util/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_1
    invoke-static {v7, v3, v4}, Lcom/market2345/util/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v1

    .line 165
    .local v1, "commandResult":Lcom/market2345/util/ShellUtils$CommandResult;
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const-string v7, "Success"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const-string v7, "success"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    :cond_6
    const-string v3, "PackageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installSilent successMsg:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v1, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", ErrorMsg:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    if-nez v3, :cond_8

    move v4, v5

    .line 174
    goto/16 :goto_0

    .line 164
    .end local v1    # "commandResult":Lcom/market2345/util/ShellUtils$CommandResult;
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    .line 176
    .restart local v1    # "commandResult":Lcom/market2345/util/ShellUtils$CommandResult;
    :cond_8
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_ALREADY_EXISTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 177
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 179
    :cond_9
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INVALID_APK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 180
    const/4 v4, -0x2

    goto/16 :goto_0

    .line 182
    :cond_a
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INVALID_URI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v4, v6

    .line 183
    goto/16 :goto_0

    .line 185
    :cond_b
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 186
    const/4 v4, -0x4

    goto/16 :goto_0

    .line 188
    :cond_c
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 189
    const/4 v4, -0x5

    goto/16 :goto_0

    .line 191
    :cond_d
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_NO_SHARED_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 192
    const/4 v4, -0x6

    goto/16 :goto_0

    .line 194
    :cond_e
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 195
    const/4 v4, -0x7

    goto/16 :goto_0

    .line 197
    :cond_f
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 198
    const/4 v4, -0x8

    goto/16 :goto_0

    .line 200
    :cond_10
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 201
    const/16 v4, -0x9

    goto/16 :goto_0

    .line 203
    :cond_11
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 204
    const/16 v4, -0xa

    goto/16 :goto_0

    .line 206
    :cond_12
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_DEXOPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 207
    const/16 v4, -0xb

    goto/16 :goto_0

    .line 209
    :cond_13
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_OLDER_SDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 210
    const/16 v4, -0xc

    goto/16 :goto_0

    .line 212
    :cond_14
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 213
    const/16 v4, -0xd

    goto/16 :goto_0

    .line 215
    :cond_15
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_NEWER_SDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 216
    const/16 v4, -0xe

    goto/16 :goto_0

    .line 218
    :cond_16
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_TEST_ONLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 219
    const/16 v4, -0xf

    goto/16 :goto_0

    .line 221
    :cond_17
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 222
    const/16 v4, -0x10

    goto/16 :goto_0

    .line 224
    :cond_18
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MISSING_FEATURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 225
    const/16 v4, -0x11

    goto/16 :goto_0

    .line 227
    :cond_19
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_CONTAINER_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 228
    const/16 v4, -0x12

    goto/16 :goto_0

    .line 230
    :cond_1a
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 231
    const/16 v4, -0x13

    goto/16 :goto_0

    .line 233
    :cond_1b
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 234
    const/16 v4, -0x14

    goto/16 :goto_0

    .line 236
    :cond_1c
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 237
    const/16 v4, -0x15

    goto/16 :goto_0

    .line 239
    :cond_1d
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_VERIFICATION_FAILURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 240
    const/16 v4, -0x16

    goto/16 :goto_0

    .line 242
    :cond_1e
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 243
    const/16 v4, -0x17

    goto/16 :goto_0

    .line 245
    :cond_1f
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_UID_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 246
    const/16 v4, -0x18

    goto/16 :goto_0

    .line 248
    :cond_20
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_NOT_APK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 249
    const/16 v4, -0x64

    goto/16 :goto_0

    .line 251
    :cond_21
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 252
    const/16 v4, -0x65

    goto/16 :goto_0

    .line 254
    :cond_22
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 255
    const/16 v4, -0x66

    goto/16 :goto_0

    .line 257
    :cond_23
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 258
    const/16 v4, -0x67

    goto/16 :goto_0

    .line 260
    :cond_24
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 261
    const/16 v4, -0x68

    goto/16 :goto_0

    .line 263
    :cond_25
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 264
    const/16 v4, -0x69

    goto/16 :goto_0

    .line 266
    :cond_26
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 267
    const/16 v4, -0x6a

    goto/16 :goto_0

    .line 269
    :cond_27
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 270
    const/16 v4, -0x6b

    goto/16 :goto_0

    .line 272
    :cond_28
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 273
    const/16 v4, -0x6c

    goto/16 :goto_0

    .line 275
    :cond_29
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 276
    const/16 v4, -0x6d

    goto/16 :goto_0

    .line 278
    :cond_2a
    iget-object v3, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INTERNAL_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 279
    const/16 v4, -0x6e

    goto/16 :goto_0

    :cond_2b
    move v4, v5

    .line 281
    goto/16 :goto_0
.end method

.method public static isSystemApplication(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    if-nez p0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/market2345/download/util/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 401
    if-nez p0, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 405
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/market2345/download/util/PackageUtils;->isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 422
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v2

    .line 427
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 428
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 538
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 539
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 540
    .local v1, "sdkVersion":I
    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 541
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 548
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 550
    return-void

    .line 544
    :cond_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string v2, "pkg"

    :goto_1
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v2, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method public static final uninstall(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p0}, Lcom/market2345/download/util/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/market2345/util/ShellUtils;->checkRootPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    invoke-static {p0, p1}, Lcom/market2345/download/util/PackageUtils;->uninstallSilent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/market2345/download/util/PackageUtils;->uninstallNormal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static uninstallNormal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 311
    :cond_0
    const/4 v1, 0x0

    .line 318
    :goto_0
    return v1

    .line 314
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 318
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static uninstallSilent(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/market2345/download/util/PackageUtils;->uninstallSilent(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static uninstallSilent(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isKeepData"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 352
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 353
    :cond_0
    const/4 v3, -0x3

    .line 376
    :cond_1
    :goto_0
    return v3

    .line 360
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm uninstall"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_4

    const-string v2, " -k "

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    const-string v6, "\\ "

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    .local v0, "command":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/market2345/download/util/PackageUtils;->isSystemApplication(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v5, v2, v3}, Lcom/market2345/util/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v1

    .line 363
    .local v1, "commandResult":Lcom/market2345/util/ShellUtils$CommandResult;
    iget-object v2, v1, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const-string v5, "success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 367
    :cond_3
    const-string v2, "PackageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallSilent successMsg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", ErrorMsg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v2, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    if-nez v2, :cond_6

    move v3, v4

    .line 371
    goto :goto_0

    .line 360
    .end local v0    # "command":Ljava/lang/StringBuilder;
    .end local v1    # "commandResult":Lcom/market2345/util/ShellUtils$CommandResult;
    :cond_4
    const-string v2, " "

    goto :goto_1

    .line 362
    .restart local v0    # "command":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 373
    .restart local v1    # "commandResult":Lcom/market2345/util/ShellUtils$CommandResult;
    :cond_6
    iget-object v2, v1, Lcom/market2345/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v3, "Permission denied"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 374
    const/4 v3, -0x4

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 376
    goto/16 :goto_0
.end method
