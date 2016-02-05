.class Lcom/firebase/tubesock/WebSocketWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channel:Ljava/nio/channels/WritableByteChannel;

.field private closeSent:Z

.field private final innerThread:Ljava/lang/Thread;

.field private pendingBuffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private volatile stop:Z

.field private websocket:Lcom/firebase/tubesock/WebSocket;


# direct methods
.method constructor <init>(Lcom/firebase/tubesock/WebSocket;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketWriter;->random:Ljava/util/Random;

    .line 26
    iput-boolean v1, p0, Lcom/firebase/tubesock/WebSocketWriter;->stop:Z

    .line 27
    iput-boolean v1, p0, Lcom/firebase/tubesock/WebSocketWriter;->closeSent:Z

    .line 33
    invoke-static {}, Lcom/firebase/tubesock/WebSocket;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/firebase/tubesock/WebSocketWriter$1;

    invoke-direct {v1, p0}, Lcom/firebase/tubesock/WebSocketWriter$1;-><init>(Lcom/firebase/tubesock/WebSocketWriter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketWriter;->innerThread:Ljava/lang/Thread;

    .line 40
    invoke-static {}, Lcom/firebase/tubesock/WebSocket;->getIntializer()Lcom/firebase/tubesock/ThreadInitializer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Writer-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/firebase/tubesock/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocketWriter;->websocket:Lcom/firebase/tubesock/WebSocket;

    .line 42
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/tubesock/WebSocketWriter;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocketWriter;->runWriter()V

    return-void
.end method

.method private frameInBuffer(BZ[B)Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    const v5, 0xffff

    const/4 v3, 0x0

    const/16 v2, 0x7e

    .line 50
    const/4 v0, 0x2

    .line 51
    if-eqz p2, :cond_0

    .line 52
    const/4 v0, 0x6

    .line 54
    :cond_0
    array-length v1, p3

    .line 55
    if-ge v1, v2, :cond_1

    .line 62
    :goto_0
    array-length v4, p3

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 64
    const/16 v0, -0x80

    .line 65
    or-int/2addr v0, p1

    int-to-byte v0, v0

    .line 66
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 70
    if-ge v1, v2, :cond_3

    .line 71
    if-eqz p2, :cond_8

    .line 72
    or-int/lit16 v0, v1, 0x80

    .line 74
    :goto_1
    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    :goto_2
    if-eqz p2, :cond_6

    .line 96
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocketWriter;->generateMask()[B

    move-result-object v1

    .line 97
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move v0, v3

    .line 99
    :goto_3
    array-length v2, p3

    if-ge v0, v2, :cond_6

    .line 100
    aget-byte v2, p3, v0

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, v1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 57
    :cond_1
    if-gt v1, v5, :cond_2

    .line 58
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 60
    :cond_2
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 75
    :cond_3
    if-gt v1, v5, :cond_4

    .line 77
    if-eqz p2, :cond_7

    .line 78
    const/16 v0, 0xfe

    .line 80
    :goto_4
    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 82
    int-to-short v0, v1

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 84
    :cond_4
    const/16 v0, 0x7f

    .line 85
    if-eqz p2, :cond_5

    .line 86
    const/16 v0, 0xff

    .line 88
    :cond_5
    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 104
    :cond_6
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 105
    return-object v4

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method private generateMask()[B
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 110
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketWriter;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 111
    return-object v0
.end method

.method private handleError(Lcom/firebase/tubesock/WebSocketException;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketWriter;->websocket:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/firebase/tubesock/WebSocket;->handleReceiverError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 136
    return-void
.end method

.method private runWriter()V
    .locals 3

    .prologue
    .line 140
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/firebase/tubesock/WebSocketWriter;->stop:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocketWriter;->writeMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    const-string v2, "IO Exception"

    invoke-direct {v1, v2, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/firebase/tubesock/WebSocketWriter;->handleError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 153
    :cond_0
    :goto_1
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocketWriter;->writeMessage()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 149
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private writeMessage()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 127
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 128
    return-void
.end method


# virtual methods
.method getInnerThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketWriter;->innerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method declared-synchronized send(BZ[B)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/tubesock/WebSocketWriter;->frameInBuffer(BZ[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    iget-boolean v1, p0, Lcom/firebase/tubesock/WebSocketWriter;->stop:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/firebase/tubesock/WebSocketWriter;->closeSent:Z

    if-nez v1, :cond_0

    if-eq p1, v2, :cond_1

    .line 117
    :cond_0
    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    const-string v1, "Shouldn\'t be sending"

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_1
    if-ne p1, v2, :cond_2

    .line 120
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/firebase/tubesock/WebSocketWriter;->closeSent:Z

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit p0

    return-void
.end method

.method setOutput(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    .line 47
    return-void
.end method

.method stopIt()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/tubesock/WebSocketWriter;->stop:Z

    .line 132
    return-void
.end method
