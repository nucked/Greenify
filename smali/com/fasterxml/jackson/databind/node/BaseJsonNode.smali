.class public abstract Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.super Lcom/fasterxml/jackson/databind/JsonNode;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/JsonSerializable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.end method
