.class public final Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer",
        "<[F>;"
    }
.end annotation


# static fields
.field private static final VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 526
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 529
    const-class v0, [F

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;-><init>(Ljava/lang/Class;)V

    .line 530
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 534
    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 538
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-direct {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-object v0
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 521
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->hasSingleElement([F)Z

    move-result v0

    return v0
.end method

.method public hasSingleElement([F)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 559
    array-length v1, p1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 521
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->isEmpty([F)Z

    move-result v0

    return v0
.end method

.method public isEmpty([F)Z
    .locals 1

    .prologue
    .line 554
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

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0

    .prologue
    .line 521
    check-cast p1, [F

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->serializeContents([FLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([FLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 566
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v1, :cond_0

    .line 567
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 568
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4, p2, v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V

    .line 569
    aget v2, p1, v0

    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 570
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-virtual {v2, v4, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_0
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 575
    aget v2, p1, v0

    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 577
    :cond_1
    return-void
.end method
