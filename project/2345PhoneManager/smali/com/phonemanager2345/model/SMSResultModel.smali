.class public Lcom/phonemanager2345/model/SMSResultModel;
.super Ljava/lang/Object;
.source "SMSResultModel.java"


# instance fields
.field public allItemCount:I

.field public error:Ljava/lang/String;

.field public error_code:Ljava/lang/String;

.field public smsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/messages/data/MessageItemTmp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
