.class public final Lapm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lapn;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Laps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laps",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final b:Lapw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapw",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final c:Lapu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapu",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lapx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapx",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Laps;Lapu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lapt;",
            ">(",
            "Ljava/lang/String;",
            "Laps",
            "<TC;TO;>;",
            "Lapu",
            "<TC;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lapm;->e:Ljava/lang/String;

    iput-object p2, p0, Lapm;->a:Laps;

    iput-object v1, p0, Lapm;->b:Lapw;

    iput-object p3, p0, Lapm;->c:Lapu;

    iput-object v1, p0, Lapm;->d:Lapx;

    return-void
.end method


# virtual methods
.method public a()Laps;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laps",
            "<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lapm;->a:Laps;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lave;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lapm;->a:Laps;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lapw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lapw",
            "<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lapm;->b:Lapw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a ClientBuilder. Use getClientBuilder"

    invoke-static {v0, v1}, Lave;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lapm;->b:Lapw;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lapu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lapu",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lapm;->c:Lapu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey"

    invoke-static {v0, v1}, Lave;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lapm;->c:Lapu;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lapm;->d:Lapx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapm;->e:Ljava/lang/String;

    return-object v0
.end method
