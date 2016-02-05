.class public final Lbfo;
.super Ljava/lang/Object;


# static fields
.field static a:Lbfp;

.field static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbki;

    invoke-direct {v0}, Lbki;-><init>()V

    sput-object v0, Lbfo;->a:Lbfp;

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lbfo;->b:I

    return v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lbfo;->a:Lbfp;

    invoke-interface {v0, p0}, Lbfp;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lbfo;->a:Lbfp;

    invoke-interface {v0, p0, p1}, Lbfp;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lbfo;->a:Lbfp;

    invoke-interface {v0, p0}, Lbfp;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lbfo;->a:Lbfp;

    invoke-interface {v0, p0, p1}, Lbfp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lbfo;->a:Lbfp;

    invoke-interface {v0, p0}, Lbfp;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lbfo;->a:Lbfp;

    invoke-interface {v0, p0}, Lbfp;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lbfo;->a:Lbfp;

    invoke-interface {v0, p0}, Lbfp;->e(Ljava/lang/String;)V

    return-void
.end method
