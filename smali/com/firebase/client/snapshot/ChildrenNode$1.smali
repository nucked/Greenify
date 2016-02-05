.class final Lcom/firebase/client/snapshot/ChildrenNode$1;
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
        "Lcom/firebase/client/snapshot/ChildKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;)I
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p1, p2}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/firebase/client/snapshot/ChildKey;

    check-cast p2, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode$1;->compare(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

    return v0
.end method
