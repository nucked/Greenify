.class public Lcjw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcjv;

.field private final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcjv;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcjw;->a:Lcjv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcjw;->b:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcjw;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    iget-object v0, p0, Lcjw;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 36
    :try_start_1
    iget-object v0, p0, Lcjw;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Lcjs;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcjw;->a:Lcjv;

    iget-object v0, v0, Lcjv;->g:Ljava/util/List;

    iget-object v1, p0, Lcjw;->b:Ljava/lang/reflect/Method;

    invoke-static {v1, p1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcjt;)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p1, Lcjt;->f:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XC_UnhookableMethodHook can only be used once with onceWith()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcjw;->b:Ljava/lang/reflect/Method;

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p1, Lcjt;->e:J

    .line 51
    iput-object v0, p1, Lcjt;->f:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 52
    return-void
.end method
