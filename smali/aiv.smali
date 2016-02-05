.class public Laiv;
.super Lakf;


# instance fields
.field private a:Z

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Laji;

.field private final e:Laix;

.field private f:Laik;

.field private g:Laju;


# direct methods
.method constructor <init>(Lakh;Ljava/lang/String;Laji;)V
    .locals 4

    invoke-direct {p0, p1}, Lakf;-><init>(Lakh;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laiv;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laiv;->c:Ljava/util/Map;

    if-eqz p2, :cond_0

    iget-object v0, p0, Laiv;->b:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Laiv;->b:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laiv;->b:Ljava/util/Map;

    const-string v1, "&a"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    new-instance v0, Laji;

    const-string v1, "tracking"

    invoke-virtual {p0}, Laiv;->n()Lazo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Laji;-><init>(Ljava/lang/String;Lazo;)V

    iput-object v0, p0, Laiv;->d:Laji;

    :goto_0
    new-instance v0, Laix;

    invoke-direct {v0, p0, p1}, Laix;-><init>(Laiv;Lakh;)V

    iput-object v0, p0, Laiv;->e:Laix;

    return-void

    :cond_1
    iput-object p3, p0, Laiv;->d:Laji;

    goto :goto_0
.end method

.method static synthetic a(Laiv;)Laix;
    .locals 1

    iget-object v0, p0, Laiv;->e:Laix;

    return-object v0
.end method

.method static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Laiv;->b(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static a(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Laiv;)Lajc;
    .locals 1

    invoke-virtual {p0}, Laiv;->y()Lajc;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Laiv;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Laiv;->b(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic c(Laiv;)Laks;
    .locals 1

    invoke-virtual {p0}, Laiv;->z()Laks;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Laiv;->f:Laik;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Laiv;)Lall;
    .locals 1

    invoke-virtual {p0}, Laiv;->A()Lall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Laiv;)Lall;
    .locals 1

    invoke-virtual {p0}, Laiv;->A()Lall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Laiv;)Laji;
    .locals 1

    iget-object v0, p0, Laiv;->d:Laji;

    return-object v0
.end method

.method static synthetic g(Laiv;)Lajk;
    .locals 1

    invoke-virtual {p0}, Laiv;->p()Lajk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Laiv;)Lajk;
    .locals 1

    invoke-virtual {p0}, Laiv;->p()Lajk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Laiv;)Lajx;
    .locals 1

    invoke-virtual {p0}, Laiv;->t()Lajx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Laiv;)Lajx;
    .locals 1

    invoke-virtual {p0}, Laiv;->t()Lajx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Laiv;)Laju;
    .locals 1

    iget-object v0, p0, Laiv;->g:Laju;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Laiv;->e:Laix;

    invoke-virtual {v0}, Laix;->E()V

    invoke-virtual {p0}, Laiv;->v()Lajw;

    move-result-object v0

    invoke-virtual {v0}, Lajw;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "&an"

    invoke-virtual {p0, v1, v0}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Laiv;->v()Lajw;

    move-result-object v0

    invoke-virtual {v0}, Lajw;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "&av"

    invoke-virtual {p0, v1, v0}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 5

    iget-object v0, p0, Laiv;->e:Laix;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Laix;->a(J)V

    return-void
.end method

