.class public Lcom/market2345/dumpclean/mode/JunkChild;
.super Ljava/lang/Object;
.source "JunkChild.java"


# instance fields
.field private defaultSelect:Z

.field public name:Ljava/lang/String;

.field public select:I

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/dumpclean/mode/JunkChild;->defaultSelect:Z

    return-void
.end method


# virtual methods
.method public getDefaultSelect()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/market2345/dumpclean/mode/JunkChild;->defaultSelect:Z

    return v0
.end method

.method public getSelect()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/market2345/dumpclean/mode/JunkChild;->select:I

    return v0
.end method

.method public setSelect(I)V
    .locals 1
    .param p1, "select"    # I

    .prologue
    .line 15
    iget v0, p0, Lcom/market2345/dumpclean/mode/JunkChild;->select:I

    if-eq v0, p1, :cond_0

    .line 16
    iget-boolean v0, p0, Lcom/market2345/dumpclean/mode/JunkChild;->defaultSelect:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/market2345/dumpclean/mode/JunkChild;->defaultSelect:Z

    .line 18
    :cond_0
    iput p1, p0, Lcom/market2345/dumpclean/mode/JunkChild;->select:I

    .line 20
    return-void

    .line 16
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
