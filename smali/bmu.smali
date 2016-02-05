.class Lbmu;
.super Lbln;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbln",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbmt;


# direct methods
.method constructor <init>(Lbmt;II)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lbmu;->a:Lbmt;

    invoke-direct {p0, p2, p3}, Lbln;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lbmu;->a:Lbmt;

    invoke-virtual {v0, p1}, Lbmt;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
