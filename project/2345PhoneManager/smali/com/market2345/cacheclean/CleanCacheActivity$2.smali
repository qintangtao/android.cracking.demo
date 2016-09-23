.class Lcom/market2345/cacheclean/CleanCacheActivity$2;
.super Ljava/lang/Object;
.source "CleanCacheActivity.java"

# interfaces
.implements Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanCacheActivity;->showTipDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanCacheActivity;I)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanCacheActivity$2;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    iput p2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 297
    if-eqz p1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity$2;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    # getter for: Lcom/market2345/cacheclean/CleanCacheActivity;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanCacheActivity;->access$1000(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity$2;->this$0:Lcom/market2345/cacheclean/CleanCacheActivity;

    iget v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity$2;->val$position:I

    invoke-virtual {v1, v2}, Lcom/market2345/cacheclean/CleanCacheActivity;->goSetting(I)V

    .line 305
    return-void
.end method
