.class Lblx;
.super Lbmc;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblr",
        "<TK;TV;>.bmc;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final synthetic a:Lblr;


# direct methods
.method constructor <init>(Lblr;Ljava/lang/Object;Ljava/util/List;Lbma;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lbma;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lblr",
            "<TK;TV;>.bma;)V"
        }
    .end annotation

    .prologue
    .line 906
    iput-object p1, p0, Lblx;->a:Lblr;

    .line 907
    invoke-direct {p0, p1, p2, p3, p4}, Lbmc;-><init>(Lblr;Ljava/lang/Object;Ljava/util/List;Lbma;)V

    .line 908
    return-void
.end method
