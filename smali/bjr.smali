.class Lbjr;
.super Ljava/lang/Object;

# interfaces
.implements Lbjj;


# instance fields
.field final synthetic a:Lbjl;


# direct methods
.method private constructor <init>(Lbjl;)V
    .locals 0

    iput-object p1, p0, Lbjr;->a:Lbjl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbjl;Lbjm;)V
    .locals 0

    invoke-direct {p0, p1}, Lbjr;-><init>(Lbjl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lbjr;->a:Lbjl;

    invoke-static {v0}, Lbjl;->a(Lbjl;)Lbgq;

    move-result-object v0

    invoke-interface {v0}, Lbgq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbjr;->a:Lbjl;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lbjl;->a(Lbjl;J)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbjr;->a:Lbjl;

    invoke-virtual {v0, p1}, Lbjl;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbjr;->a:Lbjl;

    invoke-virtual {v0}, Lbjl;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
