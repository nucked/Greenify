.class public abstract Lcjt;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field e:J

.field f:Lde/robv/android/xposed/XC_MethodHook$Unhook;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method protected abstract a()Z
.end method

.method protected final afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcjt;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lcjt;->a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    .line 29
    iget-object v0, p0, Lcjt;->f:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 30
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcjt;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcjt;->f:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_0
.end method

.method protected b(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method protected final beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .prologue
    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcjt;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Lcjt;->b(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    .line 17
    iget-object v0, p0, Lcjt;->f:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 18
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcjt;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcjt;->f:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_0
.end method
