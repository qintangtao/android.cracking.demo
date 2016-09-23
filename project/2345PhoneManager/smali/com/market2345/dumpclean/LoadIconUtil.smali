.class public Lcom/market2345/dumpclean/LoadIconUtil;
.super Ljava/lang/Object;
.source "LoadIconUtil.java"


# static fields
.field static packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/MarketApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/market2345/dumpclean/LoadIconUtil;->packageManager:Landroid/content/pm/PackageManager;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 23
    :try_start_0
    sget-object v2, Lcom/market2345/dumpclean/LoadIconUtil;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x100

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 24
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v3, Lcom/market2345/dumpclean/LoadIconUtil;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 32
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v0

    .line 28
    :catch_0
    move-exception v2

    .line 32
    :cond_0
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/MarketApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
