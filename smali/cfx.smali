.class Lcfx;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcft;


# direct methods
.method constructor <init>(Lcft;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcfx;->a:Lcft;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 94
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.USER_PRESENT"

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcfx;->a:Lcft;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v3}, Lcft;->a(Landroid/content/Intent;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "DeepHyber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restrict awakening broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
