.class public abstract Lcom/fasterxml/jackson/core/base/GeneratorBase;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source "SourceFile"


# instance fields
.field public _cfgNumbersAsStrings:Z

.field protected _closed:Z

.field protected _features:I

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field public _writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;


# direct methods
.method public constructor <init>(ILcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    .line 73
    iput p1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    .line 74
    invoke-static {}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createRootContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 75
    iput-object p2, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 76
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_cfgNumbersAsStrings:Z

    .line 77
    return-void
.end method


# virtual methods
.method public abstract _releaseBuffers()V
.end method

.method public _reportError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 444
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final _throwInternal()V
    .locals 0

    .prologue
    .line 520
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    .line 521
    return-void
.end method

.method public abstract _verifyValueWrite(Ljava/lang/String;)V
.end method

.method protected _writeSimpleObject(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNull()V

    .line 513
    :goto_0
    return-void

    .line 465
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 466
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_b

    move-object v0, p1

    .line 470
    check-cast v0, Ljava/lang/Number;

    .line 471
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 472
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 474
    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 475
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(J)V

    goto :goto_0

    .line 477
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 478
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(D)V

    goto :goto_0

    .line 480
    :cond_4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 481
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(F)V

    goto :goto_0

    .line 483
    :cond_5
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_6

    .line 484
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(S)V

    goto :goto_0

    .line 486
    :cond_6
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .line 487
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(S)V

    goto :goto_0

    .line 489
    :cond_7
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_8

    .line 490
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 492
    :cond_8
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    .line 493
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 498
    :cond_9
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_a

    .line 499
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 501
    :cond_a
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_e

    .line 502
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(J)V

    goto/16 :goto_0

    .line 505
    :cond_b
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 506
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeBinary([B)V

    goto/16 :goto_0

    .line 508
    :cond_c
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 509
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 511
    :cond_d
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_e

    .line 512
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 515
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_closed:Z

    .line 294
    return-void
.end method

.method public final getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->getPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p0

    goto :goto_0
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1

    .prologue
    .line 174
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeFieldName(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNull()V

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeSimpleObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeRaw(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1

    .prologue
    .line 187
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeString(Ljava/lang/String;)V

    .line 188
    return-void
.end method
