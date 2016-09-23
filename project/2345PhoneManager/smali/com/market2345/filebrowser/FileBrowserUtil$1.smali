.class final Lcom/market2345/filebrowser/FileBrowserUtil$1;
.super Ljava/util/HashSet;
.source "FileBrowserUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/FileBrowserUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6bf526a848a13d29L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 437
    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBrowserUtil$1;->add(Ljava/lang/Object;)Z

    .line 438
    const-string v0, "application/mspowerpoint"

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBrowserUtil$1;->add(Ljava/lang/Object;)Z

    .line 439
    const-string v0, "application/msexcel"

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBrowserUtil$1;->add(Ljava/lang/Object;)Z

    .line 440
    const-string v0, "application/pdf"

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBrowserUtil$1;->add(Ljava/lang/Object;)Z

    .line 441
    const-string v0, "application/msword"

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBrowserUtil$1;->add(Ljava/lang/Object;)Z

    .line 442
    const-string v0, "text/html"

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBrowserUtil$1;->add(Ljava/lang/Object;)Z

    .line 443
    const-string v0, "application/vnd.ms-excel"

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBrowserUtil$1;->add(Ljava/lang/Object;)Z

    .line 444
    const-string v0, "application/x-expandedbook"

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBrowserUtil$1;->add(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method
