.class final Lbmy;
.super Lbmn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbmn",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lbmy;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Lbmn;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lbmy;->a:Ljava/lang/Iterable;

    invoke-static {v0}, Lbmx;->c(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lbnc;->b(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
