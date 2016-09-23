.class Lcom/market2345/clean/shortcut/shortcutActivity$2$1;
.super Ljava/lang/Object;
.source "shortcutActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/clean/shortcut/shortcutActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/clean/shortcut/shortcutActivity$2;


# direct methods
.method constructor <init>(Lcom/market2345/clean/shortcut/shortcutActivity$2;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2$1;->this$1:Lcom/market2345/clean/shortcut/shortcutActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity$2$1;->this$1:Lcom/market2345/clean/shortcut/shortcutActivity$2;

    iget-object v0, v0, Lcom/market2345/clean/shortcut/shortcutActivity$2;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    invoke-virtual {v0}, Lcom/market2345/clean/shortcut/shortcutActivity;->finish()V

    .line 251
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 246
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 241
    return-void
.end method
