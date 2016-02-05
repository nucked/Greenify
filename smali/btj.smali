.class Lbtj;
.super Lbtl;
.source "SourceFile"


# instance fields
.field final a:Lbqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqz",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lbpy;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Lbva;

.field final synthetic e:Z

.field final synthetic f:Lbti;


# direct methods
.method constructor <init>(Lbti;Ljava/lang/String;ZZLbpy;Ljava/lang/reflect/Field;Lbva;Z)V
    .locals 4

    .prologue
    .line 105
    iput-object p1, p0, Lbtj;->f:Lbti;

    iput-object p5, p0, Lbtj;->b:Lbpy;

    iput-object p6, p0, Lbtj;->c:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lbtj;->d:Lbva;

    iput-boolean p8, p0, Lbtj;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lbtl;-><init>(Ljava/lang/String;ZZ)V

    .line 106
    iget-object v0, p0, Lbtj;->f:Lbti;

    iget-object v1, p0, Lbtj;->b:Lbpy;

    iget-object v2, p0, Lbtj;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lbtj;->d:Lbva;

    invoke-static {v0, v1, v2, v3}, Lbti;->a(Lbti;Lbpy;Ljava/lang/reflect/Field;Lbva;)Lbqz;

    move-result-object v0

    iput-object v0, p0, Lbtj;->a:Lbqz;

    return-void
.end method


# virtual methods
.method a(Lbvb;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lbtj;->a:Lbqz;

    invoke-virtual {v0, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lbtj;->e:Z

    if-nez v1, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lbtj;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    :cond_1
    return-void
.end method

.method a(Lbve;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Lbtj;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    new-instance v1, Lbtq;

    iget-object v2, p0, Lbtj;->b:Lbpy;

    iget-object v3, p0, Lbtj;->a:Lbqz;

    iget-object v4, p0, Lbtj;->d:Lbva;

    invoke-virtual {v4}, Lbva;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lbtq;-><init>(Lbpy;Lbqz;Ljava/lang/reflect/Type;)V

    .line 113
    invoke-virtual {v1, p1, v0}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-boolean v1, p0, Lbtj;->h:Z

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-object v1, p0, Lbtj;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
