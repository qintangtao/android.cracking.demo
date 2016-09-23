.class Lcom/market2345/lm/activity/FastinstallActivity$2;
.super Ljava/lang/Object;
.source "FastinstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/FastinstallActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 140
    iput-object p1, p0, Lcom/market2345/lm/activity/FastinstallActivity$2;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity$2;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->mNodata:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/lm/activity/FastinstallActivity;->access$000(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity$2;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # getter for: Lcom/market2345/lm/activity/FastinstallActivity;->mProgress:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/lm/activity/FastinstallActivity;->access$100(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity$2;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # invokes: Lcom/market2345/lm/activity/FastinstallActivity;->getUnionApps()V
    invoke-static {v0}, Lcom/market2345/lm/activity/FastinstallActivity;->access$200(Lcom/market2345/lm/activity/FastinstallActivity;)V

    .line 149
    return-void
.end method
