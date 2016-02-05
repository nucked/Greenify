.class Lbmv;
.super Lbmt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbmt",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lbmt;


# direct methods
.method constructor <init>(Lbmt;II)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lbmv;->c:Lbmt;

    invoke-direct {p0}, Lbmt;-><init>()V

    .line 407
    iput p2, p0, Lbmv;->a:I

    .line 408
    iput p3, p0, Lbmv;->b:I

    .line 409
    return-void
.end method


# virtual methods
.method public a(II)Lbmt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lbmt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 424
    iget v0, p0, Lbmv;->b:I

    invoke-static {p1, p2, v0}, Lbkt;->a(III)V

    .line 425
    iget-object v0, p0, Lbmv;->c:Lbmt;

    iget v1, p0, Lbmv;->a:I

    add-int/2addr v1, p1

    iget v2, p0, Lbmv;->a:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lbmt;->a(II)Lbmt;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 418
    iget v0, p0, Lbmv;->b:I

    invoke-static {p1, v0}, Lbkt;->a(II)I

    .line 419
    iget-object v0, p0, Lbmv;->c:Lbmt;

    iget v1, p0, Lbmv;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lbmt;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lbmt;->a()Lboy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lbmt;->c()Lboz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0, p1}, Lbmt;->a(I)Lboz;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lbmv;->b:I

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2}, Lbmv;->a(II)Lbmt;

    move-result-object v0

    return-object v0
.end method
