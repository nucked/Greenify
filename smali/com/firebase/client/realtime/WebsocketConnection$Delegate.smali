.class public interface abstract Lcom/firebase/client/realtime/WebsocketConnection$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDisconnect(Z)V
.end method

.method public abstract onMessage(Ljava/util/Map;)V
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
.end method
