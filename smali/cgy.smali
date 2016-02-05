.class Lcgy;
.super Lcjt;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcgx;


# direct methods
.method constructor <init>(Lcgx;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcgy;->b:Lcgx;

    invoke-direct {p0}, Lcjt;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    const-class v0, Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    move v0, v1

    .line 71
    :goto_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2

    .line 72
    aget-object v5, v4, v0

    .line 73
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "recycle"

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    aget-object v0, v4, v0

    .line 76
    const-string v1, "android.os.Binder"

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "execTransact"

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 84
    :cond_2
    iput-boolean v2, p0, Lcgy;->a:Z

    .line 85
    if-nez v1, :cond_4

    .line 86
    const-string v0, "WakeupTracker"

    const-string v1, "Inconsistent hook callback."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_1
    return-void

    .line 80
    :cond_3
    const-string v1, "WakeupTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    :cond_4
    iget-object v0, p0, Lcgy;->b:Lcgx;

    iget-object v0, v0, Lcgx;->a:Landroid/content/Intent;

    const-string v1, "pid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcgy;->b:Lcgx;

    iget-object v0, v0, Lcgx;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcgy;->b:Lcgx;

    iget v1, v1, Lcgx;->c:I

    invoke-static {v0, v1}, Lcfl;->a(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcgy;->a:Z

    return v0
.end method
