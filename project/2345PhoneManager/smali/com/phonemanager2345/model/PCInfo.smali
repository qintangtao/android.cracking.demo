.class public Lcom/phonemanager2345/model/PCInfo;
.super Ljava/lang/Object;
.source "PCInfo.java"


# instance fields
.field public ips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public minVersionCode:I

.field public pcName:Ljava/lang/String;

.field public port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/phonemanager2345/model/PCInfo;->port:I

    .line 13
    iput v0, p0, Lcom/phonemanager2345/model/PCInfo;->minVersionCode:I

    return-void
.end method
