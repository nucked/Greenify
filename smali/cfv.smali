.class Lcfv;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcft;


# direct methods
.method constructor <init>(Lcft;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcfv;->a:Lcft;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Landroid/content/Intent;

    .line 63
    iget-object v3, p0, Lcfv;->a:Lcft;

    sget-object v1, Lcft;->a:Ljava/util/Collection;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v0, v2, v1}, Lcft;->a(Landroid/content/Intent;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "DeepHyber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restrict awakening service binding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 63
    goto :goto_0
.end method
