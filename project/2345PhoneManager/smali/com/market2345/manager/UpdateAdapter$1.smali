.class Lcom/market2345/manager/UpdateAdapter$1;
.super Ljava/lang/Object;
.source "UpdateAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/manager/UpdateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/manager/UpdateAdapter;


# direct methods
.method constructor <init>(Lcom/market2345/manager/UpdateAdapter;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/market2345/manager/UpdateAdapter$1;->this$0:Lcom/market2345/manager/UpdateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f090028

    .line 404
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 405
    .local v0, "toggle":Z
    iget-object v1, p0, Lcom/market2345/manager/UpdateAdapter$1;->this$0:Lcom/market2345/manager/UpdateAdapter;

    # invokes: Lcom/market2345/manager/UpdateAdapter;->expandIntroductionView(ZLandroid/view/View;)V
    invoke-static {v1, v0, p1}, Lcom/market2345/manager/UpdateAdapter;->access$000(Lcom/market2345/manager/UpdateAdapter;ZLandroid/view/View;)V

    .line 406
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 407
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 408
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
