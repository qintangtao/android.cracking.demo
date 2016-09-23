.class Lcom/market2345/settings/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/settings/SettingActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/settings/SettingActivity;


# direct methods
.method constructor <init>(Lcom/market2345/settings/SettingActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/market2345/settings/SettingActivity$1;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexChangeListener(Lcom/market2345/settings/rangebar/RangeBar;II)V
    .locals 2
    .param p1, "rangeBar"    # Lcom/market2345/settings/rangebar/RangeBar;
    .param p2, "leftThumbIndex"    # I
    .param p3, "rightThumbIndex"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$1;->this$0:Lcom/market2345/settings/SettingActivity;

    invoke-static {v0, p3}, Lcom/market2345/settings/SettingUtils;->setBigFileSizeTip(Landroid/content/Context;I)V

    .line 228
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$1;->this$0:Lcom/market2345/settings/SettingActivity;

    const-string v1, "Setting_BigRemind"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    return-void
.end method
