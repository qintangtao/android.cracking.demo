.class public Lcom/market2345/common/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final APP_DETAILS_CLASS_NAME:Ljava/lang/String; = "com.android.settings.InstalledAppDetails"

.field private static final APP_DETAILS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final APP_PKG_NAME_21:Ljava/lang/String; = "com.android.settings.ApplicationPkgName"

.field private static final APP_PKG_NAME_22:Ljava/lang/String; = "pkg"

.field static final AUTHORITY:Ljava/lang/String; = "com.android.launcher2.settings"

.field static final CONTENT_URI:Landroid/net/Uri;

.field private static final ENCODING_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field public static final MD5_SP:Ljava/lang/String; = "md5_sp"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SCHEME:Ljava/lang/String; = "package"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field public static final TAG:Ljava/lang/String;

.field private static authies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static calendar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field public static sDebug:Z

.field public static sLogTag:Ljava/lang/String;


# instance fields
.field final PARAMETER_NOTIFY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const-class v0, Lcom/market2345/common/util/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/common/util/Utils;->TAG:Ljava/lang/String;

    .line 882
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/market2345/common/util/Utils;->authies:Ljava/util/HashMap;

    .line 1353
    const-string v0, "content://com.android.launcher2.settings/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/common/util/Utils;->CONTENT_URI:Landroid/net/Uri;

    .line 1358
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/common/util/Utils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1351
    const-string v0, "notify"

    iput-object v0, p0, Lcom/market2345/common/util/Utils;->PARAMETER_NOTIFY:Ljava/lang/String;

    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 256
    sget-boolean v0, Lcom/market2345/common/util/Utils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/market2345/common/util/Utils;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 262
    sget-boolean v0, Lcom/market2345/common/util/Utils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/market2345/common/util/Utils;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    :cond_0
    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 292
    sget-boolean v0, Lcom/market2345/common/util/Utils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/market2345/common/util/Utils;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    return-void
.end method

