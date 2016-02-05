.class Lcom/firebase/client/core/PersistentConnection$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;

.field final synthetic val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$3;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$3;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 573
    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 576
    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 579
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$3;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$3;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-interface {v1, v0, v2}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    .line 582
    :cond_0
    return-void

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method
