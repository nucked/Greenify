.class Llo;
.super Llu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llu",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lln;


# direct methods
.method constructor <init>(Lln;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Llo;->a:Lln;

    invoke-direct {p0}, Llu;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Llo;->a:Lln;

    iget v0, v0, Lln;->h:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Llo;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Llo;->a:Lln;

    iget-object v0, v0, Lln;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Llo;->a:Lln;

    invoke-virtual {v0, p1, p2}, Lln;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Llo;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->d(I)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Llo;->a:Lln;

    invoke-virtual {v0, p1, p2}, Lln;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Llo;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Llo;->a:Lln;

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Llo;->a:Lln;

    invoke-virtual {v0}, Lln;->clear()V

    .line 117
    return-void
.end method
