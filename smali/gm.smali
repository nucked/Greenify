.class public Lgm;
.super Lgw;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1765
    invoke-direct {p0}, Lgw;-><init>()V

    .line 1763
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgm;->a:Ljava/util/ArrayList;

    .line 1766
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lgm;
    .locals 1

    .prologue
    .line 1777
    invoke-static {p1}, Lgk;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lgm;->e:Ljava/lang/CharSequence;

    .line 1778
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lgm;
    .locals 2

    .prologue
    .line 1794
    iget-object v0, p0, Lgm;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lgk;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    return-object p0
.end method
