.class Lcom/firebase/client/core/GaePlatform$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/tubesock/ThreadInitializer;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/GaePlatform;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/GaePlatform;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/firebase/client/core/GaePlatform$2;->this$0:Lcom/firebase/client/core/GaePlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setName(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/firebase/client/core/GaePlatform;->threadInitializerInstance:Lcom/firebase/client/core/ThreadInitializer;

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/core/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 77
    return-void
.end method
