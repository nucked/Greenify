.class Lbkn;
.super Lbkm;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbkm;


# direct methods
.method constructor <init>(Lbkm;Lbkm;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 219
    iput-object p1, p0, Lbkn;->b:Lbkm;

    iput-object p3, p0, Lbkn;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lbkm;-><init>(Lbkm;Lbkn;)V

    return-void
.end method


# virtual methods
.method public a()Lbkm;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 221
    if-nez p1, :cond_0

    iget-object v0, p0, Lbkn;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbkn;->b:Lbkm;

    invoke-virtual {v0, p1}, Lbkm;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lbkm;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
