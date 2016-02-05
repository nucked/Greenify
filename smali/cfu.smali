.class Lcfu;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcft;


# direct methods
.method constructor <init>(Lcft;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcfu;->a:Lcft;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 57
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcfu;->a:Lcft;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcft;->a(Landroid/content/Intent;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DeepHyber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restrict awakening service starting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method
