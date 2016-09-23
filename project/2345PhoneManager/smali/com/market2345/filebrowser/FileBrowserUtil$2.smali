.class final Lcom/market2345/filebrowser/FileBrowserUtil$2;
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
.field private static final serialVersionUID:J = -0x1ed83155b1bf1dabL


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 453
    const-string v0, "application/zip"

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBrowserUtil$2;->add(Ljava/lang/Object;)Z

    .line 454
    const-string v0, "application/x-rar-compressed"

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FileBrowserUtil$2;->add(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method
