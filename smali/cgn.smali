.class Lcgn;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcgm;


# direct methods
.method constructor <init>(Lcgm;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcgn;->a:Lcgm;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v2, p0, Lcgn;->a:Lcgm;

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    invoke-static {v2, v0, v1}, Lcgm;->a(Lcgm;Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
