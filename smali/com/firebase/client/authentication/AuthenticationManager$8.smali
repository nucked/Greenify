.class Lcom/firebase/client/authentication/AuthenticationManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/authentication/RequestHandler;

.field final synthetic val$request:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/firebase/client/authentication/RequestHandler;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->val$request:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->val$handler:Lcom/firebase/client/authentication/RequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v1, 0x4e20

    .line 443
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 444
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 445
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 447
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 448
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.protocol.cookie-policy"

    const-string v3, "compatibility"

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->val$request:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v2, Lcom/firebase/client/authentication/JsonBasicResponseHandler;

    invoke-direct {v2}, Lcom/firebase/client/authentication/JsonBasicResponseHandler;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 451
    if-nez v0, :cond_0

    .line 452
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication server did not respond with a valid response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    new-instance v2, Lcom/firebase/client/authentication/AuthenticationManager$8$2;

    invoke-direct {v2, p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager$8$2;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$8;Ljava/io/IOException;)V

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$600(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V

    .line 468
    :goto_0
    return-void

    .line 454
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    new-instance v2, Lcom/firebase/client/authentication/AuthenticationManager$8$1;

    invoke-direct {v2, p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager$8$1;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$8;Ljava/util/Map;)V

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$600(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
