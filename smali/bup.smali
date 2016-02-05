.class final Lbup;
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
    .line 145
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p1}, Lbvb;->j()V

    .line 150
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->f:Lbvd;

    if-ne v0, v1, :cond_1

    .line 153
    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Lbvb;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lbve;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 159
    if-nez p2, :cond_0

    .line 160
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lbve;->a(Z)Lbve;

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lbup;->a(Lbve;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lbup;->a(Lbvb;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
