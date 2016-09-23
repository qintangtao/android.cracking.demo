.class public Lcom/market2345/settings/DelItem;
.super Ljava/lang/Object;
.source "DelItem.java"


# instance fields
.field public delHandler:Landroid/os/Handler;

.field public paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/settings/DelItem;->paths:Ljava/util/List;

    return-void
.end method
