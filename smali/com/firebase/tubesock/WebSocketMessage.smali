.class public Lcom/firebase/tubesock/WebSocketMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private byteMessage:[B

.field private opcode:B

.field private stringMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocketMessage;->stringMessage:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/firebase/tubesock/WebSocketMessage;->opcode:B

    .line 16
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocketMessage;->byteMessage:[B

    .line 10
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/firebase/tubesock/WebSocketMessage;->opcode:B

    .line 11
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketMessage;->byteMessage:[B

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketMessage;->stringMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 2

    .prologue
    .line 23
    iget-byte v0, p0, Lcom/firebase/tubesock/WebSocketMessage;->opcode:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isText()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 19
    iget-byte v1, p0, Lcom/firebase/tubesock/WebSocketMessage;->opcode:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
