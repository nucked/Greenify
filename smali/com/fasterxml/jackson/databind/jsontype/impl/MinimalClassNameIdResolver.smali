.class public Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;
.source "SourceFile"


# instance fields
.field protected final _basePackageName:Ljava/lang/String;

.field protected final _basePackagePrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 26
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 27
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 28
    if-gez v1, :cond_0

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;

    .line 30
    const-string v0, "."

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    return-object v0
.end method

.method public typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3

    .prologue
    .line 54
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 58
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
