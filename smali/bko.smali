.class Lbko;
.super Lbkm;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbkm;


# direct methods
.method constructor <init>(Lbkm;Lbkm;)V
    .locals 1

    .prologue
    .line 240
    iput-object p1, p0, Lbko;->a:Lbkm;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lbkm;-><init>(Lbkm;Lbkn;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator",
            "<*>;)TA;"
        }
    .end annotation

    .prologue
    .line 243
    const-string v0, "appendable"

    invoke-static {p1, v0}, Lbkt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "parts"

    invoke-static {p2, v0}, Lbkt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lbko;->a:Lbkm;

    invoke-virtual {v1, v0}, Lbkm;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 252
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_1

    .line 255
    iget-object v1, p0, Lbko;->a:Lbkm;

    invoke-static {v1}, Lbkm;->a(Lbkm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 256
    iget-object v1, p0, Lbko;->a:Lbkm;

    invoke-virtual {v1, v0}, Lbkm;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 259
    :cond_2
    return-object p1
.end method

.method public b(Ljava/lang/String;)Lbkm;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified skipNulls"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)Lbkp;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t use .skipNulls() with maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
