.class public Lcom/firebase/tubesock/WebSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final OPCODE_BINARY:B = 0x2t

.field static final OPCODE_CLOSE:B = 0x8t

.field static final OPCODE_NONE:B = 0x0t

.field static final OPCODE_PING:B = 0x9t

.field static final OPCODE_PONG:B = 0xat

.field static final OPCODE_TEXT:B = 0x1t

.field private static final THREAD_BASE_NAME:Ljava/lang/String; = "TubeSock"

.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static final clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static intializer:Lcom/firebase/tubesock/ThreadInitializer;

.field private static threadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final clientId:I

.field private eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

.field private final handshake:Lcom/firebase/tubesock/WebSocketHandshake;

.field private final innerThread:Ljava/lang/Thread;

.field private final receiver:Lcom/firebase/tubesock/WebSocketReceiver;

.field private volatile socket:Ljava/net/Socket;

.field private volatile state:Lcom/firebase/tubesock/WebSocket$State;

.field private final url:Ljava/net/URI;

.field private final writer:Lcom/firebase/tubesock/WebSocketWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/firebase/tubesock/WebSocket;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/firebase/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/firebase/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 59
    new-instance v0, Lcom/firebase/tubesock/WebSocket$1;

    invoke-direct {v0}, Lcom/firebase/tubesock/WebSocket$1;-><init>()V

    sput-object v0, Lcom/firebase/tubesock/WebSocket;->intializer:Lcom/firebase/tubesock/ThreadInitializer;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/firebase/tubesock/WebSocket;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/tubesock/WebSocket;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/firebase/tubesock/WebSocket$State;->NONE:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    .line 46
    iput-object v1, p0, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 48
    iput-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    .line 55
    sget-object v0, Lcom/firebase/tubesock/WebSocket;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/firebase/tubesock/WebSocket;->clientId:I

    .line 105
    invoke-static {}, Lcom/firebase/tubesock/WebSocket;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/firebase/tubesock/WebSocket$2;

    invoke-direct {v1, p0}, Lcom/firebase/tubesock/WebSocket$2;-><init>(Lcom/firebase/tubesock/WebSocket;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->innerThread:Ljava/lang/Thread;

    .line 111
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    .line 112
    new-instance v0, Lcom/firebase/tubesock/WebSocketHandshake;

    invoke-direct {v0, p1, p2, p3}, Lcom/firebase/tubesock/WebSocketHandshake;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    .line 113
    new-instance v0, Lcom/firebase/tubesock/WebSocketReceiver;

    invoke-direct {v0, p0}, Lcom/firebase/tubesock/WebSocketReceiver;-><init>(Lcom/firebase/tubesock/WebSocket;)V

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    .line 114
    new-instance v0, Lcom/firebase/tubesock/WebSocketWriter;

    const-string v1, "TubeSock"

    iget v2, p0, Lcom/firebase/tubesock/WebSocket;->clientId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/firebase/tubesock/WebSocketWriter;-><init>(Lcom/firebase/tubesock/WebSocket;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/tubesock/WebSocket;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->runReader()V

    return-void
.end method

.method private declared-synchronized closeSocket()V
    .locals 2

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 231
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketReceiver;->stopit()V

    .line 220
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketWriter;->stopIt()V

    .line 221
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 223
    :try_start_2
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :cond_1
    :try_start_3
    sget-object v0, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    .line 230
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v0}, Lcom/firebase/tubesock/WebSocketEventHandler;->onClose()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createSocket()Ljava/net/Socket;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 246
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 247
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 248
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    .line 252
    if-eqz v2, :cond_1

    const-string v4, "ws"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    if-ne v1, v5, :cond_0

    .line 254
    const/16 v1, 0x50

    .line 257
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v3, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    :goto_0
    return-object v2

    .line 258
    :catch_0
    move-exception v1

    .line 259
    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 260
    :catch_1
    move-exception v1

    .line 261
    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while creating socket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 263
    :cond_1
    if-eqz v2, :cond_3

    const-string v4, "wss"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 264
    if-ne v1, v5, :cond_2

    .line 265
    const/16 v1, 0x1bb

    .line 268
    :cond_2
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    .line 269
    invoke-virtual {v2, v3, v1}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    .line 271
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v1, v0

    invoke-direct {p0, v1, v3}, Lcom/firebase/tubesock/WebSocket;->verifyHost(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 272
    :catch_2
    move-exception v1

    .line 273
    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 274
    :catch_3
    move-exception v1

    .line 275
    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while creating secure socket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 278
    :cond_3
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getIntializer()Lcom/firebase/tubesock/ThreadInitializer;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/firebase/tubesock/WebSocket;->intializer:Lcom/firebase/tubesock/ThreadInitializer;

    return-object v0
.end method

.method static getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/firebase/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method private runReader()V
    .locals 12

    .prologue
    const/16 v11, 0x3e8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 306
    :try_start_0
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 307
    monitor-enter p0
    :try_end_0
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :try_start_1
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 309
    iget-object v2, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    sget-object v3, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_0

    .line 312
    :try_start_2
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 317
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    .line 382
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 373
    :catch_1
    move-exception v0

    .line 374
    :try_start_6
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v1, v0}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 379
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    goto :goto_0

    .line 319
    :cond_0
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 321
    :try_start_8
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 322
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 324
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketHandshake;->getHandshake()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 327
    const/16 v7, 0x3e8

    .line 328
    new-array v2, v7, [B

    .line 330
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v3, v1

    .line 332
    :cond_1
    :goto_1
    if-nez v3, :cond_5

    .line 333
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 334
    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 335
    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    const-string v1, "Connection closed before handshake was complete"

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 375
    :catch_2
    move-exception v0

    .line 376
    :try_start_9
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while connecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 379
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    goto :goto_0

    .line 337
    :cond_2
    int-to-byte v9, v9

    :try_start_a
    aput-byte v9, v2, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    .line 340
    add-int/lit8 v9, v0, -0x1

    aget-byte v9, v2, v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    add-int/lit8 v9, v0, -0x2

    aget-byte v9, v2, v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_4

    .line 341
    new-instance v0, Ljava/lang/String;

    sget-object v9, Lcom/firebase/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 342
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 348
    :goto_2
    new-array v0, v7, [B

    move v3, v2

    move-object v2, v0

    move v0, v1

    .line 350
    goto :goto_1

    .line 345
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_2

    .line 350
    :cond_4
    if-ne v0, v11, :cond_1

    .line 352
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/firebase/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 353
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected long line in handshake: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 379
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    throw v0

    .line 357
    :cond_5
    :try_start_b
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/firebase/tubesock/WebSocketHandshake;->verifyServerStatusLine(Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 361
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    const-string v3, ": "

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 363
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 365
    :cond_6
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    invoke-virtual {v0, v1}, Lcom/firebase/tubesock/WebSocketHandshake;->verifyServerHandshakeHeaders(Ljava/util/HashMap;)V

    .line 367
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v0, v6}, Lcom/firebase/tubesock/WebSocketWriter;->setOutput(Ljava/io/OutputStream;)V

    .line 368
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    invoke-virtual {v0, v5}, Lcom/firebase/tubesock/WebSocketReceiver;->setInput(Ljava/io/DataInputStream;)V

    .line 369
    sget-object v0, Lcom/firebase/tubesock/WebSocket$State;->CONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    .line 370
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 371
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v0}, Lcom/firebase/tubesock/WebSocketEventHandler;->onOpen()V

    .line 372
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketReceiver;->run()V
    :try_end_b
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 379
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    goto/16 :goto_0
.end method

.method private declared-synchronized send(B[B)V
    .locals 4

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->CONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    if-eq v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    const-string v2, "error while sending data: not connected"

    invoke-direct {v1, v2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/firebase/tubesock/WebSocketWriter;->send(BZ[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_2
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    const-string v3, "Failed to send frame"

    invoke-direct {v2, v3, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 173
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendCloseHandshake()V
    .locals 4

    .prologue
    .line 235
    :try_start_0
    sget-object v0, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTING:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    .line 238
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketWriter;->stopIt()V

    .line 239
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v0, v1, v2, v3}, Lcom/firebase/tubesock/WebSocketWriter;->send(BZ[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    const-string v3, "Failed to send close frame"

    invoke-direct {v2, v3, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    goto :goto_0
.end method

.method public static setThreadFactory(Ljava/util/concurrent/ThreadFactory;Lcom/firebase/tubesock/ThreadInitializer;)V
    .locals 0

    .prologue
    .line 75
    sput-object p0, Lcom/firebase/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 76
    sput-object p1, Lcom/firebase/tubesock/WebSocket;->intializer:Lcom/firebase/tubesock/ThreadInitializer;

    .line 77
    return-void
.end method

.method private verifyHost(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 286
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 287
    new-instance v1, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v1}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 288
    invoke-virtual {v1, p2, v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 289
    return-void
.end method


# virtual methods
.method public blockClose()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 302
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/firebase/tubesock/WebSocket$3;->$SwitchMap$com$firebase$tubesock$WebSocket$State:[I

    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    invoke-virtual {v1}, Lcom/firebase/tubesock/WebSocket$State;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 193
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->closeSocket()V

    goto :goto_0

    .line 202
    :pswitch_3
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->sendCloseHandshake()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized connect()V
    .locals 4

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->NONE:Lcom/firebase/tubesock/WebSocket$State;

    if-eq v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    const-string v2, "connect() already called"

    invoke-direct {v1, v2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 136
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/firebase/tubesock/WebSocket;->getIntializer()Lcom/firebase/tubesock/ThreadInitializer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TubeSockReader-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/firebase/tubesock/WebSocket;->clientId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/firebase/tubesock/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/firebase/tubesock/WebSocket$State;->CONNECTING:Lcom/firebase/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    .line 141
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getEventHandler()Lcom/firebase/tubesock/WebSocketEventHandler;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    return-object v0
.end method

.method getInnerThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->innerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method handleReceiverError(Lcom/firebase/tubesock/WebSocketException;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v0, p1}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 180
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->state:Lcom/firebase/tubesock/WebSocket$State;

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->CONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->closeSocket()V

    .line 184
    return-void
.end method

.method onCloseOpReceived()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->closeSocket()V

    .line 213
    return-void
.end method

.method declared-synchronized pong([B)V
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/firebase/tubesock/WebSocket;->send(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized send(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/firebase/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/firebase/tubesock/WebSocket;->send(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized send([B)V
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/firebase/tubesock/WebSocket;->send(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEventHandler(Lcom/firebase/tubesock/WebSocketEventHandler;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    .line 123
    return-void
.end method
