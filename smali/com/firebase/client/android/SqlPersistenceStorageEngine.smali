.class public Lcom/firebase/client/android/SqlPersistenceStorageEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/persistence/PersistenceStorageEngine;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CHILDREN_NODE_SPLIT_SIZE_THRESHOLD:I = 0x4000

.field private static final FIRST_PART_KEY:Ljava/lang/String; = ".part-0000"

.field private static final LOGGER_COMPONENT:Ljava/lang/String; = "Persistence"

.field private static final PART_KEY_FORMAT:Ljava/lang/String; = ".part-%04d"

.field private static final PART_KEY_PREFIX:Ljava/lang/String; = ".part-"

.field private static final PATH_COLUMN_NAME:Ljava/lang/String; = "path"

.field private static final ROW_ID_COLUMN_NAME:Ljava/lang/String; = "rowid"

.field private static final ROW_SPLIT_SIZE:I = 0x40000

.field private static final SERVER_CACHE_TABLE:Ljava/lang/String; = "serverCache"

.field private static final TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final TRACKED_KEYS_KEY_COLUMN_NAME:Ljava/lang/String; = "key"

.field private static final TRACKED_KEYS_TABLE:Ljava/lang/String; = "trackedKeys"

.field private static final TRACKED_QUERY_ACTIVE_COLUMN_NAME:Ljava/lang/String; = "active"

.field private static final TRACKED_QUERY_COMPLETE_COLUMN_NAME:Ljava/lang/String; = "complete"

.field private static final TRACKED_QUERY_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final TRACKED_QUERY_LAST_USE_COLUMN_NAME:Ljava/lang/String; = "lastUse"

.field private static final TRACKED_QUERY_PARAMS_COLUMN_NAME:Ljava/lang/String; = "queryParams"

.field private static final TRACKED_QUERY_PATH_COLUMN_NAME:Ljava/lang/String; = "path"

.field private static final TRACKED_QUERY_TABLE:Ljava/lang/String; = "trackedQueries"

.field private static final VALUE_COLUMN_NAME:Ljava/lang/String; = "value"

.field private static final WRITES_TABLE:Ljava/lang/String; = "writes"

.field private static final WRITE_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final WRITE_NODE_COLUMN_NAME:Ljava/lang/String; = "node"

.field private static final WRITE_PART_COLUMN_NAME:Ljava/lang/String; = "part"

.field private static final WRITE_TYPE_COLUMN_NAME:Ljava/lang/String; = "type"

.field private static final WRITE_TYPE_MERGE:Ljava/lang/String; = "m"

.field private static final WRITE_TYPE_OVERWRITE:Ljava/lang/String; = "o"

.field private static final createServerCache:Ljava/lang/String; = "CREATE TABLE serverCache (path TEXT PRIMARY KEY, value BLOB);"

.field private static final createTrackedKeys:Ljava/lang/String; = "CREATE TABLE trackedKeys (id INTEGER, key TEXT);"

.field private static final createTrackedQueries:Ljava/lang/String; = "CREATE TABLE trackedQueries (id INTEGER PRIMARY KEY, path TEXT, queryParams TEXT, lastUse INTEGER, complete INTEGER, active INTEGER);"

.field private static final createWrites:Ljava/lang/String; = "CREATE TABLE writes (id INTEGER, path TEXT, type TEXT, part INTEGER, node BLOB, UNIQUE (id, part));"


# instance fields
.field private final database:Landroid/database/sqlite/SQLiteDatabase;

.field private insideTransaction:Z

.field private final jsonMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final logger:Lcom/firebase/client/utilities/LogWrapper;

