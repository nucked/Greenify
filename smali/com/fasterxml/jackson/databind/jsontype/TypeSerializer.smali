.class public abstract Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.end method

.method public abstract writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
.end method

.method public abstract writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
.end method

.method public abstract writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.end method

.method public abstract writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.end method

.method public abstract writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 149
    return-void
.end method

.method public abstract writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.end method

.method public abstract writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.end method

.method public abstract writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.end method
