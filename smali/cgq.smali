.class Lcgq;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcgm;


# direct methods
.method constructor <init>(Lcgm;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcgq;->a:Lcgm;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .prologue
    .line 57
    const-string v0, "com.oasisfeng.greenify.system_apps"

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method
