.class Lcom/market2345/account/gift/LoadFragment$1;
.super Ljava/lang/Object;
.source "LoadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/gift/LoadFragment;->initLoadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/gift/LoadFragment;


# direct methods
.method constructor <init>(Lcom/market2345/account/gift/LoadFragment;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/market2345/account/gift/LoadFragment$1;->this$0:Lcom/market2345/account/gift/LoadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment$1;->this$0:Lcom/market2345/account/gift/LoadFragment;

    invoke-virtual {v0}, Lcom/market2345/account/gift/LoadFragment;->showProgress()V

    .line 60
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment$1;->this$0:Lcom/market2345/account/gift/LoadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/account/gift/LoadFragment;->loadData(Z)V

    .line 61
    return-void
.end method
