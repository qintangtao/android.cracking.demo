.class public final Lcom/statistic2345/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "http://app.50bang.org/index.php?action=sendData"

    sput-object v0, Lcom/statistic2345/util/d;->a:Ljava/lang/String;

    .line 26
    const-string v0, "http://app.50bang.org/apk_md5/?_c=log&action=sendData"

    sput-object v0, Lcom/statistic2345/util/d;->b:Ljava/lang/String;

    return-void
.end method
