.class public Lbvm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 19
    :try_start_0
    const-string v0, "android.app.AppGlobals"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getInitialApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v0, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Static initialization of Applications must be on main thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 23
    :goto_0
    :try_start_2
    const-string v0, "Applications"

    const-string v3, "Failed to get current application from AppGlobals."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :try_start_3
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "currentApplication"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    :goto_1
    sput-object v0, Lbvm;->a:Landroid/app/Application;

    .line 30
    :goto_2
    return-void

    .line 29
    :cond_0
    sput-object v0, Lbvm;->a:Landroid/app/Application;

    goto :goto_2

    .line 26
    :catch_1
    move-exception v0

    .line 27
    :try_start_4
    const-string v0, "Applications"

    const-string v3, "Failed to get current application from ActivityThread."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 29
    :catchall_0
    move-exception v0

    :goto_3
    sput-object v1, Lbvm;->a:Landroid/app/Application;

    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 21
    :catch_2
    move-exception v0

    move-object v2, v0

    goto :goto_0
.end method

.method public static a()Landroid/app/Application;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lbvm;->a:Landroid/app/Application;

    return-object v0
.end method
