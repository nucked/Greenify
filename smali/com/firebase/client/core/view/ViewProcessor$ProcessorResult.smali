.class public Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation
.end field

.field public final viewCache:Lcom/firebase/client/core/view/ViewCache;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/view/ViewCache;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/ViewCache;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    .line 31
    iput-object p2, p0, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;->changes:Ljava/util/List;

    .line 32
    return-void
.end method
