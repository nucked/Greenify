.class public Lcom/firebase/client/core/PersistentConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/realtime/Connection$Delegate;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final RECONNECT_MAX_DELAY:J = 0x7530L

.field private static final RECONNECT_MIN_DELAY:J = 0x3e8L

.field private static final RECONNECT_MULTIPLIER:D = 1.3

.field private static final RECONNECT_RESET_TIMEOUT:J = 0x7530L

.field private static final REQUEST_ACTION:Ljava/lang/String; = "a"

.field private static final REQUEST_ACTION_AUTH:Ljava/lang/String; = "auth"

.field private static final REQUEST_ACTION_LISTEN:Ljava/lang/String; = "l"

.field private static final REQUEST_ACTION_MERGE:Ljava/lang/String; = "m"

.field private static final REQUEST_ACTION_ONDISCONNECT_CANCEL:Ljava/lang/String; = "oc"

.field private static final REQUEST_ACTION_ONDISCONNECT_MERGE:Ljava/lang/String; = "om"

.field private static final REQUEST_ACTION_ONDISCONNECT_PUT:Ljava/lang/String; = "o"

.field private static final REQUEST_ACTION_PUT:Ljava/lang/String; = "p"

.field private static final REQUEST_ACTION_QUERY:Ljava/lang/String; = "q"

.field private static final REQUEST_ACTION_QUERY_UNLISTEN:Ljava/lang/String; = "n"

.field private static final REQUEST_ACTION_STATS:Ljava/lang/String; = "s"

.field private static final REQUEST_ACTION_UNAUTH:Ljava/lang/String; = "unauth"

.field private static final REQUEST_ACTION_UNLISTEN:Ljava/lang/String; = "u"

.field private static final REQUEST_COMPOUND_HASH:Ljava/lang/String; = "ch"

.field private static final REQUEST_COMPOUND_HASH_HASHES:Ljava/lang/String; = "hs"

.field private static final REQUEST_COMPOUND_HASH_PATHS:Ljava/lang/String; = "ps"

.field private static final REQUEST_COUNTERS:Ljava/lang/String; = "c"

.field private static final REQUEST_CREDENTIAL:Ljava/lang/String; = "cred"

.field private static final REQUEST_DATA_HASH:Ljava/lang/String; = "h"

.field private static final REQUEST_DATA_PAYLOAD:Ljava/lang/String; = "d"

.field private static final REQUEST_ERROR:Ljava/lang/String; = "error"

.field private static final REQUEST_NUMBER:Ljava/lang/String; = "r"

.field private static final REQUEST_PATH:Ljava/lang/String; = "p"

.field private static final REQUEST_PAYLOAD:Ljava/lang/String; = "b"

.field private static final REQUEST_QUERIES:Ljava/lang/String; = "q"

.field private static final REQUEST_STATUS:Ljava/lang/String; = "s"

.field private static final REQUEST_TAG:Ljava/lang/String; = "t"

.field private static final RESPONSE_FOR_REQUEST:Ljava/lang/String; = "b"

.field private static final SERVER_ASYNC_ACTION:Ljava/lang/String; = "a"

.field private static final SERVER_ASYNC_AUTH_REVOKED:Ljava/lang/String; = "ac"

.field private static final SERVER_ASYNC_DATA_MERGE:Ljava/lang/String; = "m"

.field private static final SERVER_ASYNC_DATA_RANGE_MERGE:Ljava/lang/String; = "rm"

.field private static final SERVER_ASYNC_DATA_UPDATE:Ljava/lang/String; = "d"

.field private static final SERVER_ASYNC_LISTEN_CANCELLED:Ljava/lang/String; = "c"

.field private static final SERVER_ASYNC_PAYLOAD:Ljava/lang/String; = "b"

.field private static final SERVER_ASYNC_SECURITY_DEBUG:Ljava/lang/String; = "sd"

.field private static final SERVER_DATA_END_PATH:Ljava/lang/String; = "e"

