.class public Lcom/market2345/model/PageComment;
.super Ljava/lang/Object;
.source "PageComment.java"


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/CommentDetail;",
            ">;"
        }
    .end annotation
.end field

.field public pageinfo:Lcom/market2345/model/PageInfo;

.field public response:Lcom/market2345/model/ResponseInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
