.class public Lcom/market2345/base/log/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static final DDBG:Z

.field public static final EDBG:Z

.field public static final IDBG:Z

.field public static final IS_WTF:Z

.field public static final LDBG:Z

.field public static final VDBG:Z

.field public static final WDBG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLog()V
    .locals 2

    .prologue
    .line 123
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/market2345/base/log/LogWritter;->SDCARD_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/market2345/lm/util/FileUtils;->deleteDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 0
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 23
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 29
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 65
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 78
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    return-void
.end method

.method public static we(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 106
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 96
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 90
    return-void
.end method

.method public static wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 110
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/market2345/base/log/LogWritter;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Lcom/market2345/base/log/LogWritter;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/market2345/base/log/LogWritter;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
