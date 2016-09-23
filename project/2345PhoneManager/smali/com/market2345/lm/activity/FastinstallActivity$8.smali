.class Lcom/market2345/lm/activity/FastinstallActivity$8;
.super Ljava/lang/Object;
.source "FastinstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/FastinstallActivity;->showConfirm(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/lm/activity/FastinstallActivity;


# direct methods
.method constructor <init>(Lcom/market2345/lm/activity/FastinstallActivity;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/market2345/lm/activity/FastinstallActivity$8;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity$8;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->myDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/lm/activity/FastinstallActivity;->access$1600(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 453
    return-void
.end method
