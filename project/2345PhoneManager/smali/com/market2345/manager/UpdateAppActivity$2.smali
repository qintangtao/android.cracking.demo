.class Lcom/market2345/manager/UpdateAppActivity$2;
.super Ljava/lang/Object;
.source "UpdateAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/manager/UpdateAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/manager/UpdateAppActivity;


# direct methods
.method constructor <init>(Lcom/market2345/manager/UpdateAppActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/market2345/manager/UpdateAppActivity$2;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/market2345/manager/UpdateAppActivity$2;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    # invokes: Lcom/market2345/manager/UpdateAppActivity;->downLoadAll()V
    invoke-static {v0}, Lcom/market2345/manager/UpdateAppActivity;->access$100(Lcom/market2345/manager/UpdateAppActivity;)V

    .line 117
    return-void
.end method
