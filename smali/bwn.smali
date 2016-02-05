.class public Lbwn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/reflect/Method;


# instance fields
.field private final a:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    :try_start_0
    const-class v1, Landroid/os/PowerManager;

    const-string v2, "goToSleep"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    sput-object v0, Lbwn;->b:Ljava/lang/reflect/Method;

    .line 42
    return-void

    .line 40
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lbwn;->a:Landroid/os/PowerManager;

    .line 16
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbwn;->a:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 21
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbwn;->a:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_0
.end method

.method public a(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    sget-object v2, Lbwn;->b:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 30
    :goto_0
    return v0

    .line 27
    :cond_0
    :try_start_0
    sget-object v2, Lbwn;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lbwn;->a:Landroid/os/PowerManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method
