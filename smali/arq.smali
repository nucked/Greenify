.class Larq;
.super Ljava/lang/Object;

# interfaces
.implements Lary;


# instance fields
.field final synthetic a:Larp;


# direct methods
.method constructor <init>(Larp;)V
    .locals 0

    iput-object p1, p0, Larq;->a:Larp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Larz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Larz",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Larq;->a:Larp;

    iget-object v0, v0, Larp;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Larz;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Larq;->a:Larp;

    invoke-static {v0}, Larp;->a(Larp;)Lasu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Larq;->a:Larp;

    invoke-static {v0}, Larp;->a(Larp;)Lasu;

    move-result-object v0

    invoke-interface {p1}, Larz;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lasu;->a(I)V

    :cond_0
    return-void
.end method
