.class Lbqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbra;


# instance fields
.field private final a:Lbva;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbva",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lbqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqr",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lbqj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqj",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lbva;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lbva",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    instance-of v0, p1, Lbqr;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lbqr;

    :goto_0
    iput-object v0, p0, Lbqy;->d:Lbqr;

    .line 120
    instance-of v0, p1, Lbqj;

    if-eqz v0, :cond_2

    check-cast p1, Lbqj;

    :goto_1
    iput-object p1, p0, Lbqy;->e:Lbqj;

    .line 123
    iget-object v0, p0, Lbqy;->d:Lbqr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbqy;->e:Lbqj;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lbrg;->a(Z)V

    .line 124
    iput-object p2, p0, Lbqy;->a:Lbva;

    .line 125
    iput-boolean p3, p0, Lbqy;->b:Z

    .line 126
    iput-object p4, p0, Lbqy;->c:Ljava/lang/Class;

    .line 127
    return-void

    :cond_1
    move-object v0, v1

    .line 117
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 120
    goto :goto_1

    .line 123
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lbva;ZLjava/lang/Class;Lbqx;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lbqy;-><init>(Ljava/lang/Object;Lbva;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lbpy;Lbva;)Lbqz;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbpy;",
            "Lbva",
            "<TT;>;)",
            "Lbqz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lbqy;->a:Lbva;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbqy;->a:Lbva;

    invoke-virtual {v0, p2}, Lbva;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbqy;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbqy;->a:Lbva;

    invoke-virtual {v0}, Lbva;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lbva;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 134
    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lbqw;

    iget-object v1, p0, Lbqy;->d:Lbqr;

    iget-object v2, p0, Lbqy;->e:Lbqj;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lbqw;-><init>(Lbqr;Lbqj;Lbpy;Lbva;Lbra;Lbqx;)V

    :goto_1
    return-object v0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbqy;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Lbva;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    .line 134
    goto :goto_1
.end method
