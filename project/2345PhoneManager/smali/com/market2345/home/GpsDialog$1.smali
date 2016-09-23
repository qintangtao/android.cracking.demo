.class Lcom/market2345/home/GpsDialog$1;
.super Ljava/lang/Object;
.source "GpsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/home/GpsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/home/GpsDialog;


# direct methods
.method constructor <init>(Lcom/market2345/home/GpsDialog;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/market2345/home/GpsDialog$1;->this$0:Lcom/market2345/home/GpsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090204

    if-ne v3, v4, :cond_0

    .line 37
    iget-object v3, p0, Lcom/market2345/home/GpsDialog$1;->this$0:Lcom/market2345/home/GpsDialog;

    invoke-virtual {v3}, Lcom/market2345/home/GpsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/market2345/home/GpsDialog$1;->this$0:Lcom/market2345/home/GpsDialog;

    invoke-virtual {v3}, Lcom/market2345/home/GpsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 43
    :cond_0
    iget-object v3, p0, Lcom/market2345/home/GpsDialog$1;->this$0:Lcom/market2345/home/GpsDialog;

    invoke-virtual {v3}, Lcom/market2345/home/GpsDialog;->getView()Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, "root":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 46
    const v3, 0x7f09029b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 47
    .local v0, "cb":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/market2345/home/GpsDialog$1;->this$0:Lcom/market2345/home/GpsDialog;

    invoke-virtual {v3}, Lcom/market2345/home/GpsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "gpschecked"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v3, p0, Lcom/market2345/home/GpsDialog$1;->this$0:Lcom/market2345/home/GpsDialog;

    invoke-virtual {v3}, Lcom/market2345/home/GpsDialog;->dismissAllowingStateLoss()V

    .line 53
    return-void
.end method
