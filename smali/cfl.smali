.class public Lcfl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    :try_start_0
    const-class v0, Landroid/content/Intent;

    const-string v1, "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 41
    :goto_0
    sput v0, Lcfl;->a:I

    .line 42
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    .line 38
    const/high16 v0, 0x4000000

    goto :goto_0

    .line 31
    :pswitch_0
    const/high16 v0, 0x10000000

    goto :goto_0

    .line 35
    :pswitch_1
    const/high16 v0, 0x8000000

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcfl;->a(Landroid/content/Intent;II)V

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Intent;II)V
    .locals 18

    .prologue
    .line 59
    sget v2, Lcfl;->a:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 63
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 64
    invoke-static {}, Lcfl;->a()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v4, p0

    move/from16 v11, p2

    move/from16 v15, p1

    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    :goto_1
    return-void

    .line 65
    :cond_0
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    .line 66
    invoke-static {}, Lcfl;->a()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move/from16 v11, p2

    move/from16 v14, p1

    invoke-interface/range {v2 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    .line 71
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 67
    :cond_1
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 68
    invoke-static {}, Lcfl;->a()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move/from16 v13, p1

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 69
    :cond_2
    :try_start_3
    invoke-static {}, Lcfl;->a()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static b()Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method
