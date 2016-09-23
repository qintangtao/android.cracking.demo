.class Lcom/market2345/base/http/ApiGateway$RemoteCallTask;
.super Lcom/market2345/base/asynctask/PoolAsyncTask;
.source "ApiGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/base/http/ApiGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market2345/base/asynctask/PoolAsyncTask",
        "<",
        "Lcom/market2345/base/http/ApiRequest",
        "<TT;>;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final responseCallbacks:Lcom/market2345/base/http/ApiResponseCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market2345/base/http/ApiResponseCallbacks",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/market2345/base/http/ApiGateway;


# direct methods
.method public constructor <init>(Lcom/market2345/base/http/ApiGateway;Lcom/market2345/base/http/ApiResponseCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/base/http/ApiResponseCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/market2345/base/http/ApiGateway$RemoteCallTask;, "Lcom/market2345/base/http/ApiGateway<TT;>.RemoteCallTask;"
    .local p2, "responseCallbacks":Lcom/market2345/base/http/ApiResponseCallbacks;, "Lcom/market2345/base/http/ApiResponseCallbacks<TT;>;"
    iput-object p1, p0, Lcom/market2345/base/http/ApiGateway$RemoteCallTask;->this$0:Lcom/market2345/base/http/ApiGateway;

    invoke-direct {p0}, Lcom/market2345/base/asynctask/PoolAsyncTask;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/market2345/base/http/ApiGateway$RemoteCallTask;->responseCallbacks:Lcom/market2345/base/http/ApiResponseCallbacks;

    .line 99
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/market2345/base/http/ApiRequest;)Lcom/market2345/base/http/ApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/market2345/base/http/ApiRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/market2345/base/http/ApiGateway$RemoteCallTask;, "Lcom/market2345/base/http/ApiGateway<TT;>.RemoteCallTask;"
    .local p1, "apiRequests":[Lcom/market2345/base/http/ApiRequest;, "[Lcom/market2345/base/http/ApiRequest<TT;>;"
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 104
    .local v0, "apiRequest":Lcom/market2345/base/http/ApiRequest;, "Lcom/market2345/base/http/ApiRequest<TT;>;"
    iget-object v1, p0, Lcom/market2345/base/http/ApiGateway$RemoteCallTask;->this$0:Lcom/market2345/base/http/ApiGateway;

    invoke-virtual {v1, v0}, Lcom/market2345/base/http/ApiGateway;->makeSyncRequest(Lcom/market2345/base/http/ApiRequest;)Lcom/market2345/base/http/ApiResponse;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lcom/market2345/base/http/ApiGateway$RemoteCallTask;, "Lcom/market2345/base/http/ApiGateway<TT;>.RemoteCallTask;"
    check-cast p1, [Lcom/market2345/base/http/ApiRequest;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/base/http/ApiGateway$RemoteCallTask;->doInBackground([Lcom/market2345/base/http/ApiRequest;)Lcom/market2345/base/http/ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/market2345/base/http/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/market2345/base/http/ApiGateway$RemoteCallTask;, "Lcom/market2345/base/http/ApiGateway<TT;>.RemoteCallTask;"
    .local p1, "apiResponse":Lcom/market2345/base/http/ApiResponse;, "TT;"
    iget-object v0, p0, Lcom/market2345/base/http/ApiGateway$RemoteCallTask;->this$0:Lcom/market2345/base/http/ApiGateway;

    iget-object v1, p0, Lcom/market2345/base/http/ApiGateway$RemoteCallTask;->responseCallbacks:Lcom/market2345/base/http/ApiResponseCallbacks;

    invoke-virtual {v0, p1, v1}, Lcom/market2345/base/http/ApiGateway;->dispatch(Lcom/market2345/base/http/ApiResponse;Lcom/market2345/base/http/ApiResponseCallbacks;)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lcom/market2345/base/http/ApiGateway$RemoteCallTask;, "Lcom/market2345/base/http/ApiGateway<TT;>.RemoteCallTask;"
    check-cast p1, Lcom/market2345/base/http/ApiResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/base/http/ApiGateway$RemoteCallTask;->onPostExecute(Lcom/market2345/base/http/ApiResponse;)V

    return-void
.end method
