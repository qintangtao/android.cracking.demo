.class Lcom/market2345/settings/UserPlanActivity$1;
.super Ljava/lang/Object;
.source "UserPlanActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/settings/UserPlanActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/settings/UserPlanActivity;


# direct methods
.method constructor <init>(Lcom/market2345/settings/UserPlanActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/market2345/settings/UserPlanActivity$1;->this$0:Lcom/market2345/settings/UserPlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
