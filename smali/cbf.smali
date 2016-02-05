.class public Lcbf;
.super Landroid/app/Instrumentation;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 20
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "android.app.ContextImpl"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find correct context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    :try_start_0
    const-string v1, "android.app.ContextImpl"

    invoke-static {v1}, Lchz;->a(Ljava/lang/String;)Lcid;

    move-result-object v1

    const-string v2, "mMainThread"

    invoke-virtual {v1, v2}, Lcid;->a(Ljava/lang/String;)Lcif;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcif;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Lchz;->a(Ljava/lang/String;)Lcid;

    move-result-object v0

    const-string v2, "mInstrumentation"

    invoke-virtual {v0, v2}, Lcid;->a(Ljava/lang/String;)Lcif;

    move-result-object v2

    .line 27
    invoke-virtual {v2, v1}, Lcif;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    .line 28
    if-eqz v0, :cond_3

    .line 29
    instance-of v3, v0, Lcbf;

    if-eqz v3, :cond_2

    .line 39
    :goto_1
    return-void

    .line 30
    :cond_2
    const-class v3, Landroid/app/Instrumentation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 31
    const-string v1, "ASCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Another instrumentation is already installed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcic; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "ASCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incompatible ROM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 35
    :cond_3
    :try_start_1
    new-instance v0, Lcbf;

    invoke-direct {v0}, Lcbf;-><init>()V

    invoke-virtual {v2, v1, v0}, Lcif;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcic; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    .line 42
    instance-of v0, p1, Lcom/google/android/gms/analytics/AnalyticsService;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "ASCS"

    const-string v1, "NPE in AnalyticsService is suppressed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    goto :goto_0
.end method
