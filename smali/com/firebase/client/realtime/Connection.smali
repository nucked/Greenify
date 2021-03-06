.class public Lcom/firebase/client/realtime/Connection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/realtime/WebsocketConnection$Delegate;


# static fields
.field private static final REQUEST_PAYLOAD:Ljava/lang/String; = "d"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "t"

.field private static final REQUEST_TYPE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_CONTROL_MESSAGE:Ljava/lang/String; = "c"

.field private static final SERVER_CONTROL_MESSAGE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_CONTROL_MESSAGE_HELLO:Ljava/lang/String; = "h"

.field private static final SERVER_CONTROL_MESSAGE_RESET:Ljava/lang/String; = "r"

.field private static final SERVER_CONTROL_MESSAGE_SHUTDOWN:Ljava/lang/String; = "s"

.field private static final SERVER_CONTROL_MESSAGE_TYPE:Ljava/lang/String; = "t"

.field private static final SERVER_DATA_MESSAGE:Ljava/lang/String; = "d"

.field private static final SERVER_ENVELOPE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_ENVELOPE_TYPE:Ljava/lang/String; = "t"

.field private static final SERVER_HELLO_HOST:Ljava/lang/String; = "h"

.field private static final SERVER_HELLO_SESSION_ID:Ljava/lang/String; = "s"

.field private static final SERVER_HELLO_TIMESTAMP:Ljava/lang/String; = "ts"

.field private static connectionIds:J


# instance fields
.field private conn:Lcom/firebase/client/realtime/WebsocketConnection;

.field private delegate:Lcom/firebase/client/realtime/Connection$Delegate;

.field private logger:Lcom/firebase/client/utilities/LogWrapper;

.field private repoInfo:Lcom/firebase/client/core/RepoInfo;

.field private state:Lcom/firebase/client/realtime/Connection$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/firebase/client/realtime/Connection;->connectionIds:J

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/realtime/Connection$Delegate;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-wide v0, Lcom/firebase/client/realtime/Connection;->connectionIds:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/firebase/client/realtime/Connection;->connectionIds:J

    .line 62
    iput-object p2, p0, Lcom/firebase/client/realtime/Connection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    .line 63
    iput-object p3, p0, Lcom/firebase/client/realtime/Connection;->delegate:Lcom/firebase/client/realtime/Connection$Delegate;

    .line 64
    const-string v2, "Connection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conn_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 65
    sget-object v0, Lcom/firebase/client/realtime/Connection$State;->REALTIME_CONNECTING:Lcom/firebase/client/realtime/Connection$State;

    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    .line 66
    new-instance v0, Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-direct {v0, p1, p2, p0, p4}, Lcom/firebase/client/realtime/WebsocketConnection;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/realtime/WebsocketConnection$Delegate;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    .line 67
    return-void
.end method

