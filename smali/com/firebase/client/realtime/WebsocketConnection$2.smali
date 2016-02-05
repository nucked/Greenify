.class Lcom/firebase/client/realtime/WebsocketConnection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/realtime/WebsocketConnection;


# direct methods
.method constructor <init>(Lcom/firebase/client/realtime/WebsocketConnection;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection$2;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$2;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    # getter for: Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;
    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$900(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$2;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    # getter for: Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;
    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$900(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->send(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$2;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    # invokes: Lcom/firebase/client/realtime/WebsocketConnection;->resetKeepAlive()V
    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$300(Lcom/firebase/client/realtime/WebsocketConnection;)V

    .line 294
    :cond_0
    return-void
.end method
