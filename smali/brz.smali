.class Lbrz;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lbpy;

.field final synthetic d:Lbva;

.field final synthetic e:Lbry;

.field private f:Lbqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqz",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbry;ZZLbpy;Lbva;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lbrz;->e:Lbry;

    iput-boolean p2, p0, Lbrz;->a:Z

    iput-boolean p3, p0, Lbrz;->b:Z

    iput-object p4, p0, Lbrz;->c:Lbpy;

    iput-object p5, p0, Lbrz;->d:Lbva;

    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method

.method private a()Lbqz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbqz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lbrz;->f:Lbqz;

    .line 142
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbrz;->c:Lbpy;

    iget-object v1, p0, Lbrz;->e:Lbry;

    iget-object v2, p0, Lbrz;->d:Lbva;

    invoke-virtual {v0, v1, v2}, Lbpy;->a(Lbra;Lbva;)Lbqz;

    move-result-object v0

    iput-object v0, p0, Lbrz;->f:Lbqz;

    goto :goto_0
.end method


# virtual methods
.method public a(Lbve;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbve;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-boolean v0, p0, Lbrz;->b:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lbrz;->a()Lbqz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lbvb;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lbrz;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lbvb;->n()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lbrz;->a()Lbqz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
