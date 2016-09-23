.class public Lcom/market2345/account/model/event/RegisterResultEvent;
.super Ljava/lang/Object;
.source "RegisterResultEvent.java"


# instance fields
.field public msg:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/account/model/event/RegisterResultEvent;->success:Z

    return-void
.end method
