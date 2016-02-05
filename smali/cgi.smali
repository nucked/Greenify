.class Lcgi;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcgh;


# direct methods
.method constructor <init>(Lcgh;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcgi;->a:Lcgh;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 51
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 52
    aget-object v0, v3, v6

    check-cast v0, Ljava/lang/String;

    .line 53
    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const/4 v2, 0x0

    .line 56
    array-length v1, v3

    const/4 v4, 0x7

    if-le v1, v4, :cond_6

    .line 57
    :try_start_0
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    if-eqz v1, :cond_2

    const-string v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_4

    const/4 v1, 0x2

    :goto_2
    aget-object v1, v3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 62
    const/16 v2, -0x64

    if-ne v1, v2, :cond_0

    .line 66
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_5

    const/4 v1, 0x6

    move v2, v1

    .line 67
    :goto_3
    aget-object v1, v3, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    const-string v1, "NeverKill"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopped killing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 61
    :cond_4
    const/4 v1, 0x3

    goto :goto_2

    .line 66
    :cond_5
    const/4 v1, 0x5

    move v2, v1

    goto :goto_3

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method
