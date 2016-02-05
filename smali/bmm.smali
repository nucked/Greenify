.class final Lbmm;
.super Lbmw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbmw",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lbmm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lbmm;

    invoke-direct {v0}, Lbmm;-><init>()V

    sput-object v0, Lbmm;->a:Lbmm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lbmw;-><init>()V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 0

    .prologue
    .line 64
    return p2
.end method

.method public a()Lboy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lboy",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lbnc;->a()Lboy;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Ljava/util/Set;

    .line 75
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lbmm;->a()Lboy;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "[]"

    return-object v0
.end method
