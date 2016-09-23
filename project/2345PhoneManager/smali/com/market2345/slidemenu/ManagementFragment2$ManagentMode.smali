.class Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;
.super Ljava/lang/Object;
.source "ManagementFragment2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/ManagementFragment2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ManagentMode"
.end annotation


# instance fields
.field private activityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private iconId:I

.field final synthetic this$0:Lcom/market2345/slidemenu/ManagementFragment2;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/Class;)V
    .locals 1
    .param p2, "title"    # I
    .param p3, "iconId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p4, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    invoke-virtual {p1, p2}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->title:Ljava/lang/String;

    .line 567
    iput p3, p0, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->iconId:I

    .line 568
    iput-object p4, p0, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->activityClass:Ljava/lang/Class;

    .line 569
    return-void
.end method

.method static synthetic access$1300(Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->activityClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;

    .prologue
    .line 560
    iget v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->iconId:I

    return v0
.end method

.method static synthetic access$2502(Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;
    .param p1, "x1"    # I

    .prologue
    .line 560
    iput p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$ManagentMode;->iconId:I

    return p1
.end method
