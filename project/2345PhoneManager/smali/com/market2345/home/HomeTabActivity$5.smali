.class Lcom/market2345/home/HomeTabActivity$5;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/home/HomeTabActivity;->delayedInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/home/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/market2345/home/HomeTabActivity;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity$5;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 3

    .prologue
    .line 651
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$5;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 652
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "check_slide"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$5;->this$0:Lcom/market2345/home/HomeTabActivity;

    # getter for: Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;
    invoke-static {v1}, Lcom/market2345/home/HomeTabActivity;->access$800(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/home/controller/PopupWindowController;

    move-result-object v1

    const-string v2, "check_leftmenu"

    invoke-virtual {v1, v2}, Lcom/market2345/home/controller/PopupWindowController;->isWidnowShowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$5;->this$0:Lcom/market2345/home/HomeTabActivity;

    # invokes: Lcom/market2345/home/HomeTabActivity;->showSlidingGuide()V
    invoke-static {v1}, Lcom/market2345/home/HomeTabActivity;->access$1000(Lcom/market2345/home/HomeTabActivity;)V

    .line 659
    :cond_0
    return-void
.end method
