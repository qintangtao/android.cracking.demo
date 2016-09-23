.class public Lcom/market2345/notificationmanage/ClickButton;
.super Ljava/lang/Object;
.source "ClickButton.java"


# instance fields
.field public actionIntent:Landroid/content/Intent;

.field public iconId:I

.field public titleString:Ljava/lang/String;

.field public viewId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/market2345/notificationmanage/ClickButton;->viewId:I

    .line 24
    iput-object p2, p0, Lcom/market2345/notificationmanage/ClickButton;->actionIntent:Landroid/content/Intent;

    .line 25
    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "iconId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/market2345/notificationmanage/ClickButton;->iconId:I

    .line 30
    iput-object p2, p0, Lcom/market2345/notificationmanage/ClickButton;->actionIntent:Landroid/content/Intent;

    .line 31
    iput-object p3, p0, Lcom/market2345/notificationmanage/ClickButton;->titleString:Ljava/lang/String;

    .line 33
    return-void
.end method
