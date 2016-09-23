.class public Lcom/phonemanager2345/model/SMSOperationCommandModel;
.super Ljava/lang/Object;
.source "SMSOperationCommandModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonemanager2345/model/SMSOperationCommandModel$Conversation;
    }
.end annotation


# instance fields
.field public command:Ljava/lang/String;

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

.field public threadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/phonemanager2345/model/SMSOperationCommandModel$Conversation;",
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

    .line 19
    return-void
.end method
