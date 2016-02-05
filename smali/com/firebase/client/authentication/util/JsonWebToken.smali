.class public Lcom/firebase/client/authentication/util/JsonWebToken;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final claims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ljava/lang/Object;

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->header:Ljava/util/Map;

    .line 18
    iput-object p2, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->claims:Ljava/util/Map;

    .line 19
    iput-object p3, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->data:Ljava/lang/Object;

    .line 20
    iput-object p4, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->signature:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/firebase/client/authentication/util/JsonWebToken;
    .locals 5

    .prologue
    .line 53
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    array-length v0, v2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 55
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    new-instance v1, Lcom/firebase/client/authentication/util/JsonWebToken$1;

    invoke-direct {v1}, Lcom/firebase/client/authentication/util/JsonWebToken$1;-><init>()V

    .line 58
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Lcom/firebase/client/authentication/util/JsonWebToken;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/firebase/client/utilities/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue([BLcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 59
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/firebase/client/authentication/util/JsonWebToken;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/client/utilities/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue([BLcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 60
    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 61
    const-string v3, "d"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 62
    const-string v4, "d"

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v4, Lcom/firebase/client/authentication/util/JsonWebToken;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/firebase/client/authentication/util/JsonWebToken;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method

.method private static fixLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, v0, 0x4

    .line 41
    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-object p0

    .line 44
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 46
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getClaims()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->claims:Ljava/util/Map;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->header:Ljava/util/Map;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/firebase/client/authentication/util/JsonWebToken;->signature:Ljava/lang/String;

    return-object v0
.end method