.method a(Laju;)V
    .locals 4

    const-string v0, "Loading Tracker config values"

    invoke-virtual {p0, v0}, Laiv;->b(Ljava/lang/String;)V

    iput-object p1, p0, Laiv;->g:Laju;

    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&tid"

    invoke-virtual {p0, v1, v0}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "trackingId loaded"

    invoke-virtual {p0, v1, v0}, Laiv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->d()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&sf"

    invoke-virtual {p0, v1, v0}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Sample frequency loaded"

    invoke-virtual {p0, v1, v0}, Laiv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->f()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Laiv;->a(J)V

    const-string v1, "Session timeout loaded"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Laiv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Laiv;->b(Z)V

    const-string v1, "Auto activity tracking loaded"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Laiv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "&aip"

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "Anonymize ip loaded"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Laiv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Laiv;->g:Laju;

    invoke-virtual {v0}, Laju;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Laiv;->a(Z)V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://hostname/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "utm_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Laiv;->c:Ljava/util/Map;

    const-string v3, "&ci"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "anid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Laiv;->c:Ljava/util/Map;

    const-string v3, "&anid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Laiv;->c:Ljava/util/Map;

    const-string v3, "&cn"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "utm_content"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Laiv;->c:Ljava/util/Map;

    const-string v3, "&cc"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "utm_medium"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Laiv;->c:Ljava/util/Map;

    const-string v3, "&cm"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "utm_source"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Laiv;->c:Ljava/util/Map;

    const-string v3, "&cs"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v1, "utm_term"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Laiv;->c:Ljava/util/Map;

    const-string v3, "&ck"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v1, "dclid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, p0, Laiv;->c:Ljava/util/Map;

    const-string v3, "&dclid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Laiv;->c:Ljava/util/Map;

    const-string v3, "&gclid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v1, "aclid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Laiv;->c:Ljava/util/Map;

    const-string v2, "&aclid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Key should be non-null"

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laiv;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Laiv;->n()Lazo;

    move-result-object v0

    invoke-interface {v0}, Lazo;->a()J

    move-result-wide v6

    invoke-virtual {p0}, Laiv;->s()Lail;

    move-result-object v0

    invoke-virtual {v0}, Lail;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppOptOut is set to true. Not sending Google Analytics hit"

    invoke-virtual {p0, v0}, Laiv;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Laiv;->s()Lail;

    move-result-object v0

    invoke-virtual {v0}, Lail;->e()Z

    move-result v8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Laiv;->b:Ljava/util/Map;

    invoke-static {v0, v3}, Laiv;->a(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {p1, v3}, Laiv;->a(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Laiv;->b:Ljava/util/Map;

    const-string v2, "useSecure"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lajv;->a(Ljava/lang/String;Z)Z

    move-result v9

    iget-object v0, p0, Laiv;->c:Ljava/util/Map;

    invoke-static {v0, v3}, Laiv;->b(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Laiv;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "t"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laiv;->p()Lajk;

    move-result-object v0

    const-string v1, "Missing hit type parameter"

    invoke-virtual {v0, v3, v1}, Lajk;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "tid"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laiv;->p()Lajk;

    move-result-object v0

    const-string v1, "Missing tracking id parameter"

    invoke-virtual {v0, v3, v1}, Lajk;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Laiv;->b()Z

    move-result v4

    monitor-enter p0

    :try_start_0
    const-string v0, "screenview"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pageview"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "appview"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Laiv;->b:Ljava/util/Map;

    const-string v2, "&a"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-lt v0, v2, :cond_4

    move v0, v1

    :cond_4
    iget-object v1, p0, Laiv;->b:Ljava/util/Map;

    const-string v2, "&a"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Laiv;->r()Lbcg;

    move-result-object v0

    new-instance v1, Laiw;

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Laiw;-><init>(Laiv;Ljava/util/Map;ZLjava/lang/String;JZZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lbcg;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Laiv;->c()Z

    move-result v0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Laiv;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    new-instance v2, Laik;

    invoke-direct {v2, p0, v1, v0}, Laik;-><init>(Laiv;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    iput-object v2, p0, Laiv;->f:Laik;

    iget-object v0, p0, Laiv;->f:Laik;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "Uncaught exceptions will be reported to Google Analytics"

    invoke-virtual {p0, v0}, Laiv;->b(Ljava/lang/String;)V

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Laiv;->f:Laik;

    invoke-virtual {v0}, Laik;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "Uncaught exceptions will not be reported to Google Analytics"

    invoke-virtual {p0, v0}, Laiv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Laiv;->e:Laix;

    invoke-virtual {v0, p1}, Laix;->a(Z)V

    return-void
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Laiv;->a:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Laiv;->a:Z

    return-void
.end method
