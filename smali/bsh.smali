.class Lbsh;
.super Lbsi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbsc",
        "<TK;TV;>.bsi<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsg;


# direct methods
.method constructor <init>(Lbsg;)V
    .locals 2

    .prologue
    .line 598
    iput-object p1, p0, Lbsh;->a:Lbsg;

    iget-object v0, p1, Lbsg;->a:Lbsc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbsi;-><init>(Lbsc;Lbsd;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0}, Lbsh;->b()Lbsj;

    move-result-object v0

    iget-object v0, v0, Lbsj;->f:Ljava/lang/Object;

    return-object v0
.end method
