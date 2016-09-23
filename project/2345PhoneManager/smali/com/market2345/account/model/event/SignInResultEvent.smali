.class public Lcom/market2345/account/model/event/SignInResultEvent;
.super Ljava/lang/Object;
.source "SignInResultEvent.java"


# instance fields
.field public msg:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/account/model/event/SignInResultEvent;->success:Z

    return-void
.end method