.method private onConnectionReady(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "realtime connection established"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 196
    :cond_0
    sget-object v0, Lcom/firebase/client/realtime/Connection$State;->REALTIME_CONNECTED:Lcom/firebase/client/realtime/Connection$State;

    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    .line 197
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->delegate:Lcom/firebase/client/realtime/Connection$Delegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/firebase/client/realtime/Connection$Delegate;->onReady(JLjava/lang/String;)V

    .line 198
    return-void
.end method

.method private onConnectionShutdown(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Connection shutdown command received. Shutting down..."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->delegate:Lcom/firebase/client/realtime/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/firebase/client/realtime/Connection$Delegate;->onKill(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V

    .line 180
    return-void
.end method

.method private onControlMessage(Ljava/util/Map;)V
    .locals 4
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
    .line 149
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got control message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 151
    :cond_0
    :try_start_0
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    if-eqz v0, :cond_6

    .line 153
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/Connection;->onConnectionShutdown(Ljava/lang/String;)V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/Connection;->onReset(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse control message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V

    goto :goto_0

    .line 159
    :cond_4
    :try_start_1
    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 162
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/Connection;->onHandshake(Ljava/util/Map;)V

    goto :goto_0

    .line 164
    :cond_5
    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unknown control message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got invalid control message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 168
    :cond_7
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private onDataMessage(Ljava/util/Map;)V
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
    .line 143
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received data message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->delegate:Lcom/firebase/client/realtime/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/firebase/client/realtime/Connection$Delegate;->onDataMessage(Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method private onHandshake(Ljava/util/Map;)V
    .locals 5
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
    .line 183
    const-string v0, "ts"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 184
    const-string v0, "h"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    iput-object v0, v1, Lcom/firebase/client/core/RepoInfo;->internalHost:Ljava/lang/String;

    .line 186
    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    sget-object v4, Lcom/firebase/client/realtime/Connection$State;->REALTIME_CONNECTING:Lcom/firebase/client/realtime/Connection$State;

    if-ne v1, v4, :cond_0

    .line 189
    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-virtual {v1}, Lcom/firebase/client/realtime/WebsocketConnection;->start()V

    .line 190
    invoke-direct {p0, v2, v3, v0}, Lcom/firebase/client/realtime/Connection;->onConnectionReady(JLjava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method private onReset(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a reset; killing connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/realtime/Connection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    iget-object v2, v2, Lcom/firebase/client/core/RepoInfo;->internalHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Updating internalHost to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    iput-object p1, v0, Lcom/firebase/client/core/RepoInfo;->internalHost:Ljava/lang/String;

    .line 205
    sget-object v0, Lcom/firebase/client/realtime/Connection$DisconnectReason;->SERVER_RESET:Lcom/firebase/client/realtime/Connection$DisconnectReason;

    invoke-virtual {p0, v0}, Lcom/firebase/client/realtime/Connection;->close(Lcom/firebase/client/realtime/Connection$DisconnectReason;)V

    .line 206
    return-void
.end method

.method private sendData(Ljava/util/Map;)V
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
    .line 209
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    sget-object v1, Lcom/firebase/client/realtime/Connection$State;->REALTIME_CONNECTED:Lcom/firebase/client/realtime/Connection$State;

    if-eq v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Tried to send on an unconnected connection"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-virtual {v0, p1}, Lcom/firebase/client/realtime/WebsocketConnection;->send(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/firebase/client/realtime/Connection$DisconnectReason;->OTHER:Lcom/firebase/client/realtime/Connection$DisconnectReason;

    invoke-virtual {p0, v0}, Lcom/firebase/client/realtime/Connection;->close(Lcom/firebase/client/realtime/Connection$DisconnectReason;)V

    .line 90
    return-void
.end method

.method public close(Lcom/firebase/client/realtime/Connection$DisconnectReason;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    sget-object v1, Lcom/firebase/client/realtime/Connection$State;->REALTIME_DISCONNECTED:Lcom/firebase/client/realtime/Connection$State;

    if-eq v0, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "closing realtime connection"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 77
    :cond_0
    sget-object v0, Lcom/firebase/client/realtime/Connection$State;->REALTIME_DISCONNECTED:Lcom/firebase/client/realtime/Connection$State;

    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    .line 79
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-virtual {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->close()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->delegate:Lcom/firebase/client/realtime/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/firebase/client/realtime/Connection$Delegate;->onDisconnect(Lcom/firebase/client/realtime/Connection$DisconnectReason;)V

    .line 86
    :cond_2
    return-void
.end method

.method public onDisconnect(Z)V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    .line 129
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    sget-object v1, Lcom/firebase/client/realtime/Connection$State;->REALTIME_CONNECTING:Lcom/firebase/client/realtime/Connection$State;

    if-ne v0, v1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Realtime connection failed"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    invoke-virtual {v0}, Lcom/firebase/client/core/RepoInfo;->isCacheableHost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V

    .line 140
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Realtime connection lost"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMessage(Ljava/util/Map;)V
    .locals 4
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
    .line 105
    :try_start_0
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    if-eqz v0, :cond_4

    .line 107
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 109
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/Connection;->onDataMessage(Ljava/util/Map;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 112
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/Connection;->onControlMessage(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse server message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V

    goto :goto_0

    .line 114
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unknown server message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse server message: missing message type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Opening a connection"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-virtual {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->open()V

    .line 72
    return-void
.end method

.method public sendRequest(Ljava/util/Map;)V
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
    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    const-string v1, "t"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "d"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/Connection;->sendData(Ljava/util/Map;)V

    .line 100
    return-void
.end method
