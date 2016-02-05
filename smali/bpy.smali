.class public final Lbpy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lbqi;

.field final b:Lbqq;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lbva",
            "<*>;",
            "Lbqe",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbva",
            "<*>;",
            "Lbqz",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbra;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lbrl;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 177
    sget-object v1, Lbry;->a:Lbry;

    sget-object v2, Lbpr;->a:Lbpr;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lbqt;->a:Lbqt;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lbpy;-><init>(Lbry;Lbpx;Ljava/util/Map;ZZZZZZLbqt;Ljava/util/List;)V

    .line 181
    return-void
.end method

.method constructor <init>(Lbry;Lbpx;Ljava/util/Map;ZZZZZZLbqt;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbry;",
            "Lbpx;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lbqg",
            "<*>;>;ZZZZZZ",
            "Lbqt;",
            "Ljava/util/List",
            "<",
            "Lbra;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lbpy;->c:Ljava/lang/ThreadLocal;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbpy;->d:Ljava/util/Map;

    .line 126
    new-instance v0, Lbpz;

    invoke-direct {v0, p0}, Lbpz;-><init>(Lbpy;)V

    iput-object v0, p0, Lbpy;->a:Lbqi;

    .line 133
    new-instance v0, Lbqa;

    invoke-direct {v0, p0}, Lbqa;-><init>(Lbpy;)V

    iput-object v0, p0, Lbpy;->b:Lbqq;

    .line 189
    new-instance v0, Lbrl;

    invoke-direct {v0, p3}, Lbrl;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lbpy;->f:Lbrl;

    .line 190
    iput-boolean p4, p0, Lbpy;->g:Z

    .line 191
    iput-boolean p6, p0, Lbpy;->i:Z

    .line 192
    iput-boolean p7, p0, Lbpy;->h:Z

    .line 193
    iput-boolean p8, p0, Lbpy;->j:Z

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    sget-object v1, Lbtr;->Q:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v1, Lbtf;->a:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    sget-object v1, Lbtr;->x:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Lbtr;->m:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Lbtr;->g:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Lbtr;->i:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v1, Lbtr;->k:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lbpy;->a(Lbqt;)Lbqz;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lbtr;->a(Ljava/lang/Class;Ljava/lang/Class;Lbqz;)Lbra;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lbpy;->a(Z)Lbqz;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lbtr;->a(Ljava/lang/Class;Ljava/lang/Class;Lbqz;)Lbra;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lbpy;->b(Z)Lbqz;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lbtr;->a(Ljava/lang/Class;Ljava/lang/Class;Lbqz;)Lbra;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Lbtr;->r:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v1, Lbtr;->t:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v1, Lbtr;->z:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v1, Lbtr;->B:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lbtr;->v:Lbqz;

    invoke-static {v1, v2}, Lbtr;->a(Ljava/lang/Class;Lbqz;)Lbra;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lbtr;->w:Lbqz;

    invoke-static {v1, v2}, Lbtr;->a(Ljava/lang/Class;Lbqz;)Lbra;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lbtr;->D:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lbtr;->F:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lbtr;->J:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lbtr;->O:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lbtr;->H:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lbtr;->d:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lbsw;->a:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lbtr;->M:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Lbto;->a:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Lbtm;->a:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v1, Lbtr;->K:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v1, Lbss;->a:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v1, Lbtr;->b:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lbsu;

    iget-object v2, p0, Lbpy;->f:Lbrl;

    invoke-direct {v1, v2}, Lbsu;-><init>(Lbrl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lbtd;

    iget-object v2, p0, Lbpy;->f:Lbrl;

    invoke-direct {v1, v2, p5}, Lbtd;-><init>(Lbrl;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lbsy;

    iget-object v2, p0, Lbpy;->f:Lbrl;

    invoke-direct {v1, v2}, Lbsy;-><init>(Lbrl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v1, Lbtr;->R:Lbra;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lbti;

    iget-object v2, p0, Lbpy;->f:Lbrl;

    invoke-direct {v1, v2, p2, p1}, Lbti;-><init>(Lbrl;Lbpx;Lbry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbpy;->e:Ljava/util/List;

    .line 248
    return-void
.end method

.method private a(Lbqt;)Lbqz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbqt;",
            ")",
            "Lbqz",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    sget-object v0, Lbqt;->a:Lbqt;

    if-ne p1, v0, :cond_0

    .line 308
    sget-object v0, Lbtr;->n:Lbqz;

    .line 310
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbqd;

    invoke-direct {v0, p0}, Lbqd;-><init>(Lbpy;)V

    goto :goto_0
.end method

.method private a(Z)Lbqz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbqz",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    sget-object v0, Lbtr;->p:Lbqz;

    .line 254
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbqb;

    invoke-direct {v0, p0}, Lbqb;-><init>(Lbpy;)V

    goto :goto_0
.end method

.method private a(D)V
    .locals 3

    .prologue
    .line 299
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    return-void
.end method

.method static synthetic a(Lbpy;D)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lbpy;->a(D)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lbvb;)V
    .locals 2

    .prologue
    .line 786
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->j:Lbvd;

    if-eq v0, v1, :cond_0

    .line 787
    new-instance v0, Lbql;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lbql;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lbvf; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 789
    :catch_0
    move-exception v0

    .line 790
    new-instance v1, Lbqs;

    invoke-direct {v1, v0}, Lbqs;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 791
    :catch_1
    move-exception v0

    .line 792
    new-instance v1, Lbql;

    invoke-direct {v1, v0}, Lbql;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 794
    :cond_0
    return-void
.end method

.method private b(Z)Lbqz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbqz",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    sget-object v0, Lbtr;->o:Lbqz;

    .line 278
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbqc;

    invoke-direct {v0, p0}, Lbqc;-><init>(Lbpy;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lbra;Lbva;)Lbqz;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbra;",
            "Lbva",
            "<TT;>;)",
            "Lbqz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 428
    const/4 v0, 0x0

    .line 432
    iget-object v2, p0, Lbpy;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 434
    :cond_0
    iget-object v2, p0, Lbpy;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbra;

    .line 435
    if-nez v2, :cond_2

    .line 436
    if-ne v0, p1, :cond_1

    move v2, v1

    .line 437
    goto :goto_0

    .line 442
    :cond_2
    invoke-interface {v0, p0, p2}, Lbra;->a(Lbpy;Lbva;)Lbqz;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_1

    .line 444
    return-object v0

    .line 447
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lbva;)Lbqz;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbva",
            "<TT;>;)",
            "Lbqz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lbpy;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqz;

    .line 337
    if-eqz v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 341
    :cond_1
    iget-object v0, p0, Lbpy;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 342
    const/4 v1, 0x0

    .line 343
    if-nez v0, :cond_5

    .line 344
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 345
    iget-object v0, p0, Lbpy;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 346
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 350
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqe;

    .line 351
    if-nez v0, :cond_0

    .line 356
    :try_start_0
    new-instance v3, Lbqe;

    invoke-direct {v3}, Lbqe;-><init>()V

    .line 357
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lbpy;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbra;

    .line 360
    invoke-interface {v0, p0, p1}, Lbra;->a(Lbpy;Lbva;)Lbqz;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {v3, v0}, Lbqe;->a(Lbqz;)V

    .line 363
    iget-object v3, p0, Lbpy;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lbpy;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 367
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    if-eqz v1, :cond_4

    .line 372
    iget-object v1, p0, Lbpy;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)Lbqz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lbqz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {p1}, Lbva;->b(Ljava/lang/Class;)Lbva;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbpy;->a(Lbva;)Lbqz;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbvb;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbvb;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 806
    .line 807
    invoke-virtual {p1}, Lbvb;->p()Z

    move-result v2

    .line 808
    invoke-virtual {p1, v1}, Lbvb;->a(Z)V

    .line 810
    :try_start_0
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    .line 811
    const/4 v1, 0x0

    .line 812
    invoke-static {p2}, Lbva;->a(Ljava/lang/reflect/Type;)Lbva;

    move-result-object v0

    .line 813
    invoke-virtual {p0, v0}, Lbpy;->a(Lbva;)Lbqz;

    move-result-object v0

    .line 814
    invoke-virtual {v0, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 831
    invoke-virtual {p1, v2}, Lbvb;->a(Z)V

    :goto_0
    return-object v0

    .line 816
    :catch_0
    move-exception v0

    .line 821
    if-eqz v1, :cond_0

    .line 822
    const/4 v0, 0x0

    .line 831
    invoke-virtual {p1, v2}, Lbvb;->a(Z)V

    goto :goto_0

    .line 824
    :cond_0
    :try_start_1
    new-instance v1, Lbqs;

    invoke-direct {v1, v0}, Lbqs;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lbvb;->a(Z)V

    throw v0

    .line 825
    :catch_1
    move-exception v0

    .line 826
    :try_start_2
    new-instance v1, Lbqs;

    invoke-direct {v1, v0}, Lbqs;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 827
    :catch_2
    move-exception v0

    .line 829
    new-instance v1, Lbqs;

    invoke-direct {v1, v0}, Lbqs;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Lbvb;

    invoke-direct {v0, p1}, Lbvb;-><init>(Ljava/io/Reader;)V

    .line 779
    invoke-virtual {p0, v0, p2}, Lbpy;->a(Lbvb;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 780
    invoke-static {v1, v0}, Lbpy;->a(Ljava/lang/Object;Lbvb;)V

    .line 781
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p0, p1, p2}, Lbpy;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 701
    invoke-static {p2}, Lbsl;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 724
    if-nez p1, :cond_0

    .line 725
    const/4 v0, 0x0

    .line 729
    :goto_0
    return-object v0

    .line 727
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0, v0, p2}, Lbpy;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbpy;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbpy;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbpy;->f:Lbrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
