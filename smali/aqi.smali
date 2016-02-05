.class public final Laqi;
.super Ljava/lang/Object;


# direct methods
.method public static a(Laql;Lapz;)Laqf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Laql;",
            ">(TR;",
            "Lapz;",
            ")",
            "Laqf",
            "<TR;>;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Laqj;

    invoke-direct {v0, p1}, Laqj;-><init>(Lapz;)V

    invoke-virtual {v0, p0}, Laqj;->a(Laql;)V

    new-instance v1, Lasj;

    invoke-direct {v1, v0}, Lasj;-><init>(Laqg;)V

    return-object v1
.end method
