.class public Lcom/market2345/download/exception/StopRequestException;
.super Ljava/lang/Exception;
.source "StopRequestException.java"


# instance fields
.field private final mFinalStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "finalStatus"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput p1, p0, Lcom/market2345/download/exception/StopRequestException;->mFinalStatus:I

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "finalStatus"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 27
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iput p1, p0, Lcom/market2345/download/exception/StopRequestException;->mFinalStatus:I

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "finalStatus"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    iput p1, p0, Lcom/market2345/download/exception/StopRequestException;->mFinalStatus:I

    .line 24
    return-void
.end method

.method public static throwUnhandledHttpError(ILjava/lang/String;)Lcom/market2345/download/exception/StopRequestException;
    .locals 4
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x190

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled HTTP response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "error":Ljava/lang/String;
    if-lt p0, v3, :cond_0

    const/16 v1, 0x258

    if-ge p0, v1, :cond_0

    .line 39
    new-instance v1, Lcom/market2345/download/exception/StopRequestException;

    invoke-direct {v1, p0, v0}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    const/16 v1, 0x12c

    if-lt p0, v1, :cond_1

    if-ge p0, v3, :cond_1

    .line 41
    new-instance v1, Lcom/market2345/download/exception/StopRequestException;

    const/16 v2, 0x1ed

    invoke-direct {v1, v2, v0}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 43
    :cond_1
    new-instance v1, Lcom/market2345/download/exception/StopRequestException;

    const/16 v2, 0x1ee

    invoke-direct {v1, v2, v0}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getFinalStatus()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/market2345/download/exception/StopRequestException;->mFinalStatus:I

    return v0
.end method