.method public static E(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 298
    sget-boolean v0, Lcom/market2345/common/util/Utils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/market2345/common/util/Utils;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :cond_0
    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 268
    sget-boolean v0, Lcom/market2345/common/util/Utils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/market2345/common/util/Utils;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 274
    sget-boolean v0, Lcom/market2345/common/util/Utils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/market2345/common/util/Utils;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :cond_0
    return-void
.end method

.method private static RunApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 806
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 807
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 808
    .local v7, "resolveIntent":Landroid/content/Intent;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 810
    .local v5, "pManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 812
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 813
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_0

    .line 814
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 815
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 816
    .local v1, "className":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 817
    .local v4, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 819
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 821
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pManager":Landroid/content/pm/PackageManager;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "resolveIntent":Landroid/content/Intent;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v3

    .line 824
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static V(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-boolean v0, Lcom/market2345/common/util/Utils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/market2345/common/util/Utils;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    return-void
.end method

.method public static V(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 250
    sget-boolean v0, Lcom/market2345/common/util/Utils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/market2345/common/util/Utils;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :cond_0
    return-void
.end method

.method public static W(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 280
    sget-boolean v0, Lcom/market2345/common/util/Utils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/market2345/common/util/Utils;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    return-void
.end method

.method public static W(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 286
    sget-boolean v0, Lcom/market2345/common/util/Utils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 287
    sget-object v0, Lcom/market2345/common/util/Utils;->sLogTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    :cond_0
    return-void
.end method

.method public static addAppShortcutToDesktop(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1239
    const v4, 0x7f0b000c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1242
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/market2345/common/util/Utils;->hasShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1245
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v0, "addShortCut":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lcom/market2345/home/HomeTabActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1250
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1253
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1254
    const-string v4, "duplicate"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1256
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020175

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1258
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1260
    const/high16 v4, 0x200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1262
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1264
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static backupApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "desPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1851
    const/4 v3, 0x0

    .line 1852
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 1854
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1855
    .local v7, "in":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v8, "out":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1857
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 1860
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1861
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1865
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/high16 v10, 0x40000

    :try_start_2
    new-array v0, v10, [B

    .line 1866
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_3

    .line 1867
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1868
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    goto :goto_0

    .line 1873
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 1874
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/File;
    .end local v8    # "out":Ljava/io/File;
    .local v2, "e":Ljava/lang/Throwable;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1878
    if-eqz v3, :cond_1

    .line 1880
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1884
    const/4 v3, 0x0

    .line 1888
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 1890
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1894
    const/4 v5, 0x0

    :cond_2
    :goto_3
    return v9

    .line 1870
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "in":Ljava/io/File;
    .restart local v8    # "out":Ljava/io/File;
    :cond_3
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 1872
    const/4 v9, 0x1

    .line 1878
    if-eqz v4, :cond_7

    .line 1880
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1884
    const/4 v3, 0x0

    .line 1888
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v6, :cond_6

    .line 1890
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1894
    const/4 v5, 0x0

    .line 1895
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1881
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 1882
    .local v2, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1884
    const/4 v3, 0x0

    .line 1885
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1884
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v9

    const/4 v3, 0x0

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    throw v9

    .line 1891
    :catch_2
    move-exception v2

    .line 1892
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1894
    const/4 v5, 0x0

    .line 1895
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1894
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    const/4 v5, 0x0

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    throw v9

    .line 1881
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v7    # "in":Ljava/io/File;
    .end local v8    # "out":Ljava/io/File;
    .local v2, "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    .line 1882
    .local v2, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1884
    const/4 v3, 0x0

    .line 1885
    goto :goto_2

    .line 1884
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v9

    const/4 v3, 0x0

    throw v9

    .line 1891
    :catch_4
    move-exception v2

    .line 1892
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1894
    const/4 v5, 0x0

    .line 1895
    goto :goto_3

    .line 1894
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v9

    const/4 v5, 0x0

    throw v9

    .line 1878
    :catchall_4
    move-exception v9

    :goto_5
    if-eqz v3, :cond_4

    .line 1880
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1884
    const/4 v3, 0x0

    .line 1888
    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    .line 1890
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1894
    const/4 v5, 0x0

    :cond_5
    :goto_7
    throw v9

    .line 1881
    :catch_5
    move-exception v2

    .line 1882
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1884
    const/4 v3, 0x0

    .line 1885
    goto :goto_6

    .line 1884
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v9

    const/4 v3, 0x0

    throw v9

    .line 1891
    :catch_6
    move-exception v2

    .line 1892
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1894
    const/4 v5, 0x0

    .line 1895
    goto :goto_7

    .line 1894
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v9

    const/4 v5, 0x0

    throw v9

    .line 1878
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/File;
    .restart local v8    # "out":Ljava/io/File;
    :catchall_7
    move-exception v9

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v9

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1873
    .end local v7    # "in":Ljava/io/File;
    .end local v8    # "out":Ljava/io/File;
    :catch_7
    move-exception v2

    goto :goto_1

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/File;
    .restart local v8    # "out":Ljava/io/File;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 2005
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2006
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 2007
    :cond_0
    const/4 v4, 0x0

    .line 2017
    :goto_0
    return-object v4

    .line 2009
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 2010
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 2011
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2012
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 2013
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2015
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2017
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 1626
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1627
    .local v4, "width":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1628
    .local v1, "height":I
    const/4 v2, 0x1

    .line 1630
    .local v2, "inSampleSize":I
    if-le v4, p1, :cond_0

    if-le v1, p2, :cond_0

    .line 1631
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 1632
    .local v3, "w":I
    int-to-float v5, v1

    int-to-float v6, p2

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 1633
    .local v0, "h":I
    if-le v3, v0, :cond_1

    move v2, v3

    .line 1636
    .end local v0    # "h":I
    .end local v3    # "w":I
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "h":I
    .restart local v3    # "w":I
    :cond_1
    move v2, v0

    .line 1633
    goto :goto_0
.end method

.method public static calculateRemainBytes(Landroid/content/Context;FF)Ljava/lang/String;
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "current"    # F
    .param p2, "total"    # F

    .prologue
    const/4 v5, 0x0

    const v11, 0x7f0b0061

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 748
    sub-float v3, p2, p1

    .line 749
    .local v3, "remain":F
    cmpl-float v6, v3, v5

    if-lez v6, :cond_0

    .line 750
    :goto_0
    const-string v4, ""

    .line 751
    .local v4, "text":Ljava/lang/String;
    const-string v2, "M"

    .line 752
    .local v2, "megaBytes":Ljava/lang/String;
    const-string v1, "K"

    .line 753
    .local v1, "kiloBytes":Ljava/lang/String;
    const-string v0, "B"

    .line 754
    .local v0, "bytes":Ljava/lang/String;
    const v5, 0x49742400    # 1000000.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 755
    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "%.02f"

    new-array v7, v10, [Ljava/lang/Object;

    const v8, 0x49742400    # 1000000.0f

    div-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "M"

    aput-object v6, v5, v10

    invoke-virtual {p0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 761
    :goto_1
    return-object v4

    .end local v0    # "bytes":Ljava/lang/String;
    .end local v1    # "kiloBytes":Ljava/lang/String;
    .end local v2    # "megaBytes":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 749
    goto :goto_0

    .line 756
    .restart local v0    # "bytes":Ljava/lang/String;
    .restart local v1    # "kiloBytes":Ljava/lang/String;
    .restart local v2    # "megaBytes":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    :cond_1
    const/high16 v5, 0x447a0000    # 1000.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    .line 757
    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "%.02f"

    new-array v7, v10, [Ljava/lang/Object;

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "K"

    aput-object v6, v5, v10

    invoke-virtual {p0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 759
    :cond_2
    new-array v5, v7, [Ljava/lang/Object;

    float-to-int v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "B"

    aput-object v6, v5, v10

    invoke-virtual {p0, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static checkHasIntall(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10
    .param p0, "providerAuth"    # Ljava/lang/String;
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1361
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1362
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "favorites"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1363
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    sget-object v2, Lcom/market2345/common/util/Utils;->PROJECTION:[Ljava/lang/String;

    const-string v3, "title=?"

    new-array v4, v8, [Ljava/lang/String;

    const v5, 0x7f0b000c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1367
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 1369
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1380
    if-eqz v6, :cond_0

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v2, v8

    :goto_0
    return v2

    .line 1371
    :catch_0
    move-exception v2

    .line 1380
    if-eqz v6, :cond_1

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v2, v8

    goto :goto_0

    .line 1380
    :cond_2
    if-eqz v6, :cond_3

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v2, v9

    goto :goto_0

    .line 1377
    :catch_1
    move-exception v7

    .line 1380
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_4

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v2, v8

    goto :goto_0

    .line 1380
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_5

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public static checkInstallCleanShorCut(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1075
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1076
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "check_clean_shortcut"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1077
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 1078
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->createCleanShortCut(Landroid/content/Context;)V

    .line 1079
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "check_clean_shortcut"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1081
    :cond_0
    return-void
.end method

.method public static checkInstallShorCut(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 890
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 891
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "check_shortcut"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 892
    .local v0, "b":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/market2345/common/util/Utils;->isMiUi()Z

    move-result v2

    if-nez v2, :cond_0

    .line 893
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->createShortCut(Landroid/content/Context;)V

    .line 894
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "check_shortcut"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 933
    :cond_0
    return-void
.end method

.method private static checkLastForAll(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 946
    const-string v1, ""

    .line 947
    .local v1, "auth":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 948
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v5, :cond_2

    .line 949
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 950
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 951
    .local v8, "pinfos":[Landroid/content/pm/ProviderInfo;
    if-eqz v8, :cond_0

    .line 952
    move-object v0, v8

    .local v0, "arr$":[Landroid/content/pm/ProviderInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .line 953
    .local v7, "pinfo":Landroid/content/pm/ProviderInfo;
    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 954
    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v10, "launcher"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 955
    iget-object v1, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 956
    goto :goto_0

    .line 952
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 963
    .end local v0    # "arr$":[Landroid/content/pm/ProviderInfo;
    .end local v3    # "i$":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "len$":I
    .end local v7    # "pinfo":Landroid/content/pm/ProviderInfo;
    .end local v8    # "pinfos":[Landroid/content/pm/ProviderInfo;
    :cond_2
    return-object v1
.end method

.method public static checkSearchShorCut(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1084
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1085
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "check_search_shortcut"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1086
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 1087
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->createSearchShortCut(Landroid/content/Context;)V

    .line 1088
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "check_search_shortcut"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1090
    :cond_0
    return-void
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 765
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    .line 766
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 767
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 768
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 769
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 768
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 773
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 774
    if-eqz v3, :cond_1

    .line 775
    move-object v0, v3

    .restart local v0    # "arr$":[Ljava/io/File;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 776
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 775
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 779
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    return-void
.end method

.method public static compareFileWithSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "path1"    # Ljava/lang/String;
    .param p1, "path2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 459
    .local v2, "start":J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v4

    .line 463
    :cond_1
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->getFileSignatureMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "signature1":Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/common/util/Utils;->getFileSignatureMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "signature2":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareFileWithSignature total time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/common/util/Utils;->V(Ljava/lang/String;)V

    .line 467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 468
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_1

    .line 525
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 526
    .local v1, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 528
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v1, :cond_0

    const/16 v5, 0x9

    if-gt v1, v5, :cond_0

    .line 529
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 533
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    :cond_0
    add-int/lit8 v5, v1, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 535
    .end local v1    # "halfbyte":I
    .end local v4    # "two_halfs":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v1    # "halfbyte":I
    .restart local v3    # "two_halfs":I
    :cond_2
    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dst"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 406
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 407
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 408
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 411
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 412
    return-void
.end method

.method public static createCleanShortCut(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1028
    const v2, 0x7f0b0140

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/market2345/common/util/Utils;->hasShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1045
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v0, "addShortCut":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1050
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f0200c3

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1053
    const-string v2, "android.intent.extra.shortcut.INTENT"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.market2345.clean"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1055
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static createSearchShortCut(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1094
    const v2, 0x7f0b013f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/market2345/common/util/Utils;->hasShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1114
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v0, "addShortCut":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1119
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f0202e9

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1122
    const-string v2, "android.intent.extra.shortcut.INTENT"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.market2345.search"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1127
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static createShortCut(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 974
    const v3, 0x7f0b000d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 977
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/market2345/common/util/Utils;->hasShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 982
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 986
    .local v1, "intent":Landroid/content/Intent;
    const-class v3, Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 987
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 989
    const/high16 v3, 0x200000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 991
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .local v0, "addShortCut":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    const-string v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 996
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v4, 0x7f020175

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 999
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1001
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static decryptCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "encryptedVal"    # Ljava/lang/String;
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 868
    invoke-static {p1}, Lcom/market2345/lm/util/GetMD5;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 869
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 870
    .local v7, "keylen":I
    const/4 v9, 0x0

    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 871
    .local v2, "decode":[B
    array-length v9, v2

    new-array v8, v9, [B

    .line 872
    .local v8, "resultByte":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v2

    if-ge v3, v9, :cond_0

    .line 873
    rem-int v4, v3, v7

    .line 874
    .local v4, "i1":I
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    aget-byte v0, v9, v4

    .line 875
    .local v0, "b":I
    aget-byte v1, v2, v3

    .line 876
    .local v1, "b1":I
    xor-int v9, v0, v1

    int-to-byte v5, v9

    .line 877
    .local v5, "i2":B
    aput-byte v5, v8, v3

    .line 872
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 879
    .end local v0    # "b":I
    .end local v1    # "b1":I
    .end local v4    # "i1":I
    .end local v5    # "i2":B
    :cond_0
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    return-object v9
.end method

.method private static defalutHandler(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 936
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->checkLastForAll(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, "auth":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->createShortCut(Landroid/content/Context;)V

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-static {v0, p0}, Lcom/market2345/common/util/Utils;->checkHasIntall(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 940
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->createShortCut(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static delShortCutNew(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isBallShortCut"    # Z

    .prologue
    .line 1209
    if-eqz p1, :cond_0

    .line 1210
    const v3, 0x7f0b0140

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1212
    .local v2, "strShortCut":Ljava/lang/String;
    const-string v0, "com.market2345.clean"

    .line 1219
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v1, "shortcut":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    const-string v3, "android.intent.extra.shortcut.INTENT"

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1230
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1231
    return-void

    .line 1214
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "shortcut":Landroid/content/Intent;
    .end local v2    # "strShortCut":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0b013f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1216
    .restart local v2    # "strShortCut":Ljava/lang/String;
    const-string v0, "com.market2345.search"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0
.end method

.method private static delShortCutOld(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isBallShortCut"    # Z

    .prologue
    .line 1183
    if-eqz p1, :cond_0

    .line 1184
    const v5, 0x7f0b0140

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1185
    .local v4, "strShortCut":Ljava/lang/String;
    const-class v0, Lcom/market2345/clean/shortcut/shortcutActivity;

    .line 1191
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v3, "shortcut":Landroid/content/Intent;
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1197
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1201
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1202
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1203
    return-void

    .line 1187
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "shortcut":Landroid/content/Intent;
    .end local v4    # "strShortCut":Ljava/lang/String;
    :cond_0
    const v5, 0x7f0b013f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1188
    .restart local v4    # "strShortCut":Ljava/lang/String;
    const-class v0, Lcom/market2345/home/HomeTabActivity;

    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 736
    if-nez p0, :cond_0

    .line 737
    const/4 v1, 0x0

    .line 740
    :goto_0
    return v1

    .line 739
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, "realFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public static deleteShortCut(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isBallShortCut"    # Z

    .prologue
    .line 1176
    invoke-static {p0, p1}, Lcom/market2345/common/util/Utils;->delShortCutOld(Landroid/content/Context;Z)V

    .line 1177
    invoke-static {p0, p1}, Lcom/market2345/common/util/Utils;->delShortCutNew(Landroid/content/Context;Z)V

    .line 1178
    return-void
.end method

.method public static detectProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 602
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 603
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 604
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 605
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 607
    .local v2, "port":I
    if-eqz v3, :cond_0

    .line 608
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v5, "http"

    invoke-direct {v4, v3, v2, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 611
    .end local v2    # "port":I
    .end local v3    # "proxyHost":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 304
    sget-object v2, Lcom/market2345/common/util/Utils;->calendar:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/market2345/common/util/Utils;->calendar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 305
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/market2345/common/util/Utils;->calendar:Ljava/lang/ref/WeakReference;

    .line 307
    :cond_1
    sget-object v2, Lcom/market2345/common/util/Utils;->calendar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 308
    .local v1, "target":Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 309
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 310
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatSizeToMB(J)Ljava/lang/String;
    .locals 2
    .param p0, "fileSize"    # J

    .prologue
    .line 1554
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1555
    const-string v0, "0KB"

    .line 1557
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "timeInMillis"    # J

    .prologue
    .line 393
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 394
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getApkInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/market2345/lm/bean/AppInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "appInfo":Lcom/market2345/lm/bean/AppInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 708
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_0

    .line 709
    const/4 v4, 0x0

    .line 729
    :goto_0
    return-object v4

    .line 711
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 712
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    .line 713
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 715
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v0, Lcom/market2345/lm/bean/AppInfo;

    .end local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    invoke-direct {v0}, Lcom/market2345/lm/bean/AppInfo;-><init>()V

    .line 717
    .restart local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/market2345/lm/bean/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 719
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/market2345/lm/bean/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 721
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/market2345/lm/bean/AppInfo;->setVersionName(Ljava/lang/String;)V

    .line 723
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v4}, Lcom/market2345/lm/bean/AppInfo;->setCurVersionCode(I)V

    .line 725
    invoke-virtual {v0, p1}, Lcom/market2345/lm/bean/AppInfo;->setApkLocUrl(Ljava/lang/String;)V

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move-object v4, v0

    .line 729
    goto :goto_0
.end method

.method public static getApkSize(Ljava/lang/String;)D
    .locals 8
    .param p0, "apkSize"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 1470
    const-wide/16 v2, 0x0

    .line 1472
    .local v2, "size":D
    :try_start_0
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "K"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1473
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1474
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1500
    :goto_0
    return-wide v2

    .line 1475
    :cond_0
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "KB"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1476
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1477
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0

    .line 1478
    :cond_1
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "M"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1479
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1480
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double v2, v4, v6

    goto :goto_0

    .line 1481
    :cond_2
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1482
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1483
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double v2, v4, v6

    goto :goto_0

    .line 1484
    :cond_3
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "G"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1485
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1486
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    mul-double v2, v4, v6

    goto :goto_0

    .line 1487
    :cond_4
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "GB"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1488
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1489
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    mul-double v2, v4, v6

    goto/16 :goto_0

    .line 1491
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1492
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto/16 :goto_0

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1497
    const-wide/16 v2, 0x0

    goto/16 :goto_0
.end method

.method public static getAppID(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 9
    .param p0, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1720
    iget-object v7, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1722
    .local v3, "sourceDir":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1723
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const/4 v5, 0x0

    .line 1725
    .local v5, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .local v6, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 1728
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1729
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 1730
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "META-INF/appid_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1731
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1732
    .local v4, "suffixs":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1733
    const/4 v7, 0x1

    aget-object v7, v4, v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1740
    if-eqz v6, :cond_1

    .line 1742
    :try_start_2
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v5, v6

    .line 1773
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "suffixs":[Ljava/lang/String;
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_1
    return-object v7

    .line 1743
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "suffixs":[Ljava/lang/String;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 1744
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1740
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "suffixs":[Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 1742
    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1750
    :cond_4
    :goto_2
    :try_start_4
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1751
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 1753
    :cond_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1754
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 1755
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "META-INF/channel_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1756
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1757
    .restart local v4    # "suffixs":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 1758
    const/4 v7, 0x1

    aget-object v7, v4, v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1765
    if-eqz v5, :cond_2

    .line 1767
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1768
    :catch_1
    move-exception v0

    .line 1769
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1743
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "suffixs":[Ljava/lang/String;
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v0

    .line 1744
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1737
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v0

    .line 1738
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1740
    if-eqz v5, :cond_a

    .line 1742
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-object v6, v5

    .line 1745
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 1743
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v0

    .line 1744
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v5

    .line 1745
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 1740
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_6

    .line 1742
    :try_start_9
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1745
    :cond_6
    :goto_5
    throw v7

    .line 1743
    :catch_5
    move-exception v0

    .line 1744
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1765
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    if-eqz v5, :cond_8

    .line 1767
    :try_start_a
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1773
    :cond_8
    :goto_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1768
    :catch_6
    move-exception v0

    .line 1769
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1762
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v0

    move-object v5, v6

    .line 1763
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :goto_7
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1765
    if-eqz v5, :cond_8

    .line 1767
    :try_start_c
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_6

    .line 1768
    :catch_8
    move-exception v0

    .line 1769
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1765
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :goto_8
    if-eqz v5, :cond_9

    .line 1767
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 1770
    :cond_9
    :goto_9
    throw v7

    .line 1768
    :catch_9
    move-exception v0

    .line 1769
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 1765
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v7

    goto :goto_8

    .line 1762
    :catch_a
    move-exception v0

    goto :goto_7

    .line 1740
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v7

    move-object v5, v6

    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 1737
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_b
    move-exception v0

    move-object v5, v6

    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_3

    .restart local v0    # "e":Ljava/io/IOException;
    :cond_a
    move-object v6, v5

    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto/16 :goto_2
.end method

.method private static getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1268
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-object v9

    .line 1273
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 1274
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1275
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1276
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 1277
    .local v8, "pis":[Landroid/content/pm/ProviderInfo;
    if-eqz v8, :cond_2

    array-length v10, v8

    if-lez v10, :cond_2

    .line 1278
    move-object v0, v8

    .local v0, "arr$":[Landroid/content/pm/ProviderInfo;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v7, v0, v3

    .line 1279
    .local v7, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1280
    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    .line 1283
    :cond_3
    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1284
    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1278
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1290
    .end local v0    # "arr$":[Landroid/content/pm/ProviderInfo;
    .end local v3    # "i$":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v8    # "pis":[Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v1

    .line 1291
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBigFileTipSize(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1445
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/market2345/settings/SettingUtils;->getBigFileSizeTip(Landroid/content/Context;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1462
    const/4 v0, 0x5

    .line 1466
    .local v0, "size":I
    :goto_0
    return v0

    .line 1447
    .end local v0    # "size":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1448
    .restart local v0    # "size":I
    goto :goto_0

    .line 1450
    .end local v0    # "size":I
    :pswitch_1
    const/4 v0, 0x5

    .line 1451
    .restart local v0    # "size":I
    goto :goto_0

    .line 1453
    .end local v0    # "size":I
    :pswitch_2
    const/16 v0, 0xa

    .line 1454
    .restart local v0    # "size":I
    goto :goto_0

    .line 1456
    .end local v0    # "size":I
    :pswitch_3
    const/16 v0, 0x14

    .line 1457
    .restart local v0    # "size":I
    goto :goto_0

    .line 1459
    .end local v0    # "size":I
    :pswitch_4
    const/4 v0, -0x1

    .line 1460
    .restart local v0    # "size":I
    goto :goto_0

    .line 1445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1518
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1520
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "UMENG_CHANNEL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1523
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 1521
    :catch_0
    move-exception v1

    .line 1522
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1523
    const-string v2, "Internal"

    goto :goto_0
.end method

.method public static getFileSignatureMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "targetFile"    # Ljava/lang/String;

    .prologue
    .line 479
    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    invoke-direct {v5, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 481
    .local v5, "jarFile":Ljava/util/jar/JarFile;
    const-string v7, "AndroidManifest.xml"

    invoke-virtual {v5, v7}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v4

    .line 483
    .local v4, "jarEntry":Ljava/util/jar/JarEntry;
    if-eqz v4, :cond_2

    .line 484
    invoke-virtual {v5, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 485
    .local v3, "is":Ljava/io/InputStream;
    const/16 v7, 0x2000

    new-array v0, v7, [B

    .line 486
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_0

    .line 489
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 490
    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 491
    .local v1, "certs":[Ljava/security/cert/Certificate;
    :goto_0
    if-eqz v1, :cond_2

    array-length v7, v1

    if-lez v7, :cond_2

    .line 492
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "rsaPublicKey":Ljava/lang/String;
    invoke-static {v6}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 499
    .end local v0    # "buffer":[B
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v6    # "rsaPublicKey":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 490
    .restart local v0    # "buffer":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "jarEntry":Ljava/util/jar/JarEntry;
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    :cond_1
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 496
    .end local v0    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v2

    .line 497
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "occur IOException when get file signature"

    invoke-static {v7, v2}, Lcom/market2345/common/util/Utils;->W(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    const-string v7, ""

    goto :goto_1
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 214
    if-nez p0, :cond_0

    .line 220
    :goto_0
    return v1

    .line 218
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    :goto_0
    return v1

    .line 199
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 438
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 440
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 441
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x32

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 442
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 444
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 446
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 447
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 449
    new-instance v9, Landroid/view/animation/LayoutAnimationController;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v9, v10, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 450
    .local v9, "controller":Landroid/view/animation/LayoutAnimationController;
    return-object v9
.end method

.method public static getLocalFileMd5(Lcom/market2345/model/InstalledApp;Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Ljava/lang/String;
    .locals 8
    .param p0, "installedApp"    # Lcom/market2345/model/InstalledApp;
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 2086
    iget-object v3, p0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2087
    .local v0, "JsonMD5":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2088
    const-class v3, Lcom/market2345/model/AppMD5;

    invoke-virtual {p2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/AppMD5;

    .line 2089
    .local v2, "appMD5":Lcom/market2345/model/AppMD5;
    iget-wide v4, v2, Lcom/market2345/model/AppMD5;->lastModify:J

    iget-wide v6, p0, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 2090
    iget-object v1, v2, Lcom/market2345/model/AppMD5;->MD5:Ljava/lang/String;

    .line 2102
    :goto_0
    return-object v1

    .line 2095
    .end local v2    # "appMD5":Lcom/market2345/model/AppMD5;
    :cond_0
    iget-object v3, p0, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2096
    .local v1, "MD5":Ljava/lang/String;
    new-instance v2, Lcom/market2345/model/AppMD5;

    invoke-direct {v2}, Lcom/market2345/model/AppMD5;-><init>()V

    .line 2097
    .restart local v2    # "appMD5":Lcom/market2345/model/AppMD5;
    iget-wide v4, p0, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J

    iput-wide v4, v2, Lcom/market2345/model/AppMD5;->lastModify:J

    .line 2098
    iput-object v1, v2, Lcom/market2345/model/AppMD5;->MD5:Ljava/lang/String;

    .line 2100
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "mFileName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x400

    const/4 v7, 0x0

    .line 1528
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1550
    :cond_0
    :goto_0
    return-object v7

    .line 1531
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1532
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1535
    const/4 v1, 0x0

    .line 1536
    .local v1, "digest":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 1537
    .local v4, "in":Ljava/io/FileInputStream;
    new-array v0, v9, [B

    .line 1540
    .local v0, "buffer":[B
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1541
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1542
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v5, v0, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 1543
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1546
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 1547
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1545
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1550
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcom/market2345/common/util/Utils;->convertToHex([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1546
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 233
    if-nez p0, :cond_0

    .line 239
    :goto_0
    return-wide v2

    .line 237
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 507
    :try_start_0
    const-string v3, "utf8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 508
    .local v0, "byteArray":[B
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 509
    .local v2, "md":Ljava/security/MessageDigest;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 510
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/common/util/Utils;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 516
    .end local v0    # "byteArray":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 516
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 513
    :catch_1
    move-exception v1

    .line 514
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 683
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 684
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "MAC"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "mac":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 687
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 688
    .local v4, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 689
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 692
    :cond_0
    if-eqz v2, :cond_2

    .line 693
    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "MAC"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 702
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_0
    return-object v2

    .line 696
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v4    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_2
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wifi":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getMiUiName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1577
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1578
    .local v1, "properties":Ljava/util/Properties;
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "build.prop"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1580
    const-string v3, "ro.miui.ui.version.name"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1582
    :goto_0
    return-object v2

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public static getSignaturesFromApk(Ljava/io/File;)Ljava/util/Set;
    .locals 13
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1934
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1935
    .local v11, "signatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1937
    .local v5, "jarFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v6, Ljava/util/jar/JarFile;

    invoke-direct {v6, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1938
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .local v6, "jarFile":Ljava/util/jar/JarFile;
    :try_start_1
    const-string v12, "AndroidManifest.xml"

    invoke-virtual {v6, v12}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v7

    .line 1939
    .local v7, "je":Ljava/util/jar/JarEntry;
    const/16 v12, 0x2000

    new-array v9, v12, [B

    .line 1940
    .local v9, "readBuffer":[B
    invoke-static {v6, v7, v9}, Lcom/market2345/common/util/Utils;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 1941
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    .line 1942
    move-object v0, v2

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v8, :cond_0

    aget-object v1, v0, v4

    .line 1943
    .local v1, "c":Ljava/security/cert/Certificate;
    new-instance v10, Landroid/content/pm/Signature;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/content/pm/Signature;-><init>([B)V

    .line 1944
    .local v10, "s":Landroid/content/pm/Signature;
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/market2345/common/util/Utils;->parseSignature([B)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1942
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1950
    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v1    # "c":Ljava/security/cert/Certificate;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "s":Landroid/content/pm/Signature;
    :cond_0
    if-eqz v6, :cond_3

    .line 1951
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    move-object v5, v6

    .line 1954
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v6    # "jarFile":Ljava/util/jar/JarFile;
    .end local v7    # "je":Ljava/util/jar/JarEntry;
    .end local v9    # "readBuffer":[B
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    :cond_1
    :goto_1
    return-object v11

    .line 1947
    :catch_0
    move-exception v3

    .line 1948
    .local v3, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1950
    if-eqz v5, :cond_1

    .line 1951
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1

    .line 1950
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v5, :cond_2

    .line 1951
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    :cond_2
    throw v12

    .line 1950
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_3

    .line 1947
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "jarFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_2

    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "certs":[Ljava/security/cert/Certificate;
    .restart local v6    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v7    # "je":Ljava/util/jar/JarEntry;
    .restart local v9    # "readBuffer":[B
    :cond_3
    move-object v5, v6

    .end local v6    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_1
.end method

.method public static getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v2, 0x0

    .line 421
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 423
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_0

    .line 429
    :goto_0
    return-object v2

    .line 423
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lorg/apache/http/ParseException;
    const-string v3, "getStringResponse meet ParseException"

    invoke-static {v3, v0}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 426
    .end local v0    # "e":Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 427
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "getStringResponse meet IOException"

    invoke-static {v3, v0}, Lcom/market2345/common/util/Utils;->D(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSubLengthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1427
    if-nez p0, :cond_0

    .line 1428
    const-string p0, ""

    .line 1435
    .end local p0    # "value":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1431
    .restart local p0    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1433
    goto :goto_0

    .line 1435
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getTodayDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 314
    sget-object v2, Lcom/market2345/common/util/Utils;->calendar:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/market2345/common/util/Utils;->calendar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 315
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/market2345/common/util/Utils;->calendar:Ljava/lang/ref/WeakReference;

    .line 317
    :cond_1
    sget-object v2, Lcom/market2345/common/util/Utils;->calendar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 318
    .local v1, "today":Ljava/util/Calendar;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 319
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTwelveLengthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xc

    .line 1416
    if-nez p0, :cond_1

    .line 1417
    const-string p0, ""

    .line 1422
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1419
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1420
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 10
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 128
    if-nez p0, :cond_0

    .line 129
    new-array v1, v9, [B

    .line 148
    :goto_0
    return-object v1

    .line 132
    :cond_0
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 139
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 140
    .local v2, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 142
    .local v5, "jdata":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 143
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 144
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    new-array v1, v6, [B

    .line 145
    .local v1, "buff":[B
    const/4 v6, 0x2

    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v5, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 147
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buff":[B
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "jdata":[B
    :catch_1
    move-exception v4

    .line 148
    .local v4, "ex":Ljava/io/IOException;
    new-array v1, v9, [B

    goto :goto_0
.end method

.method public static getUTF8String([B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    const-string v0, ""

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/market2345/common/util/Utils;->getUTF8String([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUTF8String([BII)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    const-string v1, ""

    .line 180
    :goto_0
    return-object v1

    .line 178
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    goto :goto_0
.end method

.method public static hasShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconPkg"    # Ljava/lang/String;

    .prologue
    .line 1303
    const/4 v11, 0x0

    .line 1305
    .local v11, "result":Z
    const/4 v12, 0x0

    .line 1306
    .local v12, "uriString":Ljava/lang/String;
    const-string v0, "com.android.launcher.permission.READ_SETTINGS"

    invoke-static {p0, v0}, Lcom/market2345/common/util/Utils;->getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1308
    .local v6, "authorty":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    .line 1310
    const-string v12, "content://com.android.launcher.settings/favorites?notify=true"

    .line 1318
    :goto_0
    const/4 v7, 0x0

    .line 1320
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1321
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "iconPackage"

    aput-object v4, v2, v3

    const-string v3, "title=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1322
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1323
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    const/4 v10, 0x0

    .line 1327
    .local v10, "pkg":Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 1332
    :goto_1
    :try_start_2
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    const/4 v11, 0x1

    .line 1339
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 1340
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1344
    .end local v1    # "CONTENT_URI":Landroid/net/Uri;
    :cond_1
    :goto_2
    return v11

    .line 1312
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    const-string v12, "content://com.android.launcher2.settings/favorites?notify=true"

    goto :goto_0

    .line 1315
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/favorites?notify=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 1328
    .restart local v1    # "CONTENT_URI":Landroid/net/Uri;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v10    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1329
    .local v9, "e1":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1336
    .end local v1    # "CONTENT_URI":Landroid/net/Uri;
    .end local v9    # "e1":Ljava/lang/Throwable;
    .end local v10    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 1337
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1339
    if-eqz v7, :cond_1

    .line 1340
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1339
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1340
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static installApk(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 620
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 622
    const/4 v5, 0x3

    :try_start_0
    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "chmod"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "771"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 623
    .local v0, "args1":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 624
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "chmod"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "777"

    aput-object v6, v1, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 625
    .local v1, "args2":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v0    # "args1":[Ljava/lang/String;
    .end local v1    # "args2":[Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v3, "i":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 631
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 632
    .local v4, "u":Landroid/net/Uri;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 636
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "u":Landroid/net/Uri;
    :cond_0
    return-void

    .line 626
    :catch_0
    move-exception v2

    .line 627
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isActivityContext(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1504
    const/4 v0, 0x1

    return v0
.end method

.method public static isAdbEnable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1614
    const/4 v1, 0x0

    .line 1616
    .local v1, "isEnable":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 1621
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1616
    goto :goto_0

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final isChinese(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 2022
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 2023
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 2029
    :cond_0
    const/4 v1, 0x1

    .line 2031
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFileDirOver(Ljava/io/File;I)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "count"    # I

    .prologue
    .line 1918
    const/4 v0, 0x0

    .line 1919
    .local v0, "flag":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v1, v0

    .line 1929
    .end local v0    # "flag":Z
    .local v1, "flag":I
    :goto_0
    return v1

    .line 1923
    .end local v1    # "flag":I
    .restart local v0    # "flag":Z
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1924
    .local v2, "path":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1925
    .local v3, "split":[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-le v4, p1, :cond_2

    .line 1926
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 1929
    .restart local v1    # "flag":I
    goto :goto_0
.end method

.method public static isFileDirOver10(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1907
    const/16 v0, 0xd

    invoke-static {p0, v0}, Lcom/market2345/common/util/Utils;->isFileDirOver(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static isJFChannel()Z
    .locals 2

    .prologue
    .line 1679
    sget-object v0, Lcom/market2345/MarketApplication;->channel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/market2345/MarketApplication;->channel:Ljava/lang/String;

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLmApk(Landroid/content/pm/PackageInfo;)Z
    .locals 8
    .param p0, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1690
    const/4 v1, 0x0

    .line 1691
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const/4 v4, 0x0

    .line 1693
    .local v4, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    iget-object v6, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1694
    .local v3, "sourceDir":Ljava/lang/String;
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .local v5, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 1697
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1698
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 1699
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "META-INF/appid_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_0

    .line 1700
    const/4 v6, 0x1

    .line 1706
    if-eqz v5, :cond_1

    .line 1708
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v4, v5

    .line 1714
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "sourceDir":Ljava/lang/String;
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    :goto_1
    return v6

    .line 1709
    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "sourceDir":Ljava/lang/String;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 1710
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1706
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_2
    if-eqz v5, :cond_5

    .line 1708
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 1714
    .end local v3    # "sourceDir":Ljava/lang/String;
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_3
    :goto_2
    const-string v6, "com.UCMobile"

    iget-object v7, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    .line 1709
    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v3    # "sourceDir":Ljava/lang/String;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    .line 1710
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 1711
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 1703
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "sourceDir":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 1704
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1706
    if-eqz v4, :cond_3

    .line 1708
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 1709
    :catch_3
    move-exception v0

    .line 1710
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1706
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_4

    .line 1708
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1711
    :cond_4
    :goto_5
    throw v6

    .line 1709
    :catch_4
    move-exception v0

    .line 1710
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1706
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v3    # "sourceDir":Ljava/lang/String;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 1703
    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_3

    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_5
    move-object v4, v5

    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public static isMiUi()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1563
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1564
    .local v2, "properties":Ljava/util/Properties;
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "build.prop"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1565
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1566
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1567
    const-string v4, "ro.miui.ui.version.code"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "ro.miui.ui.version.name"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "ro.miui.internal.storage"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 1571
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return v3

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 326
    if-nez p0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v4

    .line 329
    :cond_1
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 330
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 331
    sget-object v5, Lcom/market2345/common/util/Utils;->TAG:Ljava/lang/String;

    const-string v6, "couldn\'t get connectivity manager"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 334
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 335
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .local v3, "length":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 336
    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    .line 337
    const/4 v4, 0x1

    goto :goto_0

    .line 335
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alert"    # Z

    .prologue
    const/4 v3, 0x0

    .line 353
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 354
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 355
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 356
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 358
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    .line 359
    const/4 v3, 0x1

    .line 367
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return v3

    .line 357
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_2
    if-eqz p1, :cond_0

    .line 365
    const v4, 0x7f0b00f3

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public static isNetworkRoaming(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 375
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 378
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 379
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public static isSdcardReadable()Z
    .locals 2

    .prologue
    .line 542
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    :cond_0
    const/4 v1, 0x1

    .line 546
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSdcardWritable()Z
    .locals 2

    .prologue
    .line 553
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const/4 v1, 0x1

    .line 557
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSizeLimited(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 1439
    invoke-static {p0, v0}, Lcom/market2345/settings/SettingUtils;->getBigFileSizeTip(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 5
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1959
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 1960
    .local v1, "is":Ljava/io/InputStream;
    :cond_0
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1962
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1963
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1967
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 1964
    :catch_0
    move-exception v0

    .line 1965
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static makeEventToast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isLongToast"    # Z

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 579
    return-void
.end method

.method public static openUsbMode(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1663
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    :goto_0
    return-void

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseSignature([B)Ljava/lang/String;
    .locals 6
    .param p0, "signature"    # [B

    .prologue
    .line 1988
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 1989
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1990
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1991
    .local v3, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1992
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/common/util/Utils;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2000
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "md5":Ljava/security/MessageDigest;
    :goto_0
    return-object v4

    .line 1994
    :catch_0
    move-exception v2

    .line 1995
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 2000
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1996
    :catch_1
    move-exception v2

    .line 1998
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method public static parserUri(Landroid/net/Uri;)Ljava/util/HashMap;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 586
    .local v4, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, "paras":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v6, v0, v1

    .line 588
    .local v6, "s":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 589
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "item":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    .end local v2    # "item":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 595
    .end local v4    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static releaseStatisticsApk(Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    .locals 24
    .param p0, "info"    # Landroid/content/pm/PackageInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1778
    const-string v19, ".lminstalllist"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1779
    .local v16, "sp":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 1780
    .local v7, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const/16 v17, 0x0

    .line 1782
    .local v17, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "statistics_release_key"

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1784
    .local v15, "sourceDir":Ljava/lang/String;
    new-instance v18, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1785
    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .local v18, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 1787
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1788
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 1789
    .local v8, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "META-INF/2345usbhelp_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v19

    if-eqz v19, :cond_0

    .line 1790
    const/4 v12, 0x0

    .line 1791
    .local v12, "os":Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 1792
    .local v11, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 1794
    .local v9, "file":Ljava/io/File;
    :try_start_2
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    const-string v20, "statistics.apk"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1795
    .end local v9    # "file":Ljava/io/File;
    .local v10, "file":Ljava/io/File;
    :try_start_3
    new-instance v13, Ljava/io/FileOutputStream;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v13, v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1796
    .end local v12    # "os":Ljava/io/OutputStream;
    .local v13, "os":Ljava/io/OutputStream;
    :try_start_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 1797
    const/4 v14, 0x0

    .line 1798
    .local v14, "readLen":I
    const/16 v19, 0x1000

    move/from16 v0, v19

    new-array v5, v0, [B

    .line 1799
    .local v5, "buf":[B
    :goto_1
    invoke-virtual {v11, v5}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v14, v0, :cond_4

    .line 1800
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v5, v0, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1811
    .end local v5    # "buf":[B
    .end local v14    # "readLen":I
    :catchall_0
    move-exception v19

    move-object v9, v10

    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    move-object v12, v13

    .end local v13    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    :goto_2
    if-eqz v12, :cond_1

    .line 1812
    :try_start_5
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 1814
    :cond_1
    if-eqz v11, :cond_2

    .line 1815
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v19
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1820
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v6

    move-object/from16 v17, v18

    .line 1821
    .end local v15    # "sourceDir":Ljava/lang/String;
    .end local v18    # "zipfile":Ljava/util/zip/ZipFile;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v17    # "zipfile":Ljava/util/zip/ZipFile;
    :goto_3
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1823
    if-eqz v17, :cond_3

    .line 1825
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1830
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "statistics_release_key"

    const/16 v21, 0x2

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1832
    :goto_5
    return-void

    .line 1803
    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "buf":[B
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v13    # "os":Ljava/io/OutputStream;
    .restart local v14    # "readLen":I
    .restart local v15    # "sourceDir":Ljava/lang/String;
    .restart local v18    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_4
    const/16 v19, 0x3

    :try_start_8
    move/from16 v0, v19

    new-array v3, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "chmod"

    aput-object v20, v3, v19

    const/16 v19, 0x1

    const-string v20, "771"

    aput-object v20, v3, v19

    const/16 v19, 0x2

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v3, v19

    .line 1804
    .local v3, "args1":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 1805
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "chmod"

    aput-object v20, v4, v19

    const/16 v19, 0x1

    const-string v20, "777"

    aput-object v20, v4, v19

    const/16 v19, 0x2

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v4, v19

    .line 1806
    .local v4, "args2":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1811
    .end local v3    # "args1":[Ljava/lang/String;
    .end local v4    # "args2":[Ljava/lang/String;
    :goto_6
    if-eqz v13, :cond_5

    .line 1812
    :try_start_9
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 1814
    :cond_5
    if-eqz v11, :cond_0

    .line 1815
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 1823
    .end local v5    # "buf":[B
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "os":Ljava/io/OutputStream;
    .end local v14    # "readLen":I
    :catchall_1
    move-exception v19

    move-object/from16 v17, v18

    .end local v15    # "sourceDir":Ljava/lang/String;
    .end local v18    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v17    # "zipfile":Ljava/util/zip/ZipFile;
    :goto_7
    if-eqz v17, :cond_6

    .line 1825
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1830
    :cond_6
    :goto_8
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "statistics_release_key"

    const/16 v22, 0x2

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    throw v19

    .line 1807
    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "buf":[B
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v13    # "os":Ljava/io/OutputStream;
    .restart local v14    # "readLen":I
    .restart local v15    # "sourceDir":Ljava/lang/String;
    .restart local v18    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v6

    .line 1808
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 1823
    .end local v5    # "buf":[B
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "os":Ljava/io/OutputStream;
    .end local v14    # "readLen":I
    :cond_7
    if-eqz v18, :cond_8

    .line 1825
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 1830
    :cond_8
    :goto_9
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "statistics_release_key"

    const/16 v21, 0x2

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v17, v18

    .line 1831
    .end local v18    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v17    # "zipfile":Ljava/util/zip/ZipFile;
    goto/16 :goto_5

    .line 1826
    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v18    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v6

    .line 1827
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 1826
    .end local v15    # "sourceDir":Ljava/lang/String;
    .end local v18    # "zipfile":Ljava/util/zip/ZipFile;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v17    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v6

    .line 1827
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1826
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 1827
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1823
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v19

    goto :goto_7

    .line 1820
    :catch_5
    move-exception v6

    goto/16 :goto_3

    .line 1811
    .end local v17    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v15    # "sourceDir":Ljava/lang/String;
    .restart local v18    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v19

    goto/16 :goto_2

    .end local v9    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    :catchall_4
    move-exception v19

    move-object v9, v10

    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto/16 :goto_2
.end method

.method public static saveToLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "values"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1836
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1839
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1840
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1841
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1842
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1848
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1843
    :catch_0
    move-exception v0

    .line 1844
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1845
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1846
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1588
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1589
    .local v2, "intent":Landroid/content/Intent;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1590
    .local v0, "apiLevel":I
    const/16 v6, 0x9

    if-lt v0, v6, :cond_1

    .line 1591
    const-string v6, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1592
    const-string v6, "package"

    const/4 v7, 0x0

    invoke-static {v6, p1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1593
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1605
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1606
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v6, 0x10000

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1607
    .local v4, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1608
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1611
    :cond_0
    return-void

    .line 1597
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    const-string v1, "pkg"

    .line 1599
    .local v1, "appPkgName":Ljava/lang/String;
    :goto_1
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1597
    .end local v1    # "appPkgName":Ljava/lang/String;
    :cond_2
    const-string v1, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method public static startAppByPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 789
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 791
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 792
    if-eqz v1, :cond_0

    .line 793
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 801
    :goto_0
    return-void

    .line 796
    :cond_0
    invoke-static {p0, p1}, Lcom/market2345/common/util/Utils;->RunApp(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static strCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 835
    const-string v2, "N#gK3OgTw#eRUI8+8bZsti78P==4s.5"

    .line 836
    .local v2, "hash":Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/lm/util/GetMD5;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 838
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 840
    .local v0, "bstr":[B
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 841
    .local v6, "keylen":I
    array-length v9, v0

    .line 843
    .local v9, "strlen":I
    array-length v13, v0

    new-array v8, v13, [B

    .line 844
    .local v8, "resultByte":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_0

    .line 845
    rem-int v4, v3, v6

    .line 846
    .local v4, "k":I
    aget-byte v10, v0, v3

    .line 847
    .local v10, "x":I
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 848
    .local v11, "y":I
    xor-int v13, v10, v11

    int-to-byte v12, v13

    .line 849
    .local v12, "z":B
    aput-byte v12, v8, v3

    .line 844
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 853
    .end local v4    # "k":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "z":B
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v8, v13}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v13

    const-string v14, "utf-8"

    invoke-direct {v7, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :goto_1
    return-object v7

    .line 855
    :catch_0
    move-exception v1

    .line 856
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 858
    const-string v7, ""

    goto :goto_1
.end method

.method public static strCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "dict"    # Ljava/lang/String;

    .prologue
    .line 1389
    invoke-static {p1}, Lcom/market2345/lm/util/GetMD5;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1391
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1393
    .local v0, "bstr":[B
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 1394
    .local v5, "keylen":I
    array-length v8, v0

    .line 1396
    .local v8, "strlen":I
    array-length v12, v0

    new-array v7, v12, [B

    .line 1397
    .local v7, "resultByte":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 1398
    rem-int v3, v2, v5

    .line 1399
    .local v3, "k":I
    aget-byte v9, v0, v2

    .line 1400
    .local v9, "x":I
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1401
    .local v10, "y":I
    xor-int v12, v9, v10

    int-to-byte v11, v12

    .line 1402
    .local v11, "z":B
    aput-byte v11, v7, v2

    .line 1397
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1406
    .end local v3    # "k":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "z":B
    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v12

    const-string v13, "utf-8"

    invoke-direct {v6, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    :goto_1
    return-object v6

    .line 1408
    :catch_0
    move-exception v1

    .line 1409
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1411
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static toCharsString([B)Ljava/lang/String;
    .locals 10
    .param p0, "sigBytes"    # [B

    .prologue
    const/16 v9, 0xa

    .line 1971
    move-object v4, p0

    .line 1972
    .local v4, "sig":[B
    array-length v0, v4

    .line 1973
    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    .line 1974
    .local v1, "N2":I
    new-array v5, v1, [C

    .line 1975
    .local v5, "text":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1976
    aget-byte v6, v4, v3

    .line 1977
    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 1978
    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_0

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_1
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 1979
    and-int/lit8 v2, v6, 0xf

    .line 1980
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_1

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 1975
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1978
    :cond_0
    add-int/lit8 v7, v2, 0x30

    goto :goto_1

    .line 1980
    :cond_1
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    .line 1982
    .end local v2    # "d":I
    .end local v6    # "v":B
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([C)V

    return-object v7
.end method

.method public static uninstallApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 647
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 648
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 649
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 650
    return-void
.end method

.method public static validateDownPartial(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/market2345/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2037
    .local p1, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/App;>;"
    const-string v4, "md5_sp"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2038
    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 2039
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 2040
    .local v0, "app":Lcom/market2345/model/App;
    invoke-static {p0, v0, v3, v1}, Lcom/market2345/common/util/Utils;->validateFormerMD5(Landroid/content/Context;Lcom/market2345/model/App;Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2041
    const/4 v4, 0x1

    iput v4, v0, Lcom/market2345/model/App;->mDownPartial:I

    goto :goto_0

    .line 2044
    .end local v0    # "app":Lcom/market2345/model/App;
    :cond_1
    return-void
.end method

.method public static validateDownPartial(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadInfo"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 2057
    const-string v2, "md5_sp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2058
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2059
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-static {p0, p1, v1, v0}, Lcom/market2345/common/util/Utils;->validateFormerMD5(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Z

    move-result v2

    return v2
.end method

.method public static validateDownPartial(Landroid/content/Context;Lcom/market2345/model/App;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2047
    const-string v4, "md5_sp"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2048
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2049
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-static {p0, p1, v1, v0}, Lcom/market2345/common/util/Utils;->validateFormerMD5(Landroid/content/Context;Lcom/market2345/model/App;Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2050
    iput v2, p1, Lcom/market2345/model/App;->mDownPartial:I

    .line 2053
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private static validateFormerMD5(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadInfo"    # Lcom/market2345/download/DownloadInfo;
    .param p2, "sp"    # Landroid/content/SharedPreferences;
    .param p3, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 2075
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mLowMD5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2076
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 2077
    .local v0, "installedApp":Lcom/market2345/model/InstalledApp;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2078
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mLowMD5:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Lcom/market2345/model/InstalledApp;Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2081
    .end local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static validateFormerMD5(Landroid/content/Context;Lcom/market2345/model/App;Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Lcom/market2345/model/App;
    .param p2, "sp"    # Landroid/content/SharedPreferences;
    .param p3, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 2064
    iget-object v1, p1, Lcom/market2345/model/App;->low_md5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2065
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    iget-object v2, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 2066
    .local v0, "installedApp":Lcom/market2345/model/InstalledApp;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2067
    iget-object v1, p1, Lcom/market2345/model/App;->low_md5:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Lcom/market2345/model/InstalledApp;Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2070
    .end local v0    # "installedApp":Lcom/market2345/model/InstalledApp;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
