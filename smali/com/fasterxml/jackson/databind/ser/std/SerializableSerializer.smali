.class public Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/fasterxml/jackson/databind/JsonSerializable;",
        ">;"
    }
.end annotation


# static fields
.field private static final _mapperReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->_mapperReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0

    .prologue
    .line 44
    invoke-interface {p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializable;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 45
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->serialize(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public final serializeWithType(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0

    .prologue
    .line 52
    invoke-interface {p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonSerializable;->serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 53
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->serializeWithType(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method
