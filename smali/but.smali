.class final Lbut;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 174
    invoke-virtual {p1}, Lbvb;->j()V

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lbve;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 181
    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p1, v0}, Lbve;->b(Ljava/lang/String;)Lbve;

    .line 182
    return-void

    .line 181
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lbut;->a(Lbve;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lbut;->a(Lbvb;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
