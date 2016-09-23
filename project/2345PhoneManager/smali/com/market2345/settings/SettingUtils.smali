.class public Lcom/market2345/settings/SettingUtils;
.super Ljava/lang/Object;
.source "SettingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/settings/SettingUtils$SETTING;
    }
.end annotation


# static fields
.field private static final BIG_FILE_SIZE_TIP:Ljava/lang/String; = "big_file_size_tip"

.field private static final DOWNLOADED_INSTALL_TIP:Ljava/lang/String; = "download_install_tip"

.field private static final FREE_TRAFFIC_UPDATE:Ljava/lang/String; = "free_traffic_update"

.field private static final ICON_BALL:Ljava/lang/String; = "icon_ball"

.field private static final ICON_SEARCH:Ljava/lang/String; = "icon_search"

.field private static final INSTALL_SUCESS_DEL_APK:Ljava/lang/String; = "install_sucess_del_apk"

.field private static final PUSH_TIP:Ljava/lang/String; = "push_tip"

.field private static final RECEIVE_FILE_TIP_FROM_PC:Ljava/lang/String; = "file_from_pc_inform"

.field private static final ROOT_AUTO_INSTALL:Ljava/lang/String; = "root_auto_install"

.field private static final SETTING_PREFERENCE:Ljava/lang/String; = "setting_preference"

.field private static final UPDATE_APP_TIP:Ljava/lang/String; = "update_app_tip"

.field private static final USER_PLAN:Ljava/lang/String; = "user_plan"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Lcom/market2345/settings/SettingUtils$SETTING;
    .param p2, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 86
    if-eqz p0, :cond_0

    .line 88
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->DEL_APK:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_1

    .line 90
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_sucess_del_apk"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->INSTALL_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_2

    .line 94
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_install_tip"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 96
    :cond_2
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->UPDATE_APP:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_3

    .line 98
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update_app_tip"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 100
    :cond_3
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->AUTO_INSTALL:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_4

    .line 102
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "root_auto_install"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 104
    :cond_4
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->RECEIVE_FILE_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_5

    .line 106
    const-string v0, "wifi_pc"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "file_from_pc_inform"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 108
    :cond_5
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->FREE_UPDATE:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_6

    .line 110
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "free_traffic_update"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 112
    :cond_6
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_BALL:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_7

    .line 114
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "icon_ball"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 116
    :cond_7
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_SEARCH:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_8

    .line 118
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "icon_search"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 120
    :cond_8
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->PUSH_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_9

    .line 122
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_tip"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 124
    :cond_9
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->USER_PLAN:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_0

    .line 126
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_plan"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public static checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Lcom/market2345/settings/SettingUtils$SETTING;
    .param p2, "defaut"    # Z

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p0, :cond_0

    .line 40
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->DEL_APK:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_1

    .line 42
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "install_sucess_del_apk"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 81
    .end local p2    # "defaut":Z
    :cond_0
    :goto_0
    return p2

    .line 44
    .restart local p2    # "defaut":Z
    :cond_1
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->INSTALL_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_2

    .line 46
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "download_install_tip"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->UPDATE_APP:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_3

    .line 50
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "update_app_tip"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    .line 52
    :cond_3
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->AUTO_INSTALL:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_4

    .line 54
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "root_auto_install"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    .line 56
    :cond_4
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->RECEIVE_FILE_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_5

    .line 58
    const-string v0, "wifi_pc"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "file_from_pc_inform"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    .line 60
    :cond_5
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->FREE_UPDATE:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_6

    .line 62
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "free_traffic_update"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    .line 64
    :cond_6
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_BALL:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_7

    .line 66
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "icon_ball"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    .line 68
    :cond_7
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_SEARCH:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_8

    .line 70
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "icon_search"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    .line 72
    :cond_8
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->PUSH_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_9

    .line 74
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_tip"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto/16 :goto_0

    .line 76
    :cond_9
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->USER_PLAN:Lcom/market2345/settings/SettingUtils$SETTING;

    if-ne v0, p1, :cond_0

    .line 78
    const-string v0, "setting_preference"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_plan"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto/16 :goto_0
.end method

.method public static checkPushTip(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->PUSH_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    return v0
.end method

.method public static getBigFileSizeTip(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defValue"    # I

    .prologue
    .line 138
    const-string v0, "setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "big_file_size_tip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setBigFileSizeTip(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 133
    const-string v0, "setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "big_file_size_tip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method
