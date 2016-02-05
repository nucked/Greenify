.class Lcfw;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcft;


# direct methods
.method constructor <init>(Lcft;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcfw;->a:Lcft;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Landroid/content/Intent;

    .line 72
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 75
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 77
    check-cast v1, Ljava/util/List;

    .line 78
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 80
    instance-of v2, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    .line 81
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 83
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcft;->a(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "DeepHyber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refuse explicit service request for hibernated app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
