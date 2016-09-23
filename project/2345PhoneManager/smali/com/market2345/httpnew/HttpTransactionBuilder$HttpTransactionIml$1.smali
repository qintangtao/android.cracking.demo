.class Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml$1;
.super Landroid/os/Handler;
.source "HttpTransactionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;-><init>(Lcom/market2345/httpnew/HttpTransactionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

.field final synthetic val$this$0:Lcom/market2345/httpnew/HttpTransactionBuilder;


# direct methods
.method constructor <init>(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Landroid/os/Looper;Lcom/market2345/httpnew/HttpTransactionBuilder;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml$1;->this$1:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    iput-object p3, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml$1;->val$this$0:Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml$1;->this$1:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # getter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->callback:Lcom/market2345/httpnew/HttpCallback;
    invoke-static {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$700(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;)Lcom/market2345/httpnew/HttpCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml$1;->this$1:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # getter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->callback:Lcom/market2345/httpnew/HttpCallback;
    invoke-static {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$700(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;)Lcom/market2345/httpnew/HttpCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml$1;->this$1:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # getter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->parseObject:Lcom/market2345/httpnew/ResponseCluster;
    invoke-static {v2}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$800(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;)Lcom/market2345/httpnew/ResponseCluster;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/market2345/httpnew/HttpCallback;->callback(ILcom/market2345/httpnew/ResponseCluster;)V

    .line 219
    :cond_0
    return-void
.end method
