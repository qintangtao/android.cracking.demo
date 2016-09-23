.class Lcom/market2345/autocheck/AutoResidentService$2;
.super Ljava/lang/Thread;
.source "AutoResidentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/autocheck/AutoResidentService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/autocheck/AutoResidentService;


# direct methods
.method constructor <init>(Lcom/market2345/autocheck/AutoResidentService;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/market2345/autocheck/AutoResidentService$2;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService$2;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v0}, Lcom/market2345/autocheck/AutoResidentService;->startScan()V

    .line 158
    return-void
.end method
