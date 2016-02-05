.class public Lcom/firebase/client/utilities/Utilities;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static compareInts(II)I
    .locals 1

    .prologue
    .line 161
    if-ge p0, p1, :cond_0

    .line 162
    const/4 v0, -0x1

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_0
    if-ne p0, p1, :cond_1

    .line 164
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compareLongs(JJ)I
    .locals 2

    .prologue
    .line 171
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 172
    const/4 v0, -0x1

    .line 176
    :goto_0
    return v0

    .line 173
    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    .line 174
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static doubleToHashString(D)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    new-array v3, v7, [B

    .line 114
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move v0, v1

    .line 115
    :goto_0
    if-ge v0, v7, :cond_0

    .line 116
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, v3, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 189
    if-nez p0, :cond_0

    move-object v0, v1

    .line 197
    :goto_0
    return-object v0

    .line 192
    :cond_0
    const-class v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/firebase/client/utilities/Utilities;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 193
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_1

    .line 195
    invoke-static {v0, p2}, Lcom/firebase/client/utilities/Utilities;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 197
    goto :goto_0
.end method

.method public static hardAssert(Z)V
    .locals 1

    .prologue
    .line 212
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 213
    return-void
.end method

.method public static hardAssert(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 216
    if-nez p0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hardAssert failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 219
    :cond_0
    return-void
.end method

.method public static longFromObject(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 202
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 203
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 207
    :goto_0
    return-object p0

    .line 204
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 205
    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    .line 207
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static parseUrl(Ljava/lang/String;)Lcom/firebase/client/utilities/ParsedUrl;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 19
    .line 21
    :try_start_0
    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 22
    if-ne v1, v6, :cond_0

    .line 23
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "Invalid scheme specified"

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Lcom/firebase/client/FirebaseException;

    const-string v2, "Invalid Firebase url specified"

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 25
    :cond_0
    add-int/lit8 v2, v1, 0x2

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 26
    if-eq v2, v6, :cond_3

    .line 27
    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 31
    aget-object v4, v2, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 32
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    aget-object v4, v2, v0

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    :cond_3
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/firebase/client/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcom/firebase/client/core/Path;

    invoke-direct {v2, v1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v3, Lcom/firebase/client/core/RepoInfo;

    invoke-direct {v3}, Lcom/firebase/client/core/RepoInfo;-><init>()V

    .line 48
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/firebase/client/core/RepoInfo;->host:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 51
    if-eq v0, v6, :cond_4

    .line 52
    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/firebase/client/core/RepoInfo;->secure:Z

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/firebase/client/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/firebase/client/core/RepoInfo;->host:Ljava/lang/String;

    .line 57
    :goto_1
    iget-object v0, v3, Lcom/firebase/client/core/RepoInfo;->host:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/firebase/client/core/RepoInfo;->namespace:Ljava/lang/String;

    .line 60
    iget-object v0, v3, Lcom/firebase/client/core/RepoInfo;->host:Ljava/lang/String;

    iput-object v0, v3, Lcom/firebase/client/core/RepoInfo;->internalHost:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/firebase/client/utilities/ParsedUrl;

    invoke-direct {v0}, Lcom/firebase/client/utilities/ParsedUrl;-><init>()V

    .line 62
    iput-object v2, v0, Lcom/firebase/client/utilities/ParsedUrl;->path:Lcom/firebase/client/core/Path;

    .line 63
    iput-object v3, v0, Lcom/firebase/client/utilities/ParsedUrl;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    .line 64
    return-object v0

    .line 55
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/firebase/client/core/RepoInfo;->secure:Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    .line 69
    new-instance v1, Lcom/firebase/client/FirebaseException;

    const-string v2, "Failed to URLEncode the path"

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 90
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/firebase/client/utilities/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing SHA-1 MessageDigest provider."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 encoding is required for Firebase to run!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static splitIntoFrames(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 75
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v0

    move-object v0, v1

    .line 83
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 79
    add-int v2, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 80
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/2addr v0, p1

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/16 v3, 0x22

    .line 101
    .line 102
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 103
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 106
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v4

    .line 156
    :goto_0
    return-object v0

    .line 129
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_9

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_2

    move-object v0, v4

    .line 131
    goto :goto_0

    :cond_2
    move v1, v0

    .line 137
    :goto_1
    const-wide/16 v2, 0x0

    .line 138
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 140
    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    const/16 v6, 0x39

    if-le v5, v6, :cond_4

    :cond_3
    move-object v0, v4

    .line 141
    goto :goto_0

    .line 143
    :cond_4
    const-wide/16 v6, 0xa

    mul-long/2addr v2, v6

    add-int/lit8 v5, v5, -0x30

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    if-eqz v0, :cond_7

    .line 147
    neg-long v0, v2

    const-wide/32 v6, -0x80000000

    cmp-long v0, v0, v6

    if-gez v0, :cond_6

    move-object v0, v4

    .line 148
    goto :goto_0

    .line 150
    :cond_6
    neg-long v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_7
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_8

    move-object v0, v4

    .line 154
    goto :goto_0

    .line 156
    :cond_8
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_1
.end method
