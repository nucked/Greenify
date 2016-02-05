.class public Lcbk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/firebase/client/Firebase;->getDefaultConfig()Lcom/firebase/client/Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/firebase/client/Config;->setPersistenceEnabled(Z)V

    .line 60
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lbpk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lbpk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/Firebase;->setAndroidContext(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lbpn;->b()Lbpn;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/firebase/client/Firebase;

    invoke-direct {v1, p1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcbl;

    invoke-direct {v2, v0}, Lcbl;-><init>(Lbpn;)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/Firebase;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V

    .line 41
    return-object v0
.end method
