.class Lcgb;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcjw;

.field final synthetic c:Lcjw;

.field final synthetic d:Z

.field final synthetic e:Lcga;


# direct methods
.method constructor <init>(Lcga;ZLcjw;Lcjw;Z)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcgb;->e:Lcga;

    iput-boolean p2, p0, Lcgb;->a:Z

    iput-object p3, p0, Lcgb;->b:Lcjw;

    iput-object p4, p0, Lcgb;->c:Lcjw;

    iput-boolean p5, p0, Lcgb;->d:Z

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/16 v4, 0xb

    const/16 v5, 0x9

    const/4 v3, 0x0

    .line 44
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Landroid/content/Intent;

    .line 45
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-boolean v1, p0, Lcgb;->a:Z

    if-eqz v1, :cond_4

    .line 50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 52
    :try_start_0
    iget-object v1, p0, Lcgb;->b:Lcjw;

    iget-object v2, p0, Lcgb;->c:Lcjw;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Lcjw;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v2, v6}, Lcjw;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GCM message blocked due to notification being disabled for "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    :cond_3
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Awakening GCM message to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, v9

    check-cast v1, Landroid/content/IIntentReceiver;

    .line 72
    if-eqz v1, :cond_0

    .line 75
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v2, v4, :cond_6

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/16 v4, 0xb

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 80
    :goto_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 83
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    new-instance v4, Lcgc;

    invoke-direct {v4, p0, v1, v3, v2}, Lcgc;-><init>(Lcgb;Landroid/content/IIntentReceiver;Landroid/content/Intent;I)V

    aput-object v4, v0, v9

    goto/16 :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    :try_start_2
    const-string v2, "GCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to detect whether notification is disabled for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 61
    :cond_4
    iget-boolean v1, p0, Lcgb;->d:Z

    if-eqz v1, :cond_3

    .line 62
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 63
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    goto/16 :goto_1

    .line 64
    :cond_5
    if-eq v1, v4, :cond_3

    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GCM push message with op "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (OP_POST_NOTIFICATION not applied)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 76
    :cond_6
    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_7

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/16 v4, 0xa

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    goto/16 :goto_2

    .line 77
    :catch_1
    move-exception v2

    move v2, v3

    goto/16 :goto_2

    :cond_7
    move v2, v3

    goto/16 :goto_2
.end method
