.class Lcfs;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcfr;


# direct methods
.method constructor <init>(Lcfr;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcfs;->a:Lcfr;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 18
    if-eqz v0, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
