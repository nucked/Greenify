.class final Lbvj;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbve;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lbvj;->a(Lbve;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lbvj;->a(Lbvb;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
