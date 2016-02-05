.class Lcom/firebase/client/authentication/JsonBasicResponseHandler$1;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/JsonBasicResponseHandler;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/JsonBasicResponseHandler;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/firebase/client/authentication/JsonBasicResponseHandler$1;->this$0:Lcom/firebase/client/authentication/JsonBasicResponseHandler;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
