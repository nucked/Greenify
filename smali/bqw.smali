.class final Lbqw;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbqz",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lbqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqr",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lbqj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqj",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lbpy;

.field private final d:Lbva;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbva",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lbra;

.field private f:Lbqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqz",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lbqr;Lbqj;Lbpy;Lbva;Lbra;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbqr",
            "<TT;>;",
            "Lbqj",
            "<TT;>;",
            "Lbpy;",
            "Lbva",
            "<TT;>;",
            "Lbra;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lbqz;-><init>()V

    .line 43
    iput-object p1, p0, Lbqw;->a:Lbqr;

    .line 44
    iput-object p2, p0, Lbqw;->b:Lbqj;

    .line 45
    iput-object p3, p0, Lbqw;->c:Lbpy;

    .line 46
    iput-object p4, p0, Lbqw;->d:Lbva;

    .line 47
    iput-object p5, p0, Lbqw;->e:Lbra;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lbqr;Lbqj;Lbpy;Lbva;Lbra;Lbqx;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lbqw;-><init>(Lbqr;Lbqj;Lbpy;Lbva;Lbra;)V

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
    .line 75
    iget-object v0, p0, Lbqw;->f:Lbqz;

    .line 76
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbqw;->c:Lbpy;

    iget-object v1, p0, Lbqw;->e:Lbra;

    iget-object v2, p0, Lbqw;->d:Lbva;

    invoke-virtual {v0, v1, v2}, Lbpy;->a(Lbra;Lbva;)Lbqz;

    move-result-object v0

    iput-object v0, p0, Lbqw;->f:Lbqz;

    goto :goto_0
.end method

.method public static a(Lbva;Ljava/lang/Object;)Lbra;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbva",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lbra;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v0, Lbqy;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lbqy;-><init>(Ljava/lang/Object;Lbva;ZLjava/lang/Class;Lbqx;)V

    return-object v0
.end method

.method public static b(Lbva;Ljava/lang/Object;)Lbra;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbva",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lbra;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lbva;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lbva;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    .line 96
    :goto_0
    new-instance v0, Lbqy;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lbqy;-><init>(Ljava/lang/Object;Lbva;ZLjava/lang/Class;Lbqx;)V

    return-object v0

    .line 95
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lbve;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbve;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lbqw;->a:Lbqr;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lbqw;->a()Lbqz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lbve;->f()Lbve;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lbqw;->a:Lbqr;

    iget-object v1, p0, Lbqw;->d:Lbva;

    invoke-virtual {v1}, Lbva;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lbqw;->c:Lbpy;

    iget-object v2, v2, Lbpy;->b:Lbqq;

    invoke-interface {v0, p2, v1, v2}, Lbqr;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lbqq;)Lbqk;

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Lbsm;->a(Lbqk;Lbve;)V

    goto :goto_0
.end method

.method public b(Lbvb;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lbqw;->b:Lbqj;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lbqw;->a()Lbqz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-static {p1}, Lbsm;->a(Lbvb;)Lbqk;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lbqk;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lbqw;->b:Lbqj;

    iget-object v2, p0, Lbqw;->d:Lbva;

    invoke-virtual {v2}, Lbva;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lbqw;->c:Lbpy;

    iget-object v3, v3, Lbpy;->a:Lbqi;

    invoke-interface {v1, v0, v2, v3}, Lbqj;->b(Lbqk;Ljava/lang/reflect/Type;Lbqi;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
