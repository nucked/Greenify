.class public final Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ByteArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 168
    return-void
.end method


# virtual methods
.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 162
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ByteArraySerializer;->isEmpty([B)Z

    move-result v0

    return v0
.end method

.method public isEmpty([B)Z
    .locals 1

    .prologue
    .line 172
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ByteArraySerializer;->serialize([BLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize([BLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 181
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ByteArraySerializer;->serializeWithType([BLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType([BLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 189
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 191
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 192
    return-void
.end method
