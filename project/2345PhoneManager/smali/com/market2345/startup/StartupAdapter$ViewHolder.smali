.class public Lcom/market2345/startup/StartupAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StartupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/startup/StartupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field cbSwitch:Landroid/widget/CheckBox;

.field ivAppIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/market2345/startup/StartupAdapter;

.field tvAppName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/market2345/startup/StartupAdapter;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/market2345/startup/StartupAdapter$ViewHolder;->this$0:Lcom/market2345/startup/StartupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
