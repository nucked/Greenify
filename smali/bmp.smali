.class public final Lbmp;
.super Lbmi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lbmi",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field transient a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lbmi;-><init>(Ljava/util/Map;)V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lbmp;->a:I

    .line 92
    return-void
.end method

.method public static j()Lbmp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lbmp",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lbmp;

    invoke-direct {v0}, Lbmp;-><init>()V

    return-object v0
.end method


# virtual methods
.method synthetic a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lbmp;->i()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lbmi;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lbmi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lbmi;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lbmi;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lbmi;->c()V

    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lbmi;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lbmi;->f()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic g()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lbmi;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lbmi;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lbmi;->hashCode()I

    move-result v0

    return v0
.end method

.method i()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lbmp;->a:I

    invoke-static {v0}, Lbor;->a(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lbmi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