.field private transactionStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/firebase/client/core/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->transactionStart:J

    .line 191
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    new-instance v1, Lcom/firebase/client/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;

    invoke-direct {v1, p1, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 200
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->jsonMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 201
    const-string v0, "Persistence"

    invoke-virtual {p2, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 202
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static buildAncestorWhereClause(Lcom/firebase/client/core/Path;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 823
    sget-boolean v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 824
    :cond_0
    const/4 v0, 0x0

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 827
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    const-string v2, " = ? OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-static {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 830
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object p0

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 833
    :cond_1
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v2, " = ?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 836
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    const/4 v0, 0x1

    .line 897
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 898
    if-nez v1, :cond_0

    .line 899
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :cond_0
    const/4 v0, 0x0

    .line 901
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v0

    .line 902
    goto :goto_0

    .line 903
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deserializeNode([B)Lcom/firebase/client/snapshot/Node;
    .locals 5

    .prologue
    .line 882
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->jsonMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 883
    invoke-static {v0}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 884
    :catch_0
    move-exception v0

    .line 886
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 887
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not deserialize node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 888
    :catch_1
    move-exception v1

    .line 889
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to serialize values to utf-8: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private joinBytes(Ljava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)[B"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 859
    .line 860
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 861
    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    .line 862
    goto :goto_0

    .line 863
    :cond_0
    new-array v3, v1, [B

    .line 865
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 866
    array-length v5, v0

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    .line 868
    goto :goto_1

    .line 869
    :cond_1
    return-object v3
.end method

.method private loadNested(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 22

    .prologue
    .line 709
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 710
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 713
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->loadNestedQuery(Lcom/firebase/client/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v12, v4, v10

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 717
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 722
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, v4

    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 727
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v4

    .line 728
    const/4 v3, 0x0

    .line 729
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 730
    const/4 v2, 0x0

    move v5, v2

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_7

    .line 733
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, ".part-0000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 736
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 737
    new-instance v6, Lcom/firebase/client/core/Path;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    const-string v20, ".part-0000"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v5}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->splitNodeRunLength(Lcom/firebase/client/core/Path;Ljava/util/List;I)I

    move-result v7

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Loading split node with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " parts."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 740
    :cond_1
    add-int v2, v5, v7

    invoke-interface {v9, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->joinBytes(Ljava/util/List;)[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->deserializeNode([B)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 742
    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    move v7, v5

    move-object v5, v6

    move-object v6, v2

    .line 747
    :goto_2
    invoke-virtual {v5}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v5}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 749
    move-object/from16 v0, v18

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    move-object v3, v4

    .line 730
    :goto_3
    add-int/lit8 v4, v7, 0x1

    move v5, v4

    move-object v4, v3

    move v3, v2

    goto/16 :goto_1

    .line 744
    :cond_2
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->deserializeNode([B)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 745
    new-instance v6, Lcom/firebase/client/core/Path;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v6, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v6

    move-object v6, v7

    move v7, v5

    move-object/from16 v5, v21

    goto :goto_2

    .line 750
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 751
    if-nez v3, :cond_4

    const/4 v2, 0x1

    :goto_4
    const-string v4, "Descendants of path must come after ancestors."

    invoke-static {v2, v4}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 752
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    move/from16 v21, v3

    move-object v3, v2

    move/from16 v2, v21

    goto :goto_3

    .line 751
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 753
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 754
    const/4 v2, 0x1

    .line 755
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 756
    invoke-interface {v4, v3, v6}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    goto :goto_3

    .line 758
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Loading an unrelated row with path %s for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 763
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 764
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/Path;

    .line 765
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v4, v3, v2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    goto :goto_5

    .line 768
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    .line 770
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v5}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 771
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v8, "Loaded a total of %d rows for a total of %d nodes at %s in %dms (Query: %dms, Loading: %dms, Serializing: %dms)"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v11

    const/4 v9, 0x1

    invoke-static {v4}, Lcom/firebase/client/utilities/NodeSizeEstimator;->nodeCount(Lcom/firebase/client/snapshot/Node;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    const/4 v9, 0x2

    aput-object p1, v10, v9

    const/4 v9, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v9

    const/4 v6, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v6

    const/4 v6, 0x5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v6

    const/4 v6, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v6

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 775
    :cond_9
    return-object v4
.end method

.method private loadNestedQuery(Lcom/firebase/client/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 796
    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-static {v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    .line 800
    invoke-static {p1, v4}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->buildAncestorWhereClause(Lcom/firebase/client/core/Path;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 801
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR (path > ? AND path < ?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 802
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput-object v0, v4, v2

    .line 803
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    aput-object v1, v4, v0

    .line 804
    const-string v7, "path"

    .line 806
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serverCache"

    move-object v2, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private partKey(Lcom/firebase/client/core/Path;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".part-%04d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 818
    sget-boolean v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Path keys must end with a \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 819
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    const-string v0, "/"

    .line 813
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private pruneTreeRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/persistence/PruneForest;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/firebase/client/core/persistence/PruneForest;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/utilities/Pair",
            "<",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 570
    invoke-virtual {p3}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 572
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/android/SqlPersistenceStorageEngine$1;

    invoke-direct {v1, p0, p4}, Lcom/firebase/client/android/SqlPersistenceStorageEngine$1;-><init>(Lcom/firebase/client/android/SqlPersistenceStorageEngine;Lcom/firebase/client/core/utilities/ImmutableTree;)V

    invoke-virtual {p5, v0, v1}, Lcom/firebase/client/core/persistence/PruneForest;->foldKeptNodes(Ljava/lang/Object;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 579
    if-lez v0, :cond_1

    .line 580
    invoke-virtual {p1, p2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    .line 581
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Need to rewrite %d nodes below path %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 582
    :cond_0
    invoke-direct {p0, v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->loadNested(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 583
    const/4 v6, 0x0

    new-instance v0, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/android/SqlPersistenceStorageEngine$2;-><init>(Lcom/firebase/client/android/SqlPersistenceStorageEngine;Lcom/firebase/client/core/utilities/ImmutableTree;Ljava/util/List;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    invoke-virtual {p5, v6, v0}, Lcom/firebase/client/core/persistence/PruneForest;->foldKeptNodes(Ljava/lang/Object;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    .line 603
    :cond_1
    return-void

    .line 596
    :cond_2
    invoke-virtual {p3}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 597
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/ChildKey;

    .line 598
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {p5, v2}, Lcom/firebase/client/core/persistence/PruneForest;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/persistence/PruneForest;

    move-result-object v5

    .line 599
    invoke-virtual {p2, v1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {p4, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/persistence/PruneForest;Ljava/util/List;)V

    goto :goto_0
.end method

.method private removeNested(Ljava/lang/String;Lcom/firebase/client/core/Path;)I
    .locals 6

    .prologue
    .line 840
    const-string v0, "path >= ? AND path < ?"

    .line 841
    invoke-static {p2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-static {v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 843
    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v3, p1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 655
    invoke-static {p2}, Lcom/firebase/client/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/firebase/client/snapshot/Node;)J

    move-result-wide v2

    .line 656
    instance-of v4, p2, Lcom/firebase/client/snapshot/ChildrenNode;

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x4000

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 657
    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v4}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v5, "Node estimated serialized size at path %s of %d bytes exceeds limit of %d bytes. Splitting up."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 660
    :cond_0
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 661
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 662
    goto :goto_0

    .line 663
    :cond_1
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 664
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getPriorityKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 665
    add-int/lit8 v1, v1, 0x1

    .line 669
    :cond_2
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 670
    add-int/lit8 v0, v1, 0x1

    .line 675
    :goto_1
    return v0

    .line 674
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    move v0, v1

    .line 675
    goto :goto_1
.end method

.method private saveNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v2, 0x40000

    const/4 v5, 0x5

    .line 684
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v0

    .line 685
    array-length v1, v0

    if-lt v1, v2, :cond_1

    .line 686
    invoke-static {v0, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->splitBytes([BI)Ljava/util/List;

    move-result-object v2

    .line 687
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving huge leaf node with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " parts."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 688
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 689
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 690
    const-string v0, "path"

    invoke-direct {p0, p1, v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->partKey(Lcom/firebase/client/core/Path;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v4, "value"

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 692
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "serverCache"

    invoke-virtual {v0, v4, v6, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 688
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 695
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 696
    const-string v2, "path"

    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 698
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "serverCache"

    invoke-virtual {v0, v2, v6, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 700
    :cond_2
    return-void
.end method

.method private saveWrite(Lcom/firebase/client/core/Path;JLjava/lang/String;[B)V
    .locals 10

    .prologue
    const/high16 v8, 0x40000

    const/4 v7, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 285
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "writes"

    const-string v4, "id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    array-length v2, p5

    if-lt v2, v8, :cond_0

    .line 287
    invoke-static {p5, v8}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->splitBytes([BI)Ljava/util/List;

    move-result-object v3

    move v2, v0

    .line 288
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 289
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 290
    const-string v0, "id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string v0, "path"

    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "type"

    invoke-virtual {v4, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "part"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v5, "node"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 295
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "writes"

    invoke-virtual {v0, v5, v1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 288
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 298
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 299
    const-string v0, "id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    const-string v0, "path"

    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "type"

    invoke-virtual {v2, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "part"

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v0, "node"

    invoke-virtual {v2, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 304
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "writes"

    invoke-virtual {v0, v3, v1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 306
    :cond_1
    return-void
.end method

.method private serializeObject(Ljava/lang/Object;)[B
    .locals 3

    .prologue
    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->jsonMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not serialize leaf node"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static splitBytes([BI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 847
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    add-int/lit8 v2, v0, 0x1

    .line 848
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 849
    :goto_0
    if-ge v0, v2, :cond_0

    .line 850
    array-length v4, p0

    mul-int v5, v0, p1

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 851
    new-array v5, v4, [B

    .line 852
    mul-int v6, v0, p1

    invoke-static {p0, v6, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    :cond_0
    return-object v3
.end method

.method private splitNodeRunLength(Lcom/firebase/client/core/Path;Ljava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 779
    add-int/lit8 v1, p3, 0x1

    .line 780
    invoke-static {p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Extracting split nodes needs to start with path prefix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sub-int v3, v1, p3

    invoke-direct {p0, p1, v3}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->partKey(Lcom/firebase/client/core/Path;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 788
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".part-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 790
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Run did not finish with all parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_2
    sub-int v0, v1, p3

    return v0
.end method

.method private updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 329
    if-nez p3, :cond_2

    .line 330
    const-string v0, "serverCache"

    invoke-direct {p0, v0, p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/firebase/client/core/Path;)I

    move-result v3

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I

    move-result v1

    .line 340
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 341
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v6, "Persisted a total of %d rows and deleted %d rows for a set at %s in %dms"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 342
    :cond_1
    return-void

    .line 335
    :cond_2
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 336
    const-string v7, "serverCache"

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/firebase/client/core/Path;)I

    move-result v7

    add-int/2addr v3, v7

    .line 337
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v7

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 338
    goto :goto_0
.end method

.method private verifyInsideTransaction()V
    .locals 2

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 644
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 624
    iget-boolean v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v2}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v2, "Starting transaction."

    invoke-virtual {v0, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 627
    iput-boolean v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->transactionStart:J

    .line 629
    return-void

    .line 624
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteTrackedQuery(J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 391
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 392
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 393
    const-string v1, "id = ?"

    .line 394
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "trackedQueries"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    const-string v1, "id = ?"

    .line 397
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "trackedKeys"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method public endTransaction()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 632
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 633
    iput-boolean v5, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->transactionStart:J

    sub-long/2addr v0, v2

    .line 635
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Transaction completed. Elapsed: %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 636
    :cond_0
    return-void
.end method

.method public loadTrackedQueries()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 402
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v9

    const-string v0, "path"

    aput-object v0, v2, v8

    const-string v0, "queryParams"

    aput-object v0, v2, v1

    const-string v0, "lastUse"

    aput-object v0, v2, v4

    const/4 v0, 0x4

    const-string v1, "complete"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "active"

    aput-object v1, v2, v0

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 405
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedQueries"

    const-string v7, "id"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 407
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 409
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 411
    new-instance v3, Lcom/firebase/client/core/Path;

    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 412
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 415
    :try_start_1
    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->jsonMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 420
    :try_start_2
    check-cast v0, Ljava/util/Map;

    invoke-static {v3, v0}, Lcom/firebase/client/core/view/QuerySpec;->fromPathAndQueryObject(Lcom/firebase/client/core/Path;Ljava/util/Map;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    .line 421
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 422
    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v6, v8

    .line 423
    :goto_1
    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v7, v8

    .line 424
    :goto_2
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/persistence/TrackedQuery;-><init>(JLcom/firebase/client/core/view/QuerySpec;JZZ)V

    .line 425
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v6, v9

    .line 422
    goto :goto_1

    :cond_1
    move v7, v9

    .line 423
    goto :goto_2

    .line 427
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v10

    .line 428
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Loaded %d tracked queries in %dms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-object v13
.end method

.method public loadTrackedQueryKeys(J)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 497
    new-array v3, v1, [Ljava/lang/String;

    const-string v0, "key"

    aput-object v0, v3, v2

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 500
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "trackedKeys"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 502
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 504
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-static {v2}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 508
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 509
    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v4}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v5, "Loaded %d tracked queries keys for tracked queries %s in %dms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public loadUserWrites()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v1

    const-string v0, "path"

    aput-object v0, v2, v4

    const-string v0, "type"

    aput-object v0, v2, v5

    const/4 v0, 0x3

    const-string v1, "part"

    aput-object v1, v2, v0

    const-string v0, "node"

    aput-object v0, v2, v6

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 237
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "writes"

    const-string v7, "id, part"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 239
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 241
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 243
    new-instance v4, Lcom/firebase/client/core/Path;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 259
    :goto_1
    iget-object v5, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->jsonMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 261
    const-string v5, "o"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 262
    invoke-static {v0}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 263
    new-instance v1, Lcom/firebase/client/core/UserWriteRecord;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/firebase/client/core/UserWriteRecord;-><init>(JLcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V

    .line 271
    :goto_2
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load writes"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 251
    :cond_0
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    :cond_1
    const/4 v5, 0x4

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v5, v12, v2

    if-eqz v5, :cond_1

    .line 256
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 257
    invoke-direct {p0, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->joinBytes(Ljava/util/List;)[B

    move-result-object v0

    goto :goto_1

    .line 264
    :cond_3
    const-string v5, "m"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 266
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/firebase/client/core/CompoundWrite;->fromValue(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 267
    new-instance v1, Lcom/firebase/client/core/UserWriteRecord;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/firebase/client/core/UserWriteRecord;-><init>(JLcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    goto :goto_2

    .line 269
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got invalid write type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 274
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Loaded %d writes in %dms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v10
.end method

.method public mergeIntoServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 346
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 350
    invoke-virtual {p2}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    move v4, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 351
    const-string v8, "serverCache"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Path;

    invoke-virtual {p1, v1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-direct {p0, v8, v1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/firebase/client/core/Path;)I

    move-result v1

    add-int/2addr v2, v1

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Path;

    invoke-virtual {p1, v1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-direct {p0, v1, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    .line 353
    goto :goto_0

    .line 354
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 355
    iget-object v5, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v5}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v6, "Persisted a total of %d rows and deleted %d rows for a merge at %s in %dms"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 356
    :cond_1
    return-void
.end method

.method public mergeIntoServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 322
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V

    .line 323
    return-void
.end method

.method public overwriteServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V

    .line 317
    return-void
.end method

.method public pruneCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/persistence/PruneForest;)V
    .locals 10

    .prologue
    .line 518
    invoke-virtual {p2}, Lcom/firebase/client/core/persistence/PruneForest;->prunesAnything()Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 522
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rowid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "path"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->loadNestedQuery(Lcom/firebase/client/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 523
    new-instance v3, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 524
    new-instance v4, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 525
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 526
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 527
    new-instance v1, Lcom/firebase/client/core/Path;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1, v1}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 529
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We are pruning at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but we have data stored higher up at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ". Ignoring."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 531
    :cond_2
    invoke-static {p1, v1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 532
    invoke-virtual {p2, v2}, Lcom/firebase/client/core/persistence/PruneForest;->shouldPruneUnkeptDescendants(Lcom/firebase/client/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 533
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v3

    goto :goto_1

    .line 534
    :cond_3
    invoke-virtual {p2, v2}, Lcom/firebase/client/core/persistence/PruneForest;->shouldKeep(Lcom/firebase/client/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 535
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v4

    goto :goto_1

    .line 541
    :cond_4
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We are pruning at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and have data at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " that isn\'t marked for pruning or keeping. Ignoring."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 546
    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 547
    invoke-virtual {v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 548
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 549
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/persistence/PruneForest;Ljava/util/List;)V

    .line 551
    invoke-virtual {v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->values()Ljava/util/Collection;

    move-result-object v2

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rowid IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "serverCache"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 555
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/utilities/Pair;

    .line 556
    invoke-virtual {v0}, Lcom/firebase/client/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Path;

    invoke-virtual {p1, v1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0}, Lcom/firebase/client/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-direct {p0, v1, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveNested(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)I

    goto :goto_2

    .line 559
    :cond_6
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    .line 560
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 562
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    .line 563
    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v4}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v5, "Pruned %d rows with %d nodes resaved in %dms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public purgeCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 617
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "serverCache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "writes"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedQueries"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedKeys"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 621
    return-void
.end method

.method public removeAllUserWrites()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 607
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 609
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "writes"

    invoke-virtual {v2, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 611
    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v3}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v4, "Deleted %d (all) write(s) in %dms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 612
    :cond_0
    return-void
.end method

.method public removeUserWrite(J)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 226
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 228
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "writes"

    const-string v4, "id = ?"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 230
    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v3}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v4, "Deleted %d write(s) with writeId %d in %dms"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method public resetPreviouslyActiveTrackedQueries(J)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 437
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 440
    const-string v3, "active = 1"

    .line 442
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 443
    const-string v0, "active"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 444
    const-string v0, "lastUse"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trackedQueries"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 448
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Reset active tracked queries in %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 449
    :cond_0
    return-void
.end method

.method public saveTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V
    .locals 7

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 377
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 378
    const-string v3, "id"

    iget-wide v4, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    const-string v3, "path"

    iget-object v4, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v4}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/firebase/client/core/Path;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v3, "queryParams"

    iget-object v4, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v4}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/QueryParams;->toJSON()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v3, "lastUse"

    iget-wide v4, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    const-string v3, "complete"

    iget-boolean v4, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 383
    const-string v3, "active"

    iget-boolean v4, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 384
    iget-object v3, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "trackedQueries"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 386
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Saved new tracked query in %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method

.method public saveTrackedQueryKeys(JLjava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 453
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 456
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 457
    const-string v1, "id = ?"

    .line 458
    iget-object v4, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "trackedKeys"

    new-array v6, v9, [Ljava/lang/String;

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 460
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 461
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 462
    const-string v5, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 463
    const-string v5, "key"

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "trackedKeys"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 467
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 468
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Set %d tracked query keys for tracked query %d in %dms"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 469
    :cond_1
    return-void
.end method

.method public saveUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;J)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 216
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 218
    invoke-virtual {p2, v8}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    .line 219
    const-string v4, "m"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveWrite(Lcom/firebase/client/core/Path;JLjava/lang/String;[B)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 221
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Persisted user merge in %dms"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method public saveUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;J)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 206
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 208
    invoke-interface {p2, v8}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    .line 209
    const-string v4, "o"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->saveWrite(Lcom/firebase/client/core/Path;JLjava/lang/String;[B)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 211
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Persisted user overwrite in %dms"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method public serverCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->loadNested(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public serverCacheEstimatedSizeInBytes()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    const-string v0, "SELECT sum(length(%s) + length(%s)) FROM %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "value"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "path"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "serverCache"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 363
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 369
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide v2

    .line 366
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t read database result!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 640
    return-void
.end method

.method public updateTrackedQueryKeys(JLjava/util/Set;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 475
    const-string v1, "id = ? AND key = ?"

    .line 476
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 477
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 478
    iget-object v6, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "trackedKeys"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 481
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 482
    const-string v5, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 483
    const-string v5, "key"

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "trackedKeys"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1

    .line 486
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 487
    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/firebase/client/android/SqlPersistenceStorageEngine;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v3, "Updated tracked query keys (%d added, %d removed) for tracked query id %d in %dms"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 488
    :cond_2
    return-void
.end method
