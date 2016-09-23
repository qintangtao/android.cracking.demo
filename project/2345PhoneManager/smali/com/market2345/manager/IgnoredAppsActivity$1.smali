.class Lcom/market2345/manager/IgnoredAppsActivity$1;
.super Ljava/lang/Object;
.source "IgnoredAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/manager/IgnoredAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/manager/IgnoredAppsActivity;


# direct methods
.method constructor <init>(Lcom/market2345/manager/IgnoredAppsActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/market2345/manager/IgnoredAppsActivity$1;->this$0:Lcom/market2345/manager/IgnoredAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity$1;->this$0:Lcom/market2345/manager/IgnoredAppsActivity;

    invoke-virtual {v0}, Lcom/market2345/manager/IgnoredAppsActivity;->finish()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f090051
        :pswitch_0
    .end packed-switch
.end method
