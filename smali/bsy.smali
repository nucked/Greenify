.class public final Lbsy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbra;


# instance fields
.field private final a:Lbrl;


# direct methods
.method public constructor <init>(Lbrl;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lbsy;->a:Lbrl;

    .line 38
    return-void
.end method

.method static a(Lbrl;Lbpy;Lbva;Lbrc;)Lbqz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrl;",
            "Lbpy;",
            "Lbva",
            "<*>;",
            "Lbrc;",
            ")",
            "Lbqz",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p3}, Lbrc;->a()Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-class v1, Lbqz;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {v0}, Lbva;->b(Ljava/lang/Class;)Lbva;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbrl;->a(Lbva;)Lbsk;

    move-result-object v0

    invoke-interface {v0}, Lbsk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqz;

    .line 59
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-class v1, Lbra;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {v0}, Lbva;->b(Ljava/lang/Class;)Lbva;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbrl;->a(Lbva;)Lbsk;

    move-result-object v0

    invoke-interface {v0}, Lbsk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbra;

    invoke-interface {v0, p1, p2}, Lbra;->a(Lbpy;Lbva;)Lbqz;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lbpy;Lbva;)Lbqz;
    .locals 2
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
    .line 42
    invoke-virtual {p2}, Lbva;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lbrc;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lbrc;

    .line 43
    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lbsy;->a:Lbrl;

    invoke-static {v1, p1, p2, v0}, Lbsy;->a(Lbrl;Lbpy;Lbva;Lbrc;)Lbqz;

    move-result-object v0

    goto :goto_0
.end method
