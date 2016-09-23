.class public Lcom/market2345/dumpclean/mode/JunkChildApk;
.super Lcom/market2345/dumpclean/mode/JunkChild;
.source "JunkChildApk.java"


# static fields
.field public static final BREAK_APK:I = 0x4

.field public static final INSTALLED:I = 0x0

.field public static final INSTALLED_OLD:I = 0x3

.field public static final INSTALLED_UPDATE:I = 0x2

.field public static final UNINSTALLED:I = 0x1


# instance fields
.field public fileTime:J

.field public installedType:I

.field public packageName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/market2345/dumpclean/mode/JunkChild;-><init>()V

    return-void
.end method
