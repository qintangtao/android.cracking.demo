.class Lcom/market2345/account/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/RegisterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/market2345/account/RegisterActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/market2345/account/RegisterActivity$2;->this$0:Lcom/market2345/account/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 84
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$2;->this$0:Lcom/market2345/account/RegisterActivity;

    # invokes: Lcom/market2345/account/RegisterActivity;->getCode()V
    invoke-static {v1}, Lcom/market2345/account/RegisterActivity;->access$300(Lcom/market2345/account/RegisterActivity;)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$2;->this$0:Lcom/market2345/account/RegisterActivity;

    # invokes: Lcom/market2345/account/RegisterActivity;->register()V
    invoke-static {v1}, Lcom/market2345/account/RegisterActivity;->access$400(Lcom/market2345/account/RegisterActivity;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x7f0900e3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
