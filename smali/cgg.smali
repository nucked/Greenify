.class Lcgg;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcgf;


# direct methods
.method constructor <init>(Lcgf;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcgg;->a:Lcgf;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_3

    .line 27
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_2

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 34
    :cond_2
    const-string v3, "KeepN"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prevent notification from removal when "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_4

    move v0, v1

    :goto_1
    aget-object v0, v5, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is restarted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x7

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_4
    move v0, v2

    .line 34
    goto :goto_1
.end method
