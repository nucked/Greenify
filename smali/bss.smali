.class public final Lbss;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lbqz",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lbra;


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final c:Lbqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqz",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lbst;

    invoke-direct {v0}, Lbst;-><init>()V

    sput-object v0, Lbss;->a:Lbra;

    return-void
.end method

.method public constructor <init>(Lbpy;Lbqz;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpy;",
            "Lbqz",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lbqz;-><init>()V

    .line 58
    new-instance v0, Lbtq;

    invoke-direct {v0, p1, p2, p3}, Lbtq;-><init>(Lbpy;Lbqz;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lbss;->c:Lbqz;

    .line 60
    iput-object p3, p0, Lbss;->b:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Lbve;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lbve;->b()Lbve;

    .line 91
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 92
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lbss;->c:Lbqz;

    invoke-virtual {v3, p1, v2}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p1}, Lbve;->c()Lbve;

    goto :goto_0
.end method

.method public b(Lbvb;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p1}, Lbvb;->j()V

    .line 66
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 69
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p1}, Lbvb;->a()V

    .line 71
    :goto_1
    invoke-virtual {p1}, Lbvb;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lbss;->c:Lbqz;

    invoke-virtual {v0, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p1}, Lbvb;->b()V

    .line 76
    iget-object v0, p0, Lbss;->b:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 77
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 78
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 80
    goto :goto_0
.end method
