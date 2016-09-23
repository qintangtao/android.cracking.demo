.class public Lcom/phonemanager2345/model/SMSOperationCommandModel$Conversation;
.super Ljava/lang/Object;
.source "SMSOperationCommandModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonemanager2345/model/SMSOperationCommandModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Conversation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonemanager2345/model/SMSOperationCommandModel;

.field public threadID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/phonemanager2345/model/SMSOperationCommandModel;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/phonemanager2345/model/SMSOperationCommandModel$Conversation;->this$0:Lcom/phonemanager2345/model/SMSOperationCommandModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
