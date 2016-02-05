.class Lcgx;
.super Lcjt;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcgw;


# direct methods
.method constructor <init>(Lcgw;Landroid/content/Intent;ZI)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcgx;->d:Lcgw;

    iput-object p2, p0, Lcgx;->a:Landroid/content/Intent;

    iput-boolean p3, p0, Lcgx;->b:Z

    iput p4, p0, Lcgx;->c:I

    invoke-direct {p0}, Lcjt;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v2, p0, Lcgx;->a:Landroid/content/Intent;

    const-string v3, "type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "component"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-boolean v0, p0, Lcgx;->b:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcgx;->a:Landroid/content/Intent;

    iget v1, p0, Lcgx;->c:I

    invoke-static {v0, v1}, Lcfl;->a(Landroid/content/Intent;I)V

    .line 96
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcgx;->d:Lcgw;

    iget-object v0, v0, Lcgw;->b:Lcjw;

    new-instance v1, Lcgy;

    invoke-direct {v1, p0}, Lcgy;-><init>(Lcgx;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjt;)V

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
