.class public Lcom/firebase/client/utilities/HttpUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static addMethodParams(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p1, :cond_1

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 60
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "utf-8"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_1
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Didn\'t find utf-8 encoding"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URI;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 26
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    if-eqz p2, :cond_3

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    if-nez v2, :cond_0

    .line 35
    const-string v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 44
    :goto_1
    if-eqz v2, :cond_2

    .line 45
    new-instance v1, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 47
    :cond_2
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t build valid auth URI."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t build valid auth URI."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move-object v2, v6

    goto :goto_1
.end method

.method public static requestWithType(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/firebase/client/utilities/HttpUtilities$1;->$SwitchMap$com$firebase$client$utilities$HttpUtilities$HttpRequestType:[I

    invoke-virtual {p2}, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    sget-object v0, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->DELETE:Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;

    if-ne p2, v0, :cond_0

    .line 81
    const-string v0, "_method"

    const-string v1, "delete"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/firebase/client/utilities/HttpUtilities;->buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URI;

    move-result-object v1

    .line 84
    sget-object v0, Lcom/firebase/client/utilities/HttpUtilities$1;->$SwitchMap$com$firebase$client$utilities$HttpUtilities$HttpRequestType:[I

    invoke-virtual {p2}, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 75
    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object p3, v0

    .line 76
    goto :goto_0

    .line 86
    :pswitch_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 103
    :cond_1
    :goto_1
    return-object v0

    .line 89
    :pswitch_2
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 90
    if-eqz p4, :cond_1

    .line 91
    invoke-static {v0, p4}, Lcom/firebase/client/utilities/HttpUtilities;->addMethodParams(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;)V

    goto :goto_1

    .line 96
    :pswitch_3
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    goto :goto_1

    .line 99
    :pswitch_4
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    .line 100
    if-eqz p4, :cond_1

    .line 101
    invoke-static {v0, p4}, Lcom/firebase/client/utilities/HttpUtilities;->addMethodParams(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;)V

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
