.class Lcom/firebase/client/core/Repo$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/firebase/client/core/Repo$12;->this$0:Lcom/firebase/client/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .prologue
    .line 629
    return-void
.end method

.method public onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 0

    .prologue
    .line 624
    return-void
.end method
