.class public Lcjs;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method protected final afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Lcjs;->b(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcjr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected b(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method protected final beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .prologue
    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lcjs;->a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcjr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
