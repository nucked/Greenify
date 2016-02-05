.class Lcom/firebase/tubesock/WebSocketHandshake;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final WEBSOCKET_VERSION:Ljava/lang/String; = "13"


# instance fields
.field private extraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nonce:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private url:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    .line 14
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketHandshake;->protocol:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketHandshake;->nonce:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketHandshake;->extraHeaders:Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    .line 21
    iput-object p2, p0, Lcom/firebase/tubesock/WebSocketHandshake;->protocol:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/firebase/tubesock/WebSocketHandshake;->extraHeaders:Ljava/util/Map;

    .line 23
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocketHandshake;->createNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketHandshake;->nonce:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private createNonce()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 76
    new-array v2, v4, [B

    move v0, v1

    .line 77
    :goto_0
    if-ge v0, v4, :cond_0

    .line 78
    const/16 v3, 0xff

    invoke-direct {p0, v1, v3}, Lcom/firebase/tubesock/WebSocketHandshake;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v2, v1}, Lcom/firebase/tubesock/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateHeader(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 69
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    return-object v1
.end method

.method private rand(II)I
    .locals 4

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p2

    mul-double/2addr v0, v2

    int-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 105
    return v0
.end method


# virtual methods
.method public getHandshake()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 27
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/firebase/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/firebase/tubesock/WebSocketHandshake;->url:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    const-string v3, "Host"

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "Upgrade"

    const-string v3, "websocket"

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "Connection"

    const-string v3, "Upgrade"

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "Sec-WebSocket-Version"

    const-string v3, "13"

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "Sec-WebSocket-Key"

    iget-object v3, p0, Lcom/firebase/tubesock/WebSocketHandshake;->nonce:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketHandshake;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "Sec-WebSocket-Protocol"

    iget-object v3, p0, Lcom/firebase/tubesock/WebSocketHandshake;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketHandshake;->extraHeaders:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 48
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketHandshake;->extraHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 52
    iget-object v4, p0, Lcom/firebase/tubesock/WebSocketHandshake;->extraHeaders:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 29
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 57
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/firebase/tubesock/WebSocketHandshake;->generateHeader(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [B

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    return-object v1
.end method

.method public verifyServerHandshakeHeaders(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "Upgrade"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    const-string v1, "connection failed: missing header field in server handshake: Upgrade"

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    const-string v1, "connection failed: missing header field in server handshake: Connection"

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    return-void
.end method

.method public verifyServerStatusLine(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 84
    const/16 v0, 0x9

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    const/16 v1, 0x197

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    const-string v1, "connection failed: proxy authentication not supported"

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 89
    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    const-string v1, "connection failed: 404 not found"

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    .line 91
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connection failed: unknown status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_2
    return-void
.end method
