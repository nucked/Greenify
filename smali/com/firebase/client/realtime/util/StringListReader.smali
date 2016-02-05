.class public Lcom/firebase/client/realtime/util/StringListReader;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field private charPos:I

.field private closed:Z

.field private frozen:Z

.field private markedCharPos:I

.field private markedStringListPos:I

.field private stringListPos:I

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    .line 12
    iput-boolean v1, p0, Lcom/firebase/client/realtime/util/StringListReader;->closed:Z

    .line 17
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedCharPos:I

    .line 18
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedStringListPos:I

    .line 20
    iput-boolean v1, p0, Lcom/firebase/client/realtime/util/StringListReader;->frozen:Z

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    .line 24
    return-void
.end method

.method private advance(J)J
    .locals 9

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    .line 76
    :goto_0
    iget v2, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    iget-object v3, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentStringRemainingChars()I

    move-result v2

    .line 78
    sub-long v4, p1, v0

    .line 79
    int-to-long v6, v2

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 80
    iget v2, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    int-to-long v2, v2

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    .line 81
    add-long/2addr v0, v4

    goto :goto_0

    .line 83
    :cond_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 84
    const/4 v2, 0x0

    iput v2, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    .line 85
    iget v2, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    goto :goto_0

    .line 88
    :cond_1
    return-wide v0
.end method

.method private checkState()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->closed:Z

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->frozen:Z

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader needs to be frozen before read operations can be called"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    return-void
.end method

.method private currentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    iget-object v1, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    iget v1, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private currentStringRemainingChars()I
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->frozen:Z

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add string after reading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->closed:Z

    .line 172
    return-void
.end method

.method public freeze()V
    .locals 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->frozen:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to freeze frozen StringListReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->frozen:Z

    .line 40
    return-void
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 145
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedCharPos:I

    .line 146
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedStringListPos:I

    .line 147
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 115
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    const/4 v0, -0x1

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_0
    iget v1, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 120
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/firebase/client/realtime/util/StringListReader;->advance(J)J

    goto :goto_0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 6

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 94
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    sub-int/2addr v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 99
    iget-object v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    iget v4, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v4, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    iget v5, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    add-int/2addr v5, v3

    invoke-virtual {p1, v0, v4, v5}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    .line 100
    sub-int/2addr v2, v3

    .line 101
    add-int/2addr v1, v3

    .line 102
    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Lcom/firebase/client/realtime/util/StringListReader;->advance(J)J

    .line 103
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_0
    if-gtz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 108
    :goto_1
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public read([CII)I
    .locals 7

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 152
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 154
    :goto_0
    if-eqz v1, :cond_0

    if-ge v0, p3, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentStringRemainingChars()I

    move-result v2

    sub-int v3, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 156
    iget v3, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    iget v4, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    add-int/2addr v4, v2

    add-int v5, p2, v0

    invoke-virtual {v1, v3, v4, p1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 157
    add-int v1, v0, v2

    .line 158
    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/firebase/client/realtime/util/StringListReader;->advance(J)J

    .line 159
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 160
    goto :goto_0

    .line 161
    :cond_0
    if-gtz v0, :cond_1

    if-eqz v1, :cond_2

    .line 164
    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedCharPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->charPos:I

    .line 53
    iget v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->markedStringListPos:I

    iput v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->stringListPos:I

    .line 54
    return-void
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/firebase/client/realtime/util/StringListReader;->checkState()V

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/realtime/util/StringListReader;->advance(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/firebase/client/realtime/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
