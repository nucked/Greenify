.class public Lcgh;
.super Lcjv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcjv;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v1, "NeverKill"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "never_kill"

    return-object v0
.end method

.method protected b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 32
    :try_start_0
    const-string v0, "com.android.server.am.ActivityManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    const-string v1, "DEBUG_PROCESSES"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcgh;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    const-string v1, "DEBUG_PROCESS_OBSERVERS"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcgh;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    const-string v0, "com.android.server.am.ActivityManagerService"

    const-string v1, "killPackageProcessesLocked"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcgh;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcgi;

    invoke-direct {v1, p0}, Lcgi;-><init>(Lcgh;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 72
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method
