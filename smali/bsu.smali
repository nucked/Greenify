.class public final Lbsu;
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lbsu;->a:Lbrl;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lbpy;Lbva;)Lbqz;
    .locals 4
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
    .line 44
    invoke-virtual {p2}, Lbva;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lbva;->a()Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Lbrh;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lbva;->a(Ljava/lang/reflect/Type;)Lbva;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbpy;->a(Lbva;)Lbqz;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lbsu;->a:Lbrl;

    invoke-virtual {v0, p2}, Lbrl;->a(Lbva;)Lbsk;

    move-result-object v3

    .line 56
    new-instance v0, Lbsv;

    invoke-direct {v0, p1, v1, v2, v3}, Lbsv;-><init>(Lbpy;Ljava/lang/reflect/Type;Lbqz;Lbsk;)V

    goto :goto_0
.end method
