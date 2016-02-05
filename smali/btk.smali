.class public final Lbtk;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbqz",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lbsk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbsk",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbtl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lbsk;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsk",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbtl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Lbqz;-><init>()V

    .line 197
    iput-object p1, p0, Lbtk;->a:Lbsk;

    .line 198
    iput-object p2, p0, Lbtk;->b:Ljava/util/Map;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Lbsk;Ljava/util/Map;Lbtj;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lbtk;-><init>(Lbsk;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Lbve;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbve;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    if-nez p2, :cond_0

    .line 231
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 247
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Lbve;->d()Lbve;

    .line 237
    :try_start_0
    iget-object v0, p0, Lbtk;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtl;

    .line 238
    invoke-virtual {v0, p2}, Lbtl;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, v0, Lbtl;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lbve;->a(Ljava/lang/String;)Lbve;

    .line 240
    invoke-virtual {v0, p1, p2}, Lbtl;->a(Lbve;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 246
    :cond_2
    invoke-virtual {p1}, Lbve;->e()Lbve;

    goto :goto_0
.end method

.method public b(Lbvb;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 203
    invoke-virtual {p1}, Lbvb;->j()V

    .line 204
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lbtk;->a:Lbsk;

    invoke-interface {v0}, Lbsk;->a()Ljava/lang/Object;

    move-result-object v1

    .line 210
    :try_start_0
    invoke-virtual {p1}, Lbvb;->c()V

    .line 211
    :goto_1
    invoke-virtual {p1}, Lbvb;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {p1}, Lbvb;->g()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v2, p0, Lbtk;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtl;

    .line 214
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lbtl;->i:Z

    if-nez v2, :cond_2

    .line 215
    :cond_1
    invoke-virtual {p1}, Lbvb;->n()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Lbqs;

    invoke-direct {v1, v0}, Lbqs;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 217
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lbtl;->a(Lbvb;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 222
    :catch_1
    move-exception v0

    .line 223
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 225
    :cond_3
    invoke-virtual {p1}, Lbvb;->d()V

    move-object v0, v1

    .line 226
    goto :goto_0
.end method
