.class public Lcom/firebase/client/MutableData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final holder:Lcom/firebase/client/core/SnapshotHolder;

.field private final prefixPath:Lcom/firebase/client/core/Path;


# direct methods
.method private constructor <init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    .line 42
    iput-object p2, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    .line 43
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firebase/client/core/ValidationPath;->validateWithObject(Lcom/firebase/client/core/Path;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;Lcom/firebase/client/MutableData$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/snapshot/Node;)V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/SnapshotHolder;-><init>(Lcom/firebase/client/snapshot/Node;)V

    new-instance v1, Lcom/firebase/client/core/Path;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/MutableData;)Lcom/firebase/client/core/SnapshotHolder;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/firebase/client/MutableData;)Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    return-object v0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/firebase/client/MutableData;
    .locals 4

    .prologue
    .line 73
    invoke-static {p1}, Lcom/firebase/client/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/firebase/client/MutableData;

    iget-object v1, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v2, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    new-instance v3, Lcom/firebase/client/core/Path;

    invoke-direct {v3, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 323
    instance-of v0, p1, Lcom/firebase/client/MutableData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    move-object v0, p1

    check-cast v0, Lcom/firebase/client/MutableData;

    iget-object v0, v0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    check-cast p1, Lcom/firebase/client/MutableData;

    iget-object v1, p1, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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
            "Lcom/firebase/client/MutableData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    new-instance v0, Lcom/firebase/client/MutableData$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/MutableData$1;-><init>(Lcom/firebase/client/MutableData;)V

    .line 119
    :goto_0
    return-object v0

    .line 118
    :cond_1
    invoke-static {v0}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 119
    new-instance v0, Lcom/firebase/client/MutableData$2;

    invoke-direct {v0, p0, v1}, Lcom/firebase/client/MutableData$2;-><init>(Lcom/firebase/client/MutableData;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public getChildrenCount()J
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNode()Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v1, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/firebase/client/MutableData;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    .line 154
    new-instance v0, Lcom/firebase/client/MutableData;

    iget-object v2, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v0, v2, v1}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPriority()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

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
    .line 252
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 254
    :try_start_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    return-object v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
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
    .line 227
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 229
    :try_start_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 230
    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Lcom/firebase/client/FirebaseException;

    const-string v2, "Failed to bounce to type"

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/core/Path;

    invoke-direct {v1, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

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

.method public hasChildren()Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_0

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

.method public setPriority(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v1, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/firebase/client/snapshot/Node;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 305
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-static {v0, p1}, Lcom/firebase/client/core/ValidationPath;->validateWithObject(Lcom/firebase/client/core/Path;Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    .line 293
    iget-object v1, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v2, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-static {v0}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Lcom/firebase/client/FirebaseException;

    const-string v2, "Failed to parse to snapshot"

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MutableData { key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v1}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

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

    :cond_0
    const-string v0, "<none>"

    goto :goto_0
.end method
