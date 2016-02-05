.class Lcgw;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcjw;

.field final synthetic b:Lcjw;

.field final synthetic c:Lcgv;


# direct methods
.method constructor <init>(Lcgv;Lcjw;Lcjw;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcgw;->c:Lcgv;

    iput-object p2, p0, Lcgw;->a:Lcjw;

    iput-object p3, p0, Lcgw;->b:Lcjw;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 10

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 38
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v1, v4, :cond_3

    move v1, v2

    .line 42
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    :goto_2
    if-ge v4, v6, :cond_2

    aget-object v7, v5, v4

    .line 43
    const-string v8, "android.os.Binder"

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "execTransact"

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v3

    .line 49
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oasisfeng.greenify.action.APP_WAKEUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "package"

    .line 50
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.oasisfeng.greenify"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    iget-object v3, p0, Lcgw;->a:Lcjw;

    new-instance v4, Lcgx;

    invoke-direct {v4, p0, v0, v2, v1}, Lcgx;-><init>(Lcgw;Landroid/content/Intent;ZI)V

    invoke-virtual {v3, v4}, Lcjw;->a(Lcjt;)V

    goto :goto_0

    .line 38
    :cond_3
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 42
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
