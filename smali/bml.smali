.class public final Lbml;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lbkm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 323
    const-string v0, ", "

    invoke-static {v0}, Lbkm;->a(Ljava/lang/String;)Lbkm;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lbkm;->b(Ljava/lang/String;)Lbkm;

    move-result-object v0

    sput-object v0, Lbml;->a:Lbkm;

    return-void
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 320
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 111
    :catch_0
    move-exception v1

    goto :goto_0

    .line 113
    :catch_1
    move-exception v1

    goto :goto_0
.end method
