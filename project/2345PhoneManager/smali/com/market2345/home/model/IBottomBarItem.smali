.class public interface abstract Lcom/market2345/home/model/IBottomBarItem;
.super Ljava/lang/Object;
.source "IBottomBarItem.java"


# static fields
.field public static final CMD_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final CMD_GAME:Ljava/lang/String; = "list"

.field public static final CMD_MANAGE:Ljava/lang/String; = "manage"

.field public static final CMD_RECOMMEND:Ljava/lang/String; = "recommend"

.field public static final CMD_SOFT:Ljava/lang/String; = "soft"


# virtual methods
.method public abstract getCMD()Ljava/lang/String;
.end method

.method public abstract getView(Landroid/content/Context;Landroid/view/View;Z)Landroid/view/View;
.end method

.method public abstract hiddleRedNotify(Z)V
.end method

.method public abstract ifShowRednotify(Landroid/content/Context;I)V
.end method

.method public abstract isSelected()Z
.end method

.method public abstract setSelected(Z)V
.end method
