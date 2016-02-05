.class public Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static find(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 40
    const-class v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-ne p0, v0, :cond_0

    .line 41
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/core/JsonLocation;

    if-ne v0, v1, :cond_0

    .line 53
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JsonLocationInstantiator;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JsonLocationInstantiator;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
