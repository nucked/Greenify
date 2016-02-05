.class final Lcbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# instance fields
.field final synthetic a:Lbpn;


# direct methods
.method constructor <init>(Lbpn;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcbl;->a:Lbpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcbl;->a:Lbpn;

    new-instance v1, Lcbm;

    invoke-direct {v1, p1}, Lcbm;-><init>(Lcom/firebase/client/FirebaseError;)V

    invoke-virtual {v0, v1}, Lbpn;->a(Ljava/lang/Throwable;)Z

    .line 39
    return-void
.end method

.method public onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcbl;->a:Lbpn;

    invoke-virtual {v1, v0}, Lbpn;->a(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method
