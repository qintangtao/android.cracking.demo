.class public Lcom/market2345/clearStrategy/ClearDataResp$Data;
.super Ljava/lang/Object;
.source "ClearDataResp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/clearStrategy/ClearDataResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field public downloadUrl:Ljava/lang/String;

.field public flag:Z

.field public md5:Ljava/lang/String;

.field final synthetic this$0:Lcom/market2345/clearStrategy/ClearDataResp;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/market2345/clearStrategy/ClearDataResp;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/market2345/clearStrategy/ClearDataResp$Data;->this$0:Lcom/market2345/clearStrategy/ClearDataResp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
