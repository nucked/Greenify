.class final Lbte;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lbqz",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbtd;

.field private final b:Lbqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqz",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final c:Lbqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqz",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final d:Lbsk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbsk",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbtd;Lbpy;Ljava/lang/reflect/Type;Lbqz;Ljava/lang/reflect/Type;Lbqz;Lbsk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpy;",
            "Ljava/lang/reflect/Type;",
            "Lbqz",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lbqz",
            "<TV;>;",
            "Lbsk",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lbte;->a:Lbtd;

    invoke-direct {p0}, Lbqz;-><init>()V

    .line 153
    new-instance v0, Lbtq;

    invoke-direct {v0, p2, p4, p3}, Lbtq;-><init>(Lbpy;Lbqz;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lbte;->b:Lbqz;

    .line 155
    new-instance v0, Lbtq;

    invoke-direct {v0, p2, p6, p5}, Lbtq;-><init>(Lbpy;Lbqz;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lbte;->c:Lbqz;

    .line 157
    iput-object p7, p0, Lbte;->d:Lbsk;

    .line 158
    return-void
.end method

.method private a(Lbqk;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p1}, Lbqk;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    invoke-virtual {p1}, Lbqk;->m()Lbqp;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lbqp;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lbqp;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-virtual {v0}, Lbqp;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v0}, Lbqp;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {v0}, Lbqp;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {v0}, Lbqp;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 257
    :cond_3
    invoke-virtual {p1}, Lbqk;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    const-string v0, "null"

    goto :goto_0

    .line 260
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(Lbvb;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvb;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v1

    .line 162
    sget-object v0, Lbvd;->i:Lbvd;

    if-ne v1, v0, :cond_0

    .line 163
    invoke-virtual {p1}, Lbvb;->j()V

    .line 164
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lbte;->d:Lbsk;

    invoke-interface {v0}, Lbsk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 169
    sget-object v2, Lbvd;->a:Lbvd;

    if-ne v1, v2, :cond_3

    .line 170
    invoke-virtual {p1}, Lbvb;->a()V

    .line 171
    :goto_1
    invoke-virtual {p1}, Lbvb;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {p1}, Lbvb;->a()V

    .line 173
    iget-object v1, p0, Lbte;->b:Lbqz;

    invoke-virtual {v1, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lbte;->c:Lbqz;

    invoke-virtual {v2, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v2

    .line 175
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_1

    .line 177
    new-instance v0, Lbqs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbqs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    invoke-virtual {p1}, Lbvb;->b()V

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {p1}, Lbvb;->b()V

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p1}, Lbvb;->c()V

    .line 184
    :cond_4
    invoke-virtual {p1}, Lbvb;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    sget-object v1, Lbsa;->a:Lbsa;

    invoke-virtual {v1, p1}, Lbsa;->a(Lbvb;)V

    .line 186
    iget-object v1, p0, Lbte;->b:Lbqz;

    invoke-virtual {v1, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lbte;->c:Lbqz;

    invoke-virtual {v2, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v2

    .line 188
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_4

    .line 190
    new-instance v0, Lbqs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbqs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_5
    invoke-virtual {p1}, Lbvb;->d()V

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lbte;->a(Lbve;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lbve;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbve;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 199
    if-nez p2, :cond_0

    .line 200
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 243
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lbte;->a:Lbtd;

    invoke-static {v0}, Lbtd;->a(Lbtd;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    invoke-virtual {p1}, Lbve;->d()Lbve;

    .line 206
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbve;->a(Ljava/lang/String;)Lbve;

    .line 208
    iget-object v2, p0, Lbte;->c:Lbqz;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {p1}, Lbve;->e()Lbve;

    goto :goto_0

    .line 215
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    iget-object v6, p0, Lbte;->b:Lbqz;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbqz;->a(Ljava/lang/Object;)Lbqk;

    move-result-object v6

    .line 220
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v6}, Lbqk;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lbqk;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    .line 223
    goto :goto_2

    :cond_4
    move v0, v2

    .line 222
    goto :goto_3

    .line 225
    :cond_5
    if-eqz v1, :cond_7

    .line 226
    invoke-virtual {p1}, Lbve;->b()Lbve;

    .line 227
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 228
    invoke-virtual {p1}, Lbve;->b()Lbve;

    .line 229
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqk;

    invoke-static {v0, p1}, Lbsm;->a(Lbqk;Lbve;)V

    .line 230
    iget-object v0, p0, Lbte;->c:Lbqz;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Lbve;->c()Lbve;

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 233
    :cond_6
    invoke-virtual {p1}, Lbve;->c()Lbve;

    goto/16 :goto_0

    .line 235
    :cond_7
    invoke-virtual {p1}, Lbve;->d()Lbve;

    .line 236
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 237
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqk;

    .line 238
    invoke-direct {p0, v0}, Lbte;->a(Lbqk;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbve;->a(Ljava/lang/String;)Lbve;

    .line 239
    iget-object v0, p0, Lbte;->c:Lbqz;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 241
    :cond_8
    invoke-virtual {p1}, Lbve;->e()Lbve;

    goto/16 :goto_0
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lbte;->a(Lbvb;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
