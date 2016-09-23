.class public Lcom/market2345/util/SecurityAppInfo;
.super Ljava/lang/Object;
.source "SecurityAppInfo.java"


# static fields
.field private static final ARM:Ljava/lang/String; = "_arm"

.field private static final ARM_V7:Ljava/lang/String; = "_arm_v7"

.field private static final MIP:Ljava/lang/String; = "_mip"

.field private static final X86:Ljava/lang/String; = "_x86"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "appinfo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkApkMd5(Landroid/content/Context;)Z
.end method

.method public static native checkDexMd5(Landroid/content/Context;)Z
.end method

.method public static native checkSignAndPkgName(Landroid/content/Context;)Z
.end method

.method private static cpuinfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "arc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 52
    .local v1, "rarc":Ljava/lang/String;
    const-string v2, "arm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "v7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const-string v1, "_arm_v7"

    .line 55
    :cond_0
    const-string v2, "arm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "v7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    const-string v1, "_arm"

    .line 62
    :cond_1
    :goto_0
    return-object v1

    .line 57
    :cond_2
    const-string v2, "mip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    const-string v1, "_mip"

    goto :goto_0

    .line 59
    :cond_3
    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string v1, "_x86"

    goto :goto_0
.end method

.method public static native getSolidKey(Landroid/content/Context;)[B
.end method

.method public static native isEmulator(Landroid/content/Context;)Z
.end method
