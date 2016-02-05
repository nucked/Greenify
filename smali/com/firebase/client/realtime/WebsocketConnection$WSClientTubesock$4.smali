.class Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

.field final synthetic val$e:Lcom/firebase/tubesock/WebSocketException;


# direct methods
.method constructor <init>(Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;Lcom/firebase/tubesock/WebSocketException;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iput-object p2, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/firebase/tubesock/WebSocketException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    const-string v0, "had an error"

    .line 93
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v1, v1, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    # getter for: Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v1, v1, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    # getter for: Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/firebase/tubesock/WebSocketException;

    invoke-virtual {v1, v0, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/firebase/tubesock/WebSocketException;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    # getter for: Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    # getter for: Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    const-string v1, "If you are running on Android, have you added <uses-permission android:name=\"android.permission.INTERNET\" /> under <manifest> in AndroidManifest.xml?"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 99
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    # invokes: Lcom/firebase/client/realtime/WebsocketConnection;->onClosed()V
    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$600(Lcom/firebase/client/realtime/WebsocketConnection;)V

    .line 100
    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    # getter for: Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    # getter for: Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/firebase/tubesock/WebSocketException;

    invoke-virtual {v2}, Lcom/firebase/tubesock/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
