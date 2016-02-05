.class public Lcom/firebase/client/DataSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final node:Lcom/firebase/client/snapshot/IndexedNode;

.field private final query:Lcom/firebase/client/Firebase;


# direct methods
.method public constructor <init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/IndexedNode;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    .line 43
    iput-object p1, p0, Lcom/firebase/client/DataSnapshot;->query:Lcom/firebase/client/Firebase;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/DataSnapshot;)Lcom/firebase/client/Firebase;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->query:Lcom/firebase/client/Firebase;

    return-object v0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/firebase/client/DataSnapshot;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->query:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    new-instance v2, Lcom/firebase/client/core/Path;

    invoke-direct {v2, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 57
    new-instance v2, Lcom/firebase/client/DataSnapshot;

    invoke-static {v1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/IndexedNode;)V

    return-object v2
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/firebase/client/DataSnapshot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 248
    new-instance v1, Lcom/firebase/client/DataSnapshot$1;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/DataSnapshot$1;-><init>(Lcom/firebase/client/DataSnapshot;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getChildrenCount()J
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->query:Lcom/firebase/client/Firebase;

    invoke-virtual {v0}, Lcom/firebase/client/Firebase;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 285
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 286
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 288
    :cond_0
    return-object v0
.end method

.method public getRef()Lcom/firebase/client/Firebase;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->query:Lcom/firebase/client/Firebase;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/firebase/client/GenericTypeIndicator;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/firebase/client/GenericTypeIndicator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 207
    :try_start_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Lcom/firebase/client/FirebaseException;

    const-string v2, "Failed to bounce to type"

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 182
    :try_start_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Lcom/firebase/client/FirebaseException;

    const-string v2, "Failed to bounce to type"

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->query:Lcom/firebase/client/Firebase;

    invoke-virtual {v0}, Lcom/firebase/client/Firebase;->getParent()Lcom/firebase/client/Firebase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    invoke-static {p1}, Lcom/firebase/client/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/core/Path;

    invoke-direct {v1, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/firebase/client/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSnapshot { key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/DataSnapshot;->query:Lcom/firebase/client/Firebase;

    invoke-virtual {v1}, Lcom/firebase/client/Firebase;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/DataSnapshot;->node:Lcom/firebase/client/snapshot/IndexedNode;

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
