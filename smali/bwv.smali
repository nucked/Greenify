.class public Lbwv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;II)Lbww;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-static {p0, v1, v0}, Lbwv;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lbww;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lbww;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lbww;

    invoke-direct {v0, p0}, Lbww;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbww;->a(Z)Lwq;

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lbww;->a(Ljava/lang/CharSequence;)Lwq;

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lbww;->b(Ljava/lang/CharSequence;)Lwq;

    .line 21
    :cond_1
    return-object v0
.end method
