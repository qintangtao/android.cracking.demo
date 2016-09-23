.class public Lcom/market2345/dumpclean/mode/JunkGroup;
.super Ljava/lang/Object;
.source "JunkGroup.java"


# instance fields
.field private childrenItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private select:I

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getChildrenItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/market2345/dumpclean/mode/JunkGroup;->childrenItems:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/market2345/dumpclean/mode/JunkGroup;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/dumpclean/mode/JunkGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSelect()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/market2345/dumpclean/mode/JunkGroup;->select:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/market2345/dumpclean/mode/JunkGroup;->size:J

    return-wide v0
.end method

.method public setChildrenItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "childrenItems":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    iput-object p1, p0, Lcom/market2345/dumpclean/mode/JunkGroup;->childrenItems:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/market2345/dumpclean/mode/JunkGroup;->id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/market2345/dumpclean/mode/JunkGroup;->name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSelect(I)V
    .locals 0
    .param p1, "select"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/market2345/dumpclean/mode/JunkGroup;->select:I

    .line 52
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/market2345/dumpclean/mode/JunkGroup;->size:J

    .line 60
    return-void
.end method
