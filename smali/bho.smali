.class Lbho;
.super Ljava/lang/Object;


# instance fields
.field private a:Lbgf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgf",
            "<",
            "Laxh;",
            ">;"
        }
    .end annotation
.end field

.field private b:Laxh;


# direct methods
.method public constructor <init>(Lbgf;Laxh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbgf",
            "<",
            "Laxh;",
            ">;",
            "Laxh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbho;->a:Lbgf;

    iput-object p2, p0, Lbho;->b:Laxh;

    return-void
.end method


# virtual methods
.method public a()Lbgf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbgf",
            "<",
            "Laxh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbho;->a:Lbgf;

    return-object v0
.end method

.method public b()Laxh;
    .locals 1

    iget-object v0, p0, Lbho;->b:Laxh;

    return-object v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lbho;->a:Lbgf;

    invoke-virtual {v0}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-virtual {v0}, Laxh;->f()I

    move-result v1

    iget-object v0, p0, Lbho;->b:Laxh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lbho;->b:Laxh;

    invoke-virtual {v0}, Laxh;->f()I

    move-result v0

    goto :goto_0
.end method
