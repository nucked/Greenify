.class public Laks;
.super Lakf;


# instance fields
.field private final a:Lbae;


# direct methods
.method constructor <init>(Lakh;)V
    .locals 1

    invoke-direct {p0, p1}, Lakf;-><init>(Lakh;)V

    new-instance v0, Lbae;

    invoke-direct {v0}, Lbae;-><init>()V

    iput-object v0, p0, Laks;->a:Lbae;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-virtual {p0}, Laks;->r()Lbcg;

    move-result-object v0

    invoke-virtual {v0}, Lbcg;->a()Lbae;

    move-result-object v0

    iget-object v1, p0, Laks;->a:Lbae;

    invoke-virtual {v0, v1}, Lbae;->a(Lbae;)V

    invoke-virtual {p0}, Laks;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Laks;->v()Lajw;

    move-result-object v0

    invoke-virtual {v0}, Lajw;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Laks;->a:Lbae;

    invoke-virtual {v2, v1}, Lbae;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lajw;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Laks;->a:Lbae;

    invoke-virtual {v1, v0}, Lbae;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()Lbae;
    .locals 1

    invoke-virtual {p0}, Laks;->D()V

    iget-object v0, p0, Laks;->a:Lbae;

    return-object v0
.end method
