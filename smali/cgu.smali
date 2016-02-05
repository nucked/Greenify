.class Lcgu;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcgt;


# direct methods
.method constructor <init>(Lcgt;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcgu;->a:Lcgt;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    .line 35
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    if-eq v0, v6, :cond_1

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 39
    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 41
    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    .line 43
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v4, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 47
    const-string v4, "TimerCoalescing"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjusted repeating alarm (interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms) for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.oasisfeng.greenify.action.TIMER_COALESCED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.oasisfeng.greenify"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "interval"

    .line 49
    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    const v2, 0x186a0

    div-int/2addr v0, v2

    invoke-static {v1, v0}, Lcfl;->a(Landroid/content/Intent;I)V

    goto :goto_0
.end method
