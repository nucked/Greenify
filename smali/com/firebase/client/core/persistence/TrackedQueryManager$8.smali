.class Lcom/firebase/client/core/persistence/TrackedQueryManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/firebase/client/core/persistence/TrackedQuery;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/persistence/TrackedQueryManager;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/persistence/TrackedQueryManager;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager$8;->this$0:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/firebase/client/core/persistence/TrackedQuery;Lcom/firebase/client/core/persistence/TrackedQuery;)I
    .locals 4

    .prologue
    .line 301
    iget-wide v0, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    iget-wide v2, p2, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/firebase/client/utilities/Utilities;->compareLongs(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 298
    check-cast p1, Lcom/firebase/client/core/persistence/TrackedQuery;

    check-cast p2, Lcom/firebase/client/core/persistence/TrackedQuery;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/core/persistence/TrackedQueryManager$8;->compare(Lcom/firebase/client/core/persistence/TrackedQuery;Lcom/firebase/client/core/persistence/TrackedQuery;)I

    move-result v0

    return v0
.end method