.field private static final SERVER_DATA_RANGE_MERGE:Ljava/lang/String; = "m"

.field private static final SERVER_DATA_START_PATH:Ljava/lang/String; = "s"

.field private static final SERVER_DATA_TAG:Ljava/lang/String; = "t"

.field private static final SERVER_DATA_UPDATE_BODY:Ljava/lang/String; = "d"

.field private static final SERVER_DATA_UPDATE_PATH:Ljava/lang/String; = "p"

.field private static final SERVER_DATA_WARNINGS:Ljava/lang/String; = "w"

.field private static final SERVER_RESPONSE_DATA:Ljava/lang/String; = "d"

.field private static connectionIds:J


# instance fields
.field private authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

.field private connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

.field private ctx:Lcom/firebase/client/core/Context;

.field private delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

.field private firstConnection:Z

.field private lastConnectionAttemptTime:J

.field private lastConnectionEstablishedTime:J

.field private lastSessionId:Ljava/lang/String;

.field private listens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/view/QuerySpec;",
            "Lcom/firebase/client/core/PersistentConnection$OutstandingListen;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lcom/firebase/client/utilities/LogWrapper;

.field private onDisconnectRequestQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingPuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/firebase/client/core/PersistentConnection$OutstandingPut;",
            ">;"
        }
    .end annotation
.end field

.field private random:Ljava/util/Random;

.field private realtime:Lcom/firebase/client/realtime/Connection;

.field private reconnectDelay:J

.field private reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

.field private repoInfo:Lcom/firebase/client/core/RepoInfo;

.field private requestCBHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/firebase/client/core/PersistentConnection$ResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private requestCounter:J

.field private shouldReconnect:Z

.field private writeCounter:J

.field private writesPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/PersistentConnection;->$assertionsDisabled:Z

    .line 254
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/firebase/client/core/PersistentConnection;->connectionIds:J

    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/PersistentConnection$Delegate;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    .line 259
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->firstConnection:Z

    .line 263
    sget-object v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Disconnected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    .line 264
    iput-wide v2, p0, Lcom/firebase/client/core/PersistentConnection;->writeCounter:J

    .line 265
    iput-wide v2, p0, Lcom/firebase/client/core/PersistentConnection;->requestCounter:J

    .line 266
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectDelay:J

    .line 282
    iput-object p3, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    .line 283
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->ctx:Lcom/firebase/client/core/Context;

    .line 284
    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->requestCBHash:Ljava/util/Map;

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->writesPaused:Z

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    .line 290
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->random:Ljava/util/Random;

    .line 291
    sget-wide v0, Lcom/firebase/client/core/PersistentConnection;->connectionIds:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/firebase/client/core/PersistentConnection;->connectionIds:J

    .line 292
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->ctx:Lcom/firebase/client/core/Context;

    const-string v3, "PersistentConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pc_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->lastSessionId:Ljava/lang/String;

    .line 294
    return-void
.end method

