.class public Lcom/market2345/model/PageApp;
.super Ljava/lang/Object;
.source "PageApp.java"


# instance fields
.field public ip:Ljava/lang/String;

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field public listRise:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field public pageinfo:Lcom/market2345/model/PageInfo;

.field public response:Lcom/market2345/model/ResponseInfo;

.field public time:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/market2345/model/PageApp;
    .locals 3
    .param p0, "respCode"    # I
    .param p1, "respMessage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/market2345/model/PageApp;

    invoke-direct {v0}, Lcom/market2345/model/PageApp;-><init>()V

    .line 30
    .local v0, "p":Lcom/market2345/model/PageApp;
    new-instance v1, Lcom/market2345/model/ResponseInfo;

    invoke-direct {v1}, Lcom/market2345/model/ResponseInfo;-><init>()V

    iput-object v1, v0, Lcom/market2345/model/PageApp;->response:Lcom/market2345/model/ResponseInfo;

    .line 31
    iget-object v1, v0, Lcom/market2345/model/PageApp;->response:Lcom/market2345/model/ResponseInfo;

    iput p0, v1, Lcom/market2345/model/ResponseInfo;->code:I

    .line 32
    iget-object v1, v0, Lcom/market2345/model/PageApp;->response:Lcom/market2345/model/ResponseInfo;

    iput-object p1, v1, Lcom/market2345/model/ResponseInfo;->message:Ljava/lang/String;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/market2345/model/PageApp;->list:Ljava/util/ArrayList;

    .line 34
    new-instance v1, Lcom/market2345/model/PageInfo;

    invoke-direct {v1}, Lcom/market2345/model/PageInfo;-><init>()V

    iput-object v1, v0, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    .line 35
    iget-object v1, v0, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iput v2, v1, Lcom/market2345/model/PageInfo;->count:I

    .line 36
    iget-object v1, v0, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iput v2, v1, Lcom/market2345/model/PageInfo;->page:I

    .line 37
    iget-object v1, v0, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iput v2, v1, Lcom/market2345/model/PageInfo;->pagecount:I

    .line 38
    return-object v0
.end method
