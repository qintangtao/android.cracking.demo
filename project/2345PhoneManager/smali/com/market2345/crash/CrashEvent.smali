.class public Lcom/market2345/crash/CrashEvent;
.super Ljava/lang/Object;
.source "CrashEvent.java"


# instance fields
.field public mException:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/market2345/crash/CrashEvent;->mException:Ljava/lang/String;

    .line 11
    return-void
.end method
