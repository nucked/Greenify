.class final Lbtq;
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
.field private final a:Lbpy;

.field private final b:Lbqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqz",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lbpy;Lbqz;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpy;",
            "Lbqz",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lbqz;-><init>()V

    .line 33
    iput-object p1, p0, Lbtq;->a:Lbpy;

    .line 34
    iput-object p2, p0, Lbtq;->b:Lbqz;

    .line 35
    iput-object p3, p0, Lbtq;->c:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 75
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 79
    :cond_1
    return-object p1
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
    .line 52
    iget-object v0, p0, Lbtq;->b:Lbqz;

    .line 53
    iget-object v1, p0, Lbtq;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lbtq;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lbtq;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_0

    .line 55
    iget-object v0, p0, Lbtq;->a:Lbpy;

    invoke-static {v1}, Lbva;->a(Ljava/lang/reflect/Type;)Lbva;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbpy;->a(Lbva;)Lbqz;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lbtk;

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    .line 69
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lbtq;->b:Lbqz;

    instance-of v1, v1, Lbtk;

    if-nez v1, :cond_0

    .line 62
    iget-object v0, p0, Lbtq;->b:Lbqz;

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
    .line 40
    iget-object v0, p0, Lbtq;->b:Lbqz;

    invoke-virtual {v0, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
