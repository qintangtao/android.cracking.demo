.class public Lcom/market2345/messages/data/phonenumbers/NumberParseException;
.super Ljava/lang/Exception;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;
    }
.end annotation


# instance fields
.field private errorType:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorType"    # Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->message:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->errorType:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    .line 34
    return-void
.end method


# virtual methods
.method public getErrorType()Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->errorType:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->errorType:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
