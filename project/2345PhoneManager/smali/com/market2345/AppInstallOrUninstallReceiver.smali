.class public Lcom/market2345/AppInstallOrUninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppInstallOrUninstallReceiver.java"


# static fields
.field private static final INSTALLAPKLOG:Ljava/lang/String; = "install.apk.log"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private apkName:Ljava/lang/String;

.field private apkPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/market2345/AppInstallOrUninstallReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/AppInstallOrUninstallReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendMyAppAddedIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "itt":Landroid/content/Intent;
    const-string v1, "com.2345.newappadded"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "newapppackge"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    return-void
.end method


# virtual methods
.method public checked(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packname"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 197
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v5, Lcom/market2345/clearStrategy/ClearManager;

    invoke-direct {v5, p1}, Lcom/market2345/clearStrategy/ClearManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/market2345/clearStrategy/ClearManager;->openClearDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/market2345/AppInstallOrUninstallReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 170
    :try_start_0
    const-string v4, "select a.encrypted_file_path,a.encrypted_file_desp,a.encrypted_file_tip,a.proposal,b.encrypted_pck_name,b.encrypted_app_name,b.encrypted_tip from file_table as a join package_table as b on a.pck_name_id = b._id where b.encrypted_pck_name = ?"

    .line 177
    .local v4, "sql":Ljava/lang/String;
    sget-object v5, Lcom/market2345/AppInstallOrUninstallReceiver;->TAG:Ljava/lang/String;

    const-string v6, "AppInstallOrUninstallReceiver#checked"

    invoke-static {v5, v6}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    new-instance v5, Ljava/lang/String;

    invoke-static {p1}, Lcom/market2345/util/SecurityAppInfo;->getSolidKey(Landroid/content/Context;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2, v5}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/market2345/AppInstallOrUninstallReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 180
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 181
    const-string v5, "encrypted_app_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/market2345/AppInstallOrUninstallReceiver;->apkName:Ljava/lang/String;

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "encrypted_file_path"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "mFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    iget-object v5, p0, Lcom/market2345/AppInstallOrUninstallReceiver;->apkPath:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 187
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/market2345/AppInstallOrUninstallReceiver;->apkPath:Ljava/util/ArrayList;

    .line 189
    :cond_2
    iget-object v5, p0, Lcom/market2345/AppInstallOrUninstallReceiver;->apkPath:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 194
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "mFile":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/market2345/AppInstallOrUninstallReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5

    .line 192
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    iget-object v5, p0, Lcom/market2345/AppInstallOrUninstallReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .line 63
    .local v14, "packageName":Ljava/lang/String;
    const-string v2, "com.market2345"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "action":Ljava/lang/String;
    sget-object v2, Lcom/market2345/AppInstallOrUninstallReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static/range {p1 .. p1}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v10

    .line 72
    .local v10, "downloadManager":Lcom/market2345/download/DownloadManager;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "sourcefrom"

    aput-object v3, v4, v2

    .line 73
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "packageName = ? "

    .line 74
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v6, v2

    .line 75
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v10}, Lcom/market2345/download/DownloadManager;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 78
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 79
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 80
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/market2345/datacenter/DataCenterObserver;->isLianMengApk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    new-instance v16, Lcom/market2345/lm/activity/ReportInfo;

    invoke-direct/range {v16 .. v16}, Lcom/market2345/lm/activity/ReportInfo;-><init>()V

    .line 85
    .local v16, "rinfo":Lcom/market2345/lm/activity/ReportInfo;
    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    .line 86
    const-string v2, "sourcefrom"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/market2345/lm/activity/ReportInfo;

    const/4 v7, 0x0

    aput-object v16, v3, v7

    invoke-static {v2, v3}, Lcom/market2345/lm/activity/AppInstallReportUtil;->reportLianMengAppInstall(Landroid/content/Context;[Lcom/market2345/lm/activity/ReportInfo;)V

    .line 92
    .end local v16    # "rinfo":Lcom/market2345/lm/activity/ReportInfo;
    :cond_2
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 93
    .local v12, "id":J
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v18, "values":Landroid/content/ContentValues;
    const-string v2, "status"

    const/16 v3, 0x25a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    sget-object v2, Lcom/market2345/settings/SettingUtils$SETTING;->DEL_APK:Lcom/market2345/settings/SettingUtils$SETTING;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    const-string v2, "delete_file"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v10, v12, v13}, Lcom/market2345/download/DownloadManager;->getDownloadUriWithID(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v3, v0, v7, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 157
    .end local v12    # "id":J
    .end local v18    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_4

    .line 158
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 103
    :cond_5
    :try_start_1
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 104
    .local v15, "replacing":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v17

    .line 106
    .local v17, "session":Lcom/market2345/datacenter/DataCenterObserver;
    const-string v2, "com.service.usbhelper"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 107
    new-instance v16, Lcom/market2345/lm/activity/ReportInfo;

    invoke-direct/range {v16 .. v16}, Lcom/market2345/lm/activity/ReportInfo;-><init>()V

    .line 108
    .restart local v16    # "rinfo":Lcom/market2345/lm/activity/ReportInfo;
    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    .line 109
    const/4 v2, 0x2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/market2345/lm/activity/ReportInfo;

    const/4 v7, 0x0

    aput-object v16, v3, v7

    invoke-static {v2, v3}, Lcom/market2345/lm/activity/AppInstallReportUtil;->reportLianMengAppInstall(Landroid/content/Context;[Lcom/market2345/lm/activity/ReportInfo;)V

    .line 114
    .end local v16    # "rinfo":Lcom/market2345/lm/activity/ReportInfo;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/market2345/AppInstallOrUninstallReceiver;->sendMyAppAddedIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    if-eqz v15, :cond_6

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/market2345/common/util/DBUtils;->removeUpgradable(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/market2345/datacenter/DataCenterObserver;->removeUpdatedApp(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v15    # "replacing":Z
    .end local v17    # "session":Lcom/market2345/datacenter/DataCenterObserver;
    :cond_6
    if-eqz v9, :cond_0

    .line 158
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 112
    .restart local v15    # "replacing":Z
    .restart local v17    # "session":Lcom/market2345/datacenter/DataCenterObserver;
    :cond_7
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/market2345/datacenter/DataCenterObserver;->addInstalledApp(Ljava/lang/String;)V

    goto :goto_2

    .line 122
    .end local v15    # "replacing":Z
    .end local v17    # "session":Lcom/market2345/datacenter/DataCenterObserver;
    :cond_8
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v17

    .line 126
    .restart local v17    # "session":Lcom/market2345/datacenter/DataCenterObserver;
    const-string v2, "com.service.usbhelper"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 127
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/market2345/datacenter/DataCenterObserver;->removeInstalledApp(Ljava/lang/String;)V

    .line 129
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/market2345/datacenter/DataCenterObserver;->removeUpdatedApp(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/market2345/common/util/DBUtils;->removeUpgradable(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 134
    .restart local v15    # "replacing":Z
    if-nez v15, :cond_a

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/market2345/AppInstallOrUninstallReceiver;->checked(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/AppInstallOrUninstallReceiver;->apkName:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/AppInstallOrUninstallReceiver;->apkPath:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/AppInstallOrUninstallReceiver;->apkPath:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 138
    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/market2345/cacheclean/ClearUnInstallDialog;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v11, "mIntent":Landroid/content/Intent;
    const-string v2, "appname"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/AppInstallOrUninstallReceiver;->apkName:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v2, "path"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/AppInstallOrUninstallReceiver;->apkPath:Ljava/util/ArrayList;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 141
    const/high16 v2, 0x10000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    .end local v11    # "mIntent":Landroid/content/Intent;
    :cond_a
    if-nez v15, :cond_6

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 147
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 149
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 150
    .restart local v12    # "id":J
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .restart local v18    # "values":Landroid/content/ContentValues;
    const-string v2, "status"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v10, v12, v13}, Lcom/market2345/download/DownloadManager;->getDownloadUriWithID(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v3, v0, v7, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
