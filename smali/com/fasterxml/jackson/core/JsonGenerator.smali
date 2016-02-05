.class public abstract Lcom/fasterxml/jackson/core/JsonGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public _cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public getPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-object v0
.end method

.method public setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    .prologue
    .line 408
    return-object p0
.end method

.method public setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    .prologue
    .line 376
    return-object p0
.end method

.method public setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 332
    return-object p0
.end method

.method public setRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
.end method

.method public final writeArrayFieldStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1077
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 1079
    return-void
.end method

.method public abstract writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
.end method

.method public writeBinary([B)V
    .locals 3

    .prologue
    .line 720
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 721
    return-void
.end method

.method public abstract writeBoolean(Z)V
.end method

.method public abstract writeEndArray()V
.end method

.method public abstract writeEndObject()V
.end method

.method public abstract writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
.end method

.method public abstract writeNull()V
.end method

.method public abstract writeNumber(D)V
.end method

.method public abstract writeNumber(F)V
.end method

.method public abstract writeNumber(I)V
.end method

.method public abstract writeNumber(J)V
.end method

.method public abstract writeNumber(Ljava/lang/String;)V
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
.end method

.method public writeNumber(S)V
    .locals 0

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 783
    return-void
.end method

.method public abstract writeObject(Ljava/lang/Object;)V
.end method

.method public final writeObjectFieldStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1097
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 1099
    return-void
.end method

.method public abstract writeRaw(C)V
.end method

.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1

    .prologue
    .line 655
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public abstract writeRaw(Ljava/lang/String;)V
.end method

.method public abstract writeRaw([CII)V
.end method

.method public abstract writeRawValue(Ljava/lang/String;)V
.end method

.method public abstract writeStartArray()V
.end method

.method public abstract writeStartObject()V
.end method

.method public abstract writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

.method public abstract writeString([CII)V
.end method

.method public writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 936
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 938
    return-void
.end method
