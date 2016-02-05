.class public Lbvg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcig",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/AppOpsManager;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 83
    :try_start_0
    const-class v1, Landroid/app/AppOpsManager;

    invoke-static {v1}, Lchz;->a(Ljava/lang/Class;)Lcid;

    move-result-object v1

    const-string v2, "checkOpNoThrow"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcid;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcig;
    :try_end_0
    .catch Lcic; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :cond_0
    :goto_0
    sput-object v0, Lbvg;->a:Lcig;

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    const-string v2, "AppOpsCompat"

    const-string v3, "Incompatible ROM"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;IILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 60
    sget-object v0, Lbvg;->a:Lcig;

    if-nez v0, :cond_0

    move v0, v1

    .line 66
    :goto_0
    return v0

    .line 61
    :cond_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 63
    :try_start_0
    sget-object v2, Lbvg;->a:Lcig;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4, p3}, Lcig;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbxe; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :goto_1
    const-string v2, "AppOpsCompat"

    const-string v3, "Incompatible ROM"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 66
    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 53
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 54
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 55
    invoke-static {p1}, Lbvg;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, p2, p3}, Lbvg;->a(Landroid/content/Context;IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 71
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_0
    const-string v1, "android:system_alert_window"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :pswitch_1
    const/16 v0, 0x18

    return v0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch -0x5b4b3948
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
