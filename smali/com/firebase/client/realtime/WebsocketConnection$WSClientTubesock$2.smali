.class Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$2;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iput-object p2, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$2;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$2;->this$1:Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;->this$0:Lcom/firebase/client/realtime/WebsocketConnection;

    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock$2;->val$str:Ljava/lang/String;

    # invokes: Lcom/firebase/client/realtime/WebsocketConnection;->handleIncomingFrame(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/firebase/client/realtime/WebsocketConnection;->access$500(Lcom/firebase/client/realtime/WebsocketConnection;Ljava/lang/String;)V

    .line 73
    return-void
.end method
