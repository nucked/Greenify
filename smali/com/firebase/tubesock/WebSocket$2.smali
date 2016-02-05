.class Lcom/firebase/tubesock/WebSocket$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/tubesock/WebSocket;


# direct methods
.method constructor <init>(Lcom/firebase/tubesock/WebSocket;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocket$2;->this$0:Lcom/firebase/tubesock/WebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket$2;->this$0:Lcom/firebase/tubesock/WebSocket;

    # invokes: Lcom/firebase/tubesock/WebSocket;->runReader()V
    invoke-static {v0}, Lcom/firebase/tubesock/WebSocket;->access$000(Lcom/firebase/tubesock/WebSocket;)V

    .line 109
    return-void
.end method
