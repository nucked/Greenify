.class public Lcjy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:I

.field private static c:Lcjz;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcjy;->a:Z

    .line 68
    const v0, 0xffff

    sput v0, Lcjy;->b:I

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcjy;->c:Lcjz;

    .line 194
    const/4 v0, 0x1

    sput-boolean v0, Lcjy;->d:Z

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    sget-boolean v0, Lcjy;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lcjy;->b:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    .line 84
    sget-object v0, Lcjy;->c:Lcjz;

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lcjy;->c:Lcjz;

    invoke-interface {v0, p0, p1, p2}, Lcjz;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v1, "libsuperuser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[libsuperuser]["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static a(IZ)V
    .locals 2

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    sget v0, Lcjy;->b:I

    or-int/2addr v0, p0

    sput v0, Lcjy;->b:I

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    sget v0, Lcjy;->b:I

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v0, v1

    sput v0, Lcjy;->b:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x1

    const-string v1, "G"

    invoke-static {v0, v1, p0}, Lcjy;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 41
    sput-boolean p0, Lcjy;->a:Z

    .line 42
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcjy;->a:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x2

    const-string v1, "C"

    invoke-static {v0, v1, p0}, Lcjy;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcjy;->d:Z

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x4

    const-string v1, "O"

    invoke-static {v0, v1, p0}, Lcjy;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lcjy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcjy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
