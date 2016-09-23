.class public Lcom/market2345/lm/activity/ReportInfo;
.super Ljava/lang/Object;
.source "ReportInfo.java"


# instance fields
.field public id:I

.field public installed:Z

.field public packageName:Ljava/lang/String;

.field public sourceFrom:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    return-void
.end method
