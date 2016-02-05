.class Lcom/firebase/client/authentication/JsonBasicResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/firebase/client/authentication/JsonBasicResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 17
    if-nez p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-object v0

    .line 20
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 24
    :try_start_0
    invoke-static {}, Lcom/firebase/client/utilities/encoding/JsonHelpers;->getMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    new-instance v2, Lcom/firebase/client/authentication/JsonBasicResponseHandler$1;

    invoke-direct {v2, p0}, Lcom/firebase/client/authentication/JsonBasicResponseHandler$1;-><init>(Lcom/firebase/client/authentication/JsonBasicResponseHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
