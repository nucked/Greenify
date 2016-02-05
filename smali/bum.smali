.class final Lbum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbra;


# instance fields
.field final synthetic a:Lbva;

.field final synthetic b:Lbqz;


# direct methods
.method constructor <init>(Lbva;Lbqz;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lbum;->a:Lbva;

    iput-object p2, p0, Lbum;->b:Lbqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbpy;Lbva;)Lbqz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbpy;",
            "Lbva",
            "<TT;>;)",
            "Lbqz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lbum;->a:Lbva;

    invoke-virtual {p2, v0}, Lbva;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbum;->b:Lbqz;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
