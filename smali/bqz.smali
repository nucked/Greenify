.class public abstract Lbqz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lbqk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lbqk;"
        }
    .end annotation

    .prologue
    .line 233
    :try_start_0
    new-instance v0, Lbtb;

    invoke-direct {v0}, Lbtb;-><init>()V

    .line 234
    invoke-virtual {p0, v0, p1}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0}, Lbtb;->a()Lbqk;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Lbql;

    invoke-direct {v1, v0}, Lbql;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract a(Lbve;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbve;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract b(Lbvb;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvb;",
            ")TT;"
        }
    .end annotation
.end method
