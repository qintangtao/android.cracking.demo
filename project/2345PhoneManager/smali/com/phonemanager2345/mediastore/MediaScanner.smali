.class public Lcom/phonemanager2345/mediastore/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# instance fields
.field private client:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private mediaScanConn:Landroid/media/MediaScannerConnection;

.field queque:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonemanager2345/mediastore/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/phonemanager2345/mediastore/MediaScanner;->queque:Ljava/util/Queue;

    .line 32
    new-instance v0, Lcom/phonemanager2345/mediastore/MediaScanner$1;

    invoke-direct {v0, p0, p1}, Lcom/phonemanager2345/mediastore/MediaScanner$1;-><init>(Lcom/phonemanager2345/mediastore/MediaScanner;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phonemanager2345/mediastore/MediaScanner;->client:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 88
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/phonemanager2345/mediastore/MediaScanner;->client:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/phonemanager2345/mediastore/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/phonemanager2345/mediastore/MediaScanner;)Landroid/media/MediaScannerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/phonemanager2345/mediastore/MediaScanner;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/phonemanager2345/mediastore/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "next"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "posi":I
    const-string v1, ""

    .line 105
    .local v1, "suffix":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 107
    const-string v2, "*/*"

    .line 156
    :goto_0
    return-object v2

    .line 111
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->supportImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-static {v1}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->supportImageSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {v1}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->supportMusicType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    invoke-static {v1}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->supportMusicSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {v1}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->supportVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    invoke-static {v1}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->supportVideoSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 127
    :cond_3
    const-string v2, ".png"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    const-string v2, "image/png"

    goto :goto_0

    .line 131
    :cond_4
    const-string v2, ".jpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".jpg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 133
    :cond_5
    const-string v2, "image/jpeg"

    goto :goto_0

    .line 135
    :cond_6
    const-string v2, ".gif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 137
    const-string v2, "image/gif"

    goto :goto_0

    .line 139
    :cond_7
    const-string v2, ".wbmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ".bmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 141
    :cond_8
    const-string v2, "image/wbmp"

    goto :goto_0

    .line 143
    :cond_9
    const-string v2, ".mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 145
    const-string v2, "video/mp4"

    goto :goto_0

    .line 147
    :cond_a
    const-string v2, ".3gp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, ".3gpp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 149
    :cond_b
    const-string v2, "video/3gpp"

    goto/16 :goto_0

    .line 151
    :cond_c
    const-string v2, ".avi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 153
    const-string v2, "video/avi"

    goto/16 :goto_0

    .line 156
    :cond_d
    const-string v2, "*/*"

    goto/16 :goto_0
.end method


# virtual methods
.method public scanFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/phonemanager2345/mediastore/MediaScanner;->queque:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/phonemanager2345/mediastore/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/phonemanager2345/mediastore/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 99
    :cond_0
    return-void
.end method
