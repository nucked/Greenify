.class final Layv;
.super Layq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Layq",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Layq;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Layv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Layq;->e()Layw;

    move-result-object v1

    iget-object v2, p0, Layv;->a:Ljava/lang/String;

    iget-object v0, p0, Layv;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Layw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