.method static synthetic access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/firebase/client/core/PersistentConnection;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/firebase/client/core/PersistentConnection;Ljava/util/List;Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/PersistentConnection;->warnOnListenerWarnings(Ljava/util/List;Lcom/firebase/client/core/view/QuerySpec;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/firebase/client/core/PersistentConnection;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/PersistentConnection$OutstandingListen;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/firebase/client/core/PersistentConnection;->removeListen(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$ConnectionState;)Lcom/firebase/client/core/PersistentConnection$ConnectionState;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/core/PersistentConnection$AuthCredential;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    return-object v0
.end method

.method static synthetic access$702(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$AuthCredential;)Lcom/firebase/client/core/PersistentConnection$AuthCredential;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    return-object p1
.end method

.method static synthetic access$800(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/core/PersistentConnection$Delegate;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    return-object v0
.end method

.method static synthetic access$900(Lcom/firebase/client/core/PersistentConnection;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->restoreWrites()V

    return-void
.end method

.method private canSendWrites()Z
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    sget-object v1, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Connected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->writesPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTransactions()V
    .locals 4

    .prologue
    .line 587
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 588
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 590
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    .line 591
    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->getRequest()Ljava/util/Map;

    move-result-object v2

    const-string v3, "h"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v0

    const-string v2, "disconnected"

    invoke-static {v2}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    .line 593
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 596
    :cond_1
    return-void
.end method

.method private connected()Z
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    sget-object v1, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Disconnected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPutObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 816
    const-string v1, "p"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v1, "d"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    if-eqz p3, :cond_0

    .line 819
    const-string v1, "h"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    :cond_0
    return-object v0
.end method

.method private handleTimestamp(J)V
    .locals 5

    .prologue
    .line 807
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "handling timestamp"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 808
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 809
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 810
    sget-object v3, Lcom/firebase/client/core/Constants;->DOT_INFO_SERVERTIME_OFFSET:Lcom/firebase/client/snapshot/ChildKey;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    invoke-interface {v0, v2}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onServerInfoUpdate(Ljava/util/Map;)V

    .line 812
    return-void
.end method

.method private nextRequestNumber()J
    .locals 4

    .prologue
    .line 979
    iget-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->requestCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/firebase/client/core/PersistentConnection;->requestCounter:J

    return-wide v0
.end method

.method private onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    if-eqz v0, :cond_0

    .line 705
    invoke-static {p1, p2}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onRevoked(Lcom/firebase/client/FirebaseError;)V

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    .line 709
    :cond_0
    return-void
.end method

.method private onDataPush(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 642
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleServerMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 643
    :cond_0
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 644
    :cond_1
    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 646
    const-string v0, "p"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 647
    const-string v1, "d"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 648
    const-string v1, "t"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/firebase/client/utilities/Utilities;->longFromObject(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .line 649
    if-eqz v1, :cond_2

    new-instance v5, Lcom/firebase/client/core/Tag;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/firebase/client/core/Tag;-><init>(J)V

    .line 651
    :cond_2
    if-eqz v3, :cond_4

    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_4

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 652
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring empty merge for path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 688
    :cond_3
    :goto_0
    return-void

    .line 654
    :cond_4
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onDataUpdate(Ljava/lang/String;Ljava/lang/Object;ZLcom/firebase/client/core/Tag;)V

    goto :goto_0

    .line 656
    :cond_5
    const-string v0, "rm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 657
    const-string v0, "p"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    const-string v1, "d"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 659
    const-string v2, "t"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/client/utilities/Utilities;->longFromObject(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    .line 660
    if-eqz v3, :cond_6

    new-instance v2, Lcom/firebase/client/core/Tag;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/firebase/client/core/Tag;-><init>(J)V

    move-object v4, v2

    .line 661
    :goto_1
    check-cast v1, Ljava/util/List;

    .line 662
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 663
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 664
    const-string v2, "s"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 665
    const-string v3, "e"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 666
    if-eqz v2, :cond_7

    new-instance v6, Lcom/firebase/client/core/Path;

    invoke-direct {v6, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 667
    :goto_3
    if-eqz v3, :cond_8

    new-instance v2, Lcom/firebase/client/core/Path;

    invoke-direct {v2, v3}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 668
    :goto_4
    const-string v3, "m"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 669
    new-instance v3, Lcom/firebase/client/core/RangeMerge;

    invoke-direct {v3, v6, v2, v1}, Lcom/firebase/client/core/RangeMerge;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v4, v5

    .line 660
    goto :goto_1

    :cond_7
    move-object v6, v5

    .line 666
    goto :goto_3

    :cond_8
    move-object v2, v5

    .line 667
    goto :goto_4

    .line 671
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 672
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring empty range merge for path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    :cond_a
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    new-instance v2, Lcom/firebase/client/core/Path;

    invoke-direct {v2, v0}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v7, v4}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onRangeMergeUpdate(Lcom/firebase/client/core/Path;Ljava/util/List;Lcom/firebase/client/core/Tag;)V

    goto/16 :goto_0

    .line 676
    :cond_b
    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 677
    const-string v0, "p"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 678
    new-instance v1, Lcom/firebase/client/core/Path;

    invoke-direct {v1, v0}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/firebase/client/core/PersistentConnection;->onListenRevoked(Lcom/firebase/client/core/Path;)V

    goto/16 :goto_0

    .line 679
    :cond_c
    const-string v0, "ac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 680
    const-string v0, "s"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 681
    const-string v1, "d"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 682
    invoke-direct {p0, v0, v1}, Lcom/firebase/client/core/PersistentConnection;->onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 683
    :cond_d
    const-string v0, "sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 684
    invoke-direct {p0, p2}, Lcom/firebase/client/core/PersistentConnection;->onSecurityDebugPacket(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 686
    :cond_e
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized action from server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onListenRevoked(Lcom/firebase/client/core/Path;)V
    .locals 3

    .prologue
    .line 693
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/PersistentConnection;->removeListens(Lcom/firebase/client/core/Path;)Ljava/util/Collection;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_0

    .line 696
    const-string v1, "permission_denied"

    invoke-static {v1}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v1

    .line 697
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .line 698
    # getter for: Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->resultListener:Lcom/firebase/client/core/PersistentConnection$RequestResultListener;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->access$500(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)Lcom/firebase/client/core/PersistentConnection$RequestResultListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/firebase/client/core/PersistentConnection$RequestResultListener;->onRequestResult(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0

    .line 701
    :cond_0
    return-void
.end method

.method private onSecurityDebugPacket(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v0, "msg"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/firebase/client/utilities/LogWrapper;->info(Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method private putInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 7

    .prologue
    .line 826
    invoke-direct {p0, p2, p3, p4}, Lcom/firebase/client/core/PersistentConnection;->getPutObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 829
    iget-wide v2, p0, Lcom/firebase/client/core/PersistentConnection;->writeCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/firebase/client/core/PersistentConnection;->writeCounter:J

    .line 831
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v0, p5, v6}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    invoke-direct {p0, v2, v3}, Lcom/firebase/client/core/PersistentConnection;->sendPut(J)V

    .line 835
    :cond_0
    return-void
.end method

.method private removeListen(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/PersistentConnection$OutstandingListen;
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to remove listener for QuerySpec "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but no listener exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 615
    :cond_1
    const/4 v0, 0x0

    .line 619
    :goto_0
    return-object v0

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .line 618
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private restoreState()V
    .locals 5

    .prologue
    .line 759
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "calling restore state"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    if-eqz v0, :cond_4

    .line 762
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Restoring auth."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 763
    :cond_1
    sget-object v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Authenticating:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    .line 764
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->sendAuthAndRestoreWrites()V

    .line 770
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Restoring outstanding listens"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .line 772
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring listen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 773
    :cond_3
    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->sendListen(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)V

    goto :goto_1

    .line 766
    :cond_4
    sget-object v0, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Connected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    goto :goto_0

    .line 776
    :cond_5
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    sget-object v1, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Connected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    if-ne v0, v1, :cond_6

    .line 778
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->restoreWrites()V

    .line 780
    :cond_6
    return-void
.end method

.method private restoreWrites()V
    .locals 5

    .prologue
    .line 783
    sget-boolean v0, Lcom/firebase/client/core/PersistentConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    sget-object v1, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Connected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should be connected if we\'re restoring writes."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 785
    :cond_0
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->writesPaused:Z

    if-eqz v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Writes are paused; skip restoring writes."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 804
    :cond_1
    :goto_0
    return-void

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Restoring writes."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 790
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 792
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 793
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 794
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/firebase/client/core/PersistentConnection;->sendPut(J)V

    goto :goto_1

    .line 798
    :cond_4
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;

    .line 799
    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v0

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/firebase/client/core/PersistentConnection;->sendOnDisconnect(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    goto :goto_2

    .line 802
    :cond_5
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/core/PersistentConnection$ResponseListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->nextRequestNumber()J

    move-result-wide v0

    .line 970
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 971
    const-string v3, "r"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string v3, "a"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string v3, "b"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    iget-object v3, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    invoke-virtual {v3, v2}, Lcom/firebase/client/realtime/Connection;->sendRequest(Ljava/util/Map;)V

    .line 975
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    return-void
.end method

.method private sendAuth()V
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->sendAuthHelper(Z)V

    .line 718
    return-void
.end method

.method private sendAuthAndRestoreWrites()V
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->sendAuthHelper(Z)V

    .line 722
    return-void
.end method

.method private sendAuthHelper(Z)V
    .locals 4

    .prologue
    .line 725
    sget-boolean v0, Lcom/firebase/client/core/PersistentConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must be connected to send auth."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 726
    :cond_0
    sget-boolean v0, Lcom/firebase/client/core/PersistentConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can\'t send auth if it\'s null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 728
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 729
    const-string v1, "cred"

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v2}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->getCredential()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    .line 731
    const-string v2, "auth"

    new-instance v3, Lcom/firebase/client/core/PersistentConnection$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/firebase/client/core/PersistentConnection$4;-><init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$AuthCredential;Z)V

    invoke-direct {p0, v2, v0, v3}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    .line 756
    return-void
.end method

.method private sendConnectStats()V
    .locals 6

    .prologue
    const/16 v5, 0x2e

    const/16 v4, 0x2d

    const/4 v3, 0x1

    .line 954
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 955
    invoke-static {}, Lcom/firebase/client/core/AndroidSupport;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 956
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v1}, Lcom/firebase/client/core/Context;->isPersistenceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    const-string v1, "persistence.android.enabled"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk.android."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/firebase/client/Firebase;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v2, "Sending first connection stats"

    invoke-virtual {v1, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 965
    :cond_1
    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->sendStats(Ljava/util/Map;)V

    .line 966
    return-void

    .line 961
    :cond_2
    sget-boolean v1, Lcom/firebase/client/core/PersistentConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v1}, Lcom/firebase/client/core/Context;->isPersistenceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Stats for persistence on JVM missing (persistence not yet supported)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 962
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk.java."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/firebase/client/Firebase;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendListen(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)V
    .locals 6

    .prologue
    .line 869
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 870
    const-string v0, "p"

    invoke-virtual {p1}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    invoke-virtual {p1}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getTag()Lcom/firebase/client/core/Tag;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_0

    .line 874
    const-string v2, "q"

    invoke-virtual {p1}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const-string v2, "t"

    invoke-virtual {v0}, Lcom/firebase/client/core/Tag;->getTagNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getHashFunction()Lcom/firebase/client/core/SyncTree$SyncTreeHash;

    move-result-object v0

    .line 879
    const-string v2, "h"

    invoke-interface {v0}, Lcom/firebase/client/core/SyncTree$SyncTreeHash;->getSimpleHash()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    invoke-interface {v0}, Lcom/firebase/client/core/SyncTree$SyncTreeHash;->shouldIncludeCompoundHash()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 882
    invoke-interface {v0}, Lcom/firebase/client/core/SyncTree$SyncTreeHash;->getCompoundHash()Lcom/firebase/client/core/CompoundHash;

    move-result-object v2

    .line 884
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 885
    invoke-virtual {v2}, Lcom/firebase/client/core/CompoundHash;->getPosts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Path;

    .line 886
    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->wireFormat()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 888
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 889
    const-string v4, "hs"

    invoke-virtual {v2}, Lcom/firebase/client/core/CompoundHash;->getHashes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string v2, "ps"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string v2, "ch"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_2
    const-string v0, "q"

    new-instance v2, Lcom/firebase/client/core/PersistentConnection$6;

    invoke-direct {v2, p0, p1}, Lcom/firebase/client/core/PersistentConnection$6;-><init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    .line 921
    return-void
.end method

.method private sendOnDisconnect(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 4

    .prologue
    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 567
    const-string v1, "p"

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v1, "d"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 570
    :cond_0
    new-instance v1, Lcom/firebase/client/core/PersistentConnection$3;

    invoke-direct {v1, p0, p4}, Lcom/firebase/client/core/PersistentConnection$3;-><init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    .line 584
    return-void
.end method

.method private sendPut(J)V
    .locals 9

    .prologue
    .line 838
    sget-boolean v0, Lcom/firebase/client/core/PersistentConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->canSendWrites()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "sendPut called when we can\'t send writes (we\'re disconnected or writes are paused)."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    .line 840
    invoke-virtual {v6}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v7

    .line 841
    invoke-virtual {v6}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 843
    invoke-virtual {v6}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->getRequest()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/core/PersistentConnection$5;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/firebase/client/core/PersistentConnection$5;-><init>(Lcom/firebase/client/core/PersistentConnection;Ljava/lang/String;JLcom/firebase/client/core/PersistentConnection$OutstandingPut;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-direct {p0, v3, v0, v1}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    .line 866
    return-void
.end method

.method private sendStats(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 924
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 925
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 926
    const-string v1, "c"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v1, "s"

    new-instance v2, Lcom/firebase/client/core/PersistentConnection$7;

    invoke-direct {v2, p0}, Lcom/firebase/client/core/PersistentConnection$7;-><init>(Lcom/firebase/client/core/PersistentConnection;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Not sending stats because stats are empty"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendUnlisten(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)V
    .locals 6

    .prologue
    .line 599
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 600
    const-string v1, "p"

    # getter for: Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->query:Lcom/firebase/client/core/view/QuerySpec;
    invoke-static {p1}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->access$400(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-virtual {p1}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getTag()Lcom/firebase/client/core/Tag;

    move-result-object v1

    .line 603
    if-eqz v1, :cond_0

    .line 604
    const-string v2, "q"

    invoke-virtual {p1}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v2, "t"

    invoke-virtual {v1}, Lcom/firebase/client/core/Tag;->getTagNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_0
    const-string v1, "n"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    .line 609
    return-void
.end method

.method private warnOnListenerWarnings(Ljava/util/List;Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/firebase/client/core/view/QuerySpec;",
            ")V"
        }
    .end annotation

    .prologue
    .line 946
    const-string v0, "no_index"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\".indexOn\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/Index;->getQueryDefinition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 948
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using an unspecified index. Consider adding \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to your security and Firebase rules for better performance"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    .line 951
    :cond_0
    return-void
.end method


# virtual methods
.method public auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    if-nez v0, :cond_3

    .line 509
    new-instance v0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-direct {v0, p2, p1}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;-><init>(Lcom/firebase/client/Firebase$AuthListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    .line 519
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->connected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authenticating with credential: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 521
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->sendAuth()V

    .line 523
    :cond_2
    return-void

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->addListener(Lcom/firebase/client/Firebase$AuthListener;)V

    .line 512
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->replay(Lcom/firebase/client/Firebase$AuthListener;)V

    goto :goto_0

    .line 516
    :cond_4
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->preempt()V

    .line 517
    new-instance v0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-direct {v0, p2, p1}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;-><init>(Lcom/firebase/client/Firebase$AuthListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    goto :goto_0
.end method

.method public establishConnection()V
    .locals 4

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionAttemptTime:J

    .line 299
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionEstablishedTime:J

    .line 300
    new-instance v0, Lcom/firebase/client/realtime/Connection;

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->ctx:Lcom/firebase/client/core/Context;

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    iget-object v3, p0, Lcom/firebase/client/core/PersistentConnection;->lastSessionId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/firebase/client/realtime/Connection;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/realtime/Connection$Delegate;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    .line 301
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    invoke-virtual {v0}, Lcom/firebase/client/realtime/Connection;->open()V

    .line 303
    :cond_0
    return-void
.end method

.method public getListens()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/view/QuerySpec;",
            "Lcom/firebase/client/core/PersistentConnection$OutstandingListen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    return-object v0
.end method

.method interrupt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 487
    iput-boolean v1, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    .line 488
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    invoke-virtual {v0}, Lcom/firebase/client/realtime/Connection;->close()V

    .line 490
    iput-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    .line 498
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 494
    iput-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 496
    :cond_1
    sget-object v0, Lcom/firebase/client/realtime/Connection$DisconnectReason;->OTHER:Lcom/firebase/client/realtime/Connection$DisconnectReason;

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->onDisconnect(Lcom/firebase/client/realtime/Connection$DisconnectReason;)V

    goto :goto_0
.end method

.method public listen(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/SyncTree$SyncTreeHash;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/PersistentConnection$RequestResultListener;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listening on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "listen() called for non-default but complete query"

    invoke-static {v0, v3}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    const-string v0, "listen() called twice for same QuerySpec."

    invoke-static {v2, v0}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding listen query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 329
    :cond_2
    new-instance v0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    const/4 v5, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;-><init>(Lcom/firebase/client/core/PersistentConnection$RequestResultListener;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/SyncTree$SyncTreeHash;Lcom/firebase/client/core/PersistentConnection$1;)V

    .line 330
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->connected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->sendListen(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)V

    .line 334
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 326
    goto :goto_0

    :cond_5
    move v2, v1

    .line 327
    goto :goto_1
.end method

.method public merge(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 6

    .prologue
    .line 352
    const-string v1, "m"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/PersistentConnection;->putInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 353
    return-void
.end method

.method public onDataMessage(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 376
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$ResponseListener;

    .line 377
    if-eqz v0, :cond_0

    .line 379
    const-string v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 381
    invoke-interface {v0, v1}, Lcom/firebase/client/core/PersistentConnection$ResponseListener;->onResponse(Ljava/util/Map;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    const-string v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 390
    invoke-direct {p0, v0, v1}, Lcom/firebase/client/core/PersistentConnection;->onDataPush(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDisconnect(Lcom/firebase/client/realtime/Connection$DisconnectReason;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    const-wide/16 v0, 0x0

    .line 398
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got on disconnect due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/firebase/client/realtime/Connection$DisconnectReason;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 399
    :cond_0
    sget-object v2, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Disconnected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    iput-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    .line 400
    iget-boolean v2, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    if-nez v2, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->cancelTransactions()V

    .line 403
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->requestCBHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 432
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    invoke-interface {v0}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onDisconnect()V

    .line 433
    return-void

    .line 406
    :cond_1
    sget-object v2, Lcom/firebase/client/realtime/Connection$DisconnectReason;->SERVER_RESET:Lcom/firebase/client/realtime/Connection$DisconnectReason;

    if-ne p1, v2, :cond_3

    .line 422
    :goto_1
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v2}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reconnecting in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 423
    :cond_2
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v2}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v2

    new-instance v3, Lcom/firebase/client/core/PersistentConnection$1;

    invoke-direct {v3, p0}, Lcom/firebase/client/core/PersistentConnection$1;-><init>(Lcom/firebase/client/core/PersistentConnection;)V

    invoke-interface {v2, v3, v0, v1}, Lcom/firebase/client/RunLoop;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 430
    iget-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectDelay:J

    long-to-double v0, v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectDelay:J

    goto :goto_0

    .line 409
    :cond_3
    iget-wide v2, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionEstablishedTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_5

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionEstablishedTime:J

    sub-long/2addr v2, v4

    .line 411
    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 412
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectDelay:J

    .line 414
    :cond_4
    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionEstablishedTime:J

    .line 416
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionAttemptTime:J

    sub-long/2addr v0, v2

    .line 418
    const-wide/16 v2, 0x1

    iget-wide v4, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectDelay:J

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 419
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->random:Ljava/util/Random;

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1
.end method

.method onDisconnectCancel(Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 478
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const-string v0, "oc"

    invoke-direct {p0, v0, p1, v3, p2}, Lcom/firebase/client/core/PersistentConnection;->sendOnDisconnect(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 484
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v6, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;

    const-string v1, "oc"

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;-><init>(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method onDisconnectMerge(Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "om"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/firebase/client/core/PersistentConnection;->sendOnDisconnect(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 475
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v6, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;

    const-string v1, "om"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;-><init>(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method onDisconnectPut(Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 7

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const-string v0, "o"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/firebase/client/core/PersistentConnection;->sendOnDisconnect(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 461
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v6, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;

    const-string v1, "o"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;-><init>(Ljava/lang/String;Lcom/firebase/client/core/Path;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onKill(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firebase connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 437
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    .line 438
    return-void
.end method

.method public onReady(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "onReady"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 308
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionEstablishedTime:J

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/PersistentConnection;->handleTimestamp(J)V

    .line 311
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->firstConnection:Z

    if-eqz v0, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->sendConnectStats()V

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->restoreState()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->firstConnection:Z

    .line 317
    iput-object p3, p0, Lcom/firebase/client/core/PersistentConnection;->lastSessionId:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    invoke-interface {v0}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onConnect()V

    .line 319
    return-void
.end method

.method public pauseWrites()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Writes paused."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 549
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->writesPaused:Z

    .line 550
    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 356
    const/16 v0, -0x19

    invoke-static {v0}, Lcom/firebase/client/FirebaseError;->fromCode(I)Lcom/firebase/client/FirebaseError;

    move-result-object v1

    .line 357
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    .line 358
    # getter for: Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->access$100(Lcom/firebase/client/core/PersistentConnection$OutstandingPut;)Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 359
    # getter for: Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->access$100(Lcom/firebase/client/core/PersistentConnection$OutstandingPut;)Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;

    .line 363
    # getter for: Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->access$200(Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;)Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 364
    # getter for: Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->access$200(Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;)Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    goto :goto_1

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 368
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 369
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/firebase/client/core/PersistentConnection;->put(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 345
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 6

    .prologue
    .line 348
    const-string v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/PersistentConnection;->putInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 349
    return-void
.end method

.method public removeListens(Lcom/firebase/client/core/Path;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/firebase/client/core/PersistentConnection$OutstandingListen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing all listens at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 625
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 626
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 627
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/QuerySpec;

    .line 628
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .line 629
    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 634
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .line 635
    iget-object v3, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 638
    :cond_3
    return-object v2
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    .line 502
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/firebase/client/core/PersistentConnection;->establishConnection()V

    .line 505
    :cond_0
    return-void
.end method

.method public unauth(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 3

    .prologue
    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    .line 527
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onAuthStatus(Z)V

    .line 529
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->connected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const-string v0, "unauth"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/firebase/client/core/PersistentConnection$2;

    invoke-direct {v2, p0, p1}, Lcom/firebase/client/core/PersistentConnection$2;-><init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    .line 545
    :cond_0
    return-void
.end method

.method unlisten(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlistening on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 443
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const-string v1, "unlisten() called for non-default but complete query"

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 444
    invoke-direct {p0, p1}, Lcom/firebase/client/core/PersistentConnection;->removeListen(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->connected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->sendUnlisten(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)V

    .line 448
    :cond_2
    return-void

    .line 443
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unpauseWrites()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Writes unpaused."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 554
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->writesPaused:Z

    .line 555
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->restoreWrites()V

    .line 558
    :cond_1
    return-void
.end method

.method public writesPaused()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->writesPaused:Z

    return v0
.end method
