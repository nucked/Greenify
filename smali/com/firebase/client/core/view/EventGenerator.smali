.class public Lcom/firebase/client/core/view/EventGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final index:Lcom/firebase/client/snapshot/Index;

.field private final query:Lcom/firebase/client/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/firebase/client/core/view/EventGenerator;->query:Lcom/firebase/client/core/view/QuerySpec;

    .line 18
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/EventGenerator;->index:Lcom/firebase/client/snapshot/Index;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/view/EventGenerator;)Lcom/firebase/client/snapshot/Index;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/firebase/client/core/view/EventGenerator;->index:Lcom/firebase/client/snapshot/Index;

    return-object v0
.end method

.method private changeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/firebase/client/core/view/EventGenerator$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/view/EventGenerator$1;-><init>(Lcom/firebase/client/core/view/EventGenerator;)V

    return-object v0
.end method

.method private generateEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/DataEvent;
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v0

    sget-object v1, Lcom/firebase/client/core/view/Event$EventType;->VALUE:Lcom/firebase/client/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v0

    sget-object v1, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/core/view/EventGenerator;->query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {p2, p1, v0}, Lcom/firebase/client/core/EventRegistration;->createEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/DataEvent;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/view/EventGenerator;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {p3, v0, v1, v2}, Lcom/firebase/client/snapshot/IndexedNode;->getPredecessorChildName(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/view/Change;->changeWithPrevName(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/view/Change;

    move-result-object p1

    goto :goto_0
.end method

.method private generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;",
            "Lcom/firebase/client/core/view/Event$EventType;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/EventRegistration;",
            ">;",
            "Lcom/firebase/client/snapshot/IndexedNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/Change;

    .line 24
    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/firebase/client/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/core/view/EventGenerator;->changeComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/Change;

    .line 30
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/EventRegistration;

    .line 31
    invoke-virtual {v1, p2}, Lcom/firebase/client/core/EventRegistration;->respondsTo(Lcom/firebase/client/core/view/Event$EventType;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32
    invoke-direct {p0, v0, v1, p5}, Lcom/firebase/client/core/view/EventGenerator;->generateEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/DataEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_4
    return-void
.end method


# virtual methods
.method public generateEventsForChanges(Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;",
            "Lcom/firebase/client/snapshot/IndexedNode;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/EventRegistration;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/Change;

    .line 54
    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v3

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/firebase/client/core/view/EventGenerator;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getOldIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/firebase/client/snapshot/Index;->indexedValueChanged(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/firebase/client/core/view/Change;->childMovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 61
    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 62
    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->CHILD_MOVED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 63
    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 64
    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->VALUE:Lcom/firebase/client/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 66
    return-object v1
.end method
