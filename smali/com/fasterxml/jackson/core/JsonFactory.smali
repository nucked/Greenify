.class public Lcom/fasterxml/jackson/core/JsonFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_FACTORY_FEATURE_FLAGS:I

.field protected static final DEFAULT_GENERATOR_FEATURE_FLAGS:I

.field protected static final DEFAULT_PARSER_FEATURE_FLAGS:I

.field private static final DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString;

.field protected static final _recyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/fasterxml/jackson/core/util/BufferRecycler;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field protected _factoryFeatures:I

.field protected _generatorFeatures:I

.field protected _inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

.field public _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

.field protected _parserFeatures:I

.field protected final transient _rootByteSymbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

.field protected final transient _rootCharSymbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field protected _rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    .line 145
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    .line 151
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    .line 153
    sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString;

    .line 166
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->createRoot()Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 183
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->createRoot()Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootByteSymbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 203
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    .line 208
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    .line 213
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    .line 241
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    .line 261
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-void
.end method


# virtual methods
.method protected _createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;
    .locals 2

    .prologue
    .line 1373
    new-instance v0, Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/io/IOContext;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected _createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 3

    .prologue
    .line 1293
    new-instance v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/Writer;)V

    .line 1295
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 1298
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    .line 1299
    sget-object v2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString;

    if-eq v1, v2, :cond_1

    .line 1300
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->setRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 1302
    :cond_1
    return-object v0
.end method

.method protected _createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 7

    .prologue
    .line 1203
    new-instance v0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootByteSymbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    sget-object v5, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->constructParser(ILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 6

    .prologue
    .line 1232
    new-instance v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result v3

    sget-object v5, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V

    return-object v0
.end method

.method protected _createParser([BIILcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 7

    .prologue
    .line 1259
    new-instance v0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;[BII)V

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootByteSymbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    sget-object v5, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->constructParser(ILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 3

    .prologue
    .line 1329
    new-instance v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;)V

    .line 1331
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v1, :cond_0

    .line 1332
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 1334
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    .line 1335
    sget-object v2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString;

    if-eq v1, v2, :cond_1

    .line 1336
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->setRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 1338
    :cond_1
    return-object v0
.end method

.method protected _createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 1354
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne p2, v0, :cond_0

    .line 1355
    new-instance v0, Lcom/fasterxml/jackson/core/io/UTF8Writer;

    invoke-direct {v0, p3, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/OutputStream;)V

    .line 1358
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;
    .locals 3

    .prologue
    .line 1384
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 1385
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1387
    :goto_0
    if-nez v0, :cond_0

    .line 1388
    new-instance v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;-><init>()V

    .line 1389
    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1391
    :cond_0
    return-object v0

    .line 1385
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;

    goto :goto_0
.end method

.method public createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 3

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v1

    .line 994
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/io/IOContext;->setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V

    .line 995
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne p2, v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    .line 1000
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    .line 1007
    :goto_0
    return-object v0

    .line 1002
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/Writer;

    move-result-object v0

    .line 1004
    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    if-eqz v2, :cond_2

    .line 1005
    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    .line 1007
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    goto :goto_0
.end method

.method public createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 2

    .prologue
    .line 1040
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    .line 1042
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p1

    .line 1045
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 714
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2

    .prologue
    .line 735
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    .line 737
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p1

    .line 740
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 3

    .prologue
    .line 796
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 798
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v1

    .line 800
    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v2, :cond_0

    .line 801
    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    .line 803
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createParser([B)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 752
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    array-length v2, p1

    invoke-virtual {v1, v0, p1, v3, v2}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;[BII)Ljava/io/InputStream;

    move-result-object v1

    .line 756
    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 760
    :goto_0
    return-object v0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v3, v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser([BIILcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    goto :goto_0
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
    .locals 2

    .prologue
    .line 455
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

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

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 622
    return-object p0
.end method
