.class Lcfo;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcfn;


# direct methods
.method constructor <init>(Lcfn;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcfo;->a:Lcfn;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 38
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 40
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lt v2, v3, :cond_0

    const-string v2, "greenify"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 43
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/io/PrintWriter;

    .line 44
    invoke-static {v0, v1}, Lcfn;->a([Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "Admin"

    const-string v2, "Fatal error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
