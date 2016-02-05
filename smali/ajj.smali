.class public Lajj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile a:Lait;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lali;

    invoke-direct {v0}, Lali;-><init>()V

    invoke-static {v0}, Lajj;->a(Lait;)V

    return-void
.end method

.method public static a()Lait;
    .locals 1

    sget-object v0, Lajj;->a:Lait;

    return-object v0
.end method

.method public static a(Lait;)V
    .locals 0

    sput-object p0, Lajj;->a:Lait;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lajk;->b()Lajk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lajk;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lajj;->a:Lait;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lait;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lajj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lalp;->c:Lalq;

    invoke-virtual {v0}, Lalq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lajk;->b()Lajk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p1}, Lajk;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lajj;->a:Lait;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lait;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Lajj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lalp;->c:Lalq;

    invoke-virtual {v0}, Lalq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v1, p0

    goto :goto_1
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lajj;->a()Lait;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lajj;->a()Lait;

    move-result-object v1

    invoke-interface {v1}, Lait;->a()I

    move-result v1

    if-gt v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lajk;->b()Lajk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lajk;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lajj;->a:Lait;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lait;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lajj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lalp;->c:Lalq;

    invoke-virtual {v0}, Lalq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lajk;->b()Lajk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lajk;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lajj;->a:Lait;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lait;->c(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lajj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lalp;->c:Lalq;

    invoke-virtual {v0}, Lalq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
