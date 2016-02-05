.class Lbhi;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lbgf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgf",
            "<",
            "Laxh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lbbe;

.field private final c:Lbej;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbem;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbem;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbem;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lbjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbjd",
            "<",
            "Lbbc;",
            "Lbgf",
            "<",
            "Laxh;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lbjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbjd",
            "<",
            "Ljava/lang/String;",
            "Lbho;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbbg;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lbdk;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbhp;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Ljava/lang/String;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbgf;

    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lbhi;->a:Lbgf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbbe;Lbdk;Lbjy;Lbjy;Lbej;)V
    .locals 8

    const/high16 v2, 0x100000

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resource cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lbhi;->b:Lbbe;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lbbe;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lbhi;->i:Ljava/util/Set;

    iput-object p3, p0, Lbhi;->j:Lbdk;

    iput-object p6, p0, Lbhi;->c:Lbej;

    new-instance v0, Lbhj;

    invoke-direct {v0, p0}, Lbhj;-><init>(Lbhi;)V

    new-instance v1, Lbje;

    invoke-direct {v1}, Lbje;-><init>()V

    invoke-virtual {v1, v2, v0}, Lbje;->a(ILbjg;)Lbjd;

    move-result-object v0

    iput-object v0, p0, Lbhi;->g:Lbjd;

    new-instance v0, Lbhk;

    invoke-direct {v0, p0}, Lbhk;-><init>(Lbhi;)V

    new-instance v1, Lbje;

    invoke-direct {v1}, Lbje;-><init>()V

    invoke-virtual {v1, v2, v0}, Lbje;->a(ILbjg;)Lbjd;

    move-result-object v0

    iput-object v0, p0, Lbhi;->h:Lbjd;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbhi;->d:Ljava/util/Map;

    new-instance v0, Lbiz;

    invoke-direct {v0, p1}, Lbiz;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->b(Lbem;)V

    new-instance v0, Lbjx;

    invoke-direct {v0, p5}, Lbjx;-><init>(Lbjy;)V

    invoke-virtual {p0, v0}, Lbhi;->b(Lbem;)V

    new-instance v0, Lbkh;

    invoke-direct {v0, p3}, Lbkh;-><init>(Lbdk;)V

    invoke-virtual {p0, v0}, Lbhi;->b(Lbem;)V

    new-instance v0, Lbiq;

    invoke-direct {v0, p1, p3}, Lbiq;-><init>(Landroid/content/Context;Lbdk;)V

    invoke-virtual {p0, v0}, Lbhi;->b(Lbem;)V

    new-instance v0, Lbij;

    invoke-direct {v0, p1, p3}, Lbij;-><init>(Landroid/content/Context;Lbdk;)V

    invoke-virtual {p0, v0}, Lbhi;->b(Lbem;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbhi;->e:Ljava/util/Map;

    new-instance v0, Lbjv;

    invoke-direct {v0}, Lbjv;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->c(Lbem;)V

    new-instance v0, Lbeg;

    invoke-direct {v0}, Lbeg;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->c(Lbem;)V

    new-instance v0, Lbeh;

    invoke-direct {v0}, Lbeh;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->c(Lbem;)V

    new-instance v0, Lbeo;

    invoke-direct {v0}, Lbeo;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->c(Lbem;)V

    new-instance v0, Lbep;

    invoke-direct {v0}, Lbep;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->c(Lbem;)V

    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->c(Lbem;)V

    new-instance v0, Lbfk;

    invoke-direct {v0}, Lbfk;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->c(Lbem;)V

    new-instance v0, Lbgs;

    invoke-direct {v0}, Lbgs;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->c(Lbem;)V

    new-instance v0, Lbif;

    invoke-direct {v0}, Lbif;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->c(Lbem;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbhi;->f:Ljava/util/Map;

    new-instance v0, Lbff;

    invoke-direct {v0, p1}, Lbff;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbgl;

    invoke-direct {v0, p1}, Lbgl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbiu;

    invoke-direct {v0, p1}, Lbiu;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbiv;

    invoke-direct {v0, p1}, Lbiv;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbiw;

    invoke-direct {v0, p1}, Lbiw;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbix;

    invoke-direct {v0, p1}, Lbix;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbiy;

    invoke-direct {v0, p1}, Lbiy;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbjh;

    invoke-direct {v0}, Lbjh;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbju;

    iget-object v1, p0, Lbhi;->b:Lbbe;

    invoke-virtual {v1}, Lbbe;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbju;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbjx;

    invoke-direct {v0, p4}, Lbjx;-><init>(Lbjy;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbka;

    invoke-direct {v0, p3}, Lbka;-><init>(Lbdk;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbec;

    invoke-direct {v0, p1}, Lbec;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbed;

    invoke-direct {v0}, Lbed;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbef;

    invoke-direct {v0}, Lbef;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbek;

    invoke-direct {v0, p0}, Lbek;-><init>(Lbhi;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbeq;

    invoke-direct {v0}, Lbeq;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lber;

    invoke-direct {v0}, Lber;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbez;

    invoke-direct {v0, p1}, Lbez;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbfb;

    invoke-direct {v0}, Lbfb;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbfi;

    invoke-direct {v0}, Lbfi;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbfq;

    invoke-direct {v0}, Lbfq;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbfs;

    invoke-direct {v0, p1}, Lbfs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbgg;

    invoke-direct {v0}, Lbgg;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbgp;

    invoke-direct {v0}, Lbgp;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbgr;

    invoke-direct {v0}, Lbgr;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbgt;

    invoke-direct {v0, p1}, Lbgt;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbhq;

    invoke-direct {v0}, Lbhq;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbhr;

    invoke-direct {v0}, Lbhr;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbii;

    invoke-direct {v0}, Lbii;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Lbir;

    invoke-direct {v0}, Lbir;-><init>()V

    invoke-virtual {p0, v0}, Lbhi;->a(Lbem;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbhi;->k:Ljava/util/Map;

    iget-object v0, p0, Lbhi;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbg;

    invoke-interface {p6}, Lbej;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lbbg;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lbbg;->g()Ljava/util/List;

    move-result-object v2

    const-string v3, "add macro"

    invoke-static {v1, v2, v3}, Lbhi;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbbg;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lbbg;->h()Ljava/util/List;

    move-result-object v2

    const-string v3, "remove macro"

    invoke-static {v1, v2, v3}, Lbhi;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbbg;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lbbg;->i()Ljava/util/List;

    move-result-object v2

    const-string v3, "add tag"

    invoke-static {v1, v2, v3}, Lbhi;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbbg;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lbbg;->j()Ljava/util/List;

    move-result-object v2

    const-string v3, "remove tag"

    invoke-static {v1, v2, v3}, Lbhi;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    move v3, v4

    :goto_0
    invoke-virtual {v0}, Lbbg;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-virtual {v0}, Lbbg;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc;

    const-string v2, "Unknown"

    invoke-interface {p6}, Lbej;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lbbg;->g()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {v0}, Lbbg;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_3
    iget-object v6, p0, Lbhi;->k:Ljava/util/Map;

    invoke-static {v1}, Lbhi;->a(Lbbc;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbhi;->a(Ljava/util/Map;Ljava/lang/String;)Lbhp;

    move-result-object v6

    invoke-virtual {v6, v0}, Lbhp;->a(Lbbg;)V

    invoke-virtual {v6, v0, v1}, Lbhp;->a(Lbbg;Lbbc;)V

    invoke-virtual {v6, v0, v2}, Lbhp;->a(Lbbg;Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_1
    invoke-virtual {v0}, Lbbg;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-virtual {v0}, Lbbg;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc;

    const-string v2, "Unknown"

    invoke-interface {p6}, Lbej;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lbbg;->h()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    invoke-virtual {v0}, Lbbg;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_5
    iget-object v6, p0, Lbhi;->k:Ljava/util/Map;

    invoke-static {v1}, Lbhi;->a(Lbbc;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbhi;->a(Ljava/util/Map;Ljava/lang/String;)Lbhp;

    move-result-object v6

    invoke-virtual {v6, v0}, Lbhp;->a(Lbbg;)V

    invoke-virtual {v6, v0, v1}, Lbhp;->b(Lbbg;Lbbc;)V

    invoke-virtual {v6, v0, v2}, Lbhp;->b(Lbbg;Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lbhi;->b:Lbbe;

    invoke-virtual {v0}, Lbbe;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc;

    invoke-virtual {v1}, Lbbc;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v5, Lawu;->bO:Lawu;

    invoke-virtual {v5}, Lawu;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxh;

    invoke-static {v2}, Lbip;->d(Laxh;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v5, p0, Lbhi;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v5, v2}, Lbhi;->a(Ljava/util/Map;Ljava/lang/String;)Lbhp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbhp;->a(Lbbc;)V

    goto :goto_2

    :cond_9
    return-void
.end method

.method private a(Laxh;Ljava/util/Set;Lbis;)Lbgf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxh;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbis;",
            ")",
            "Lbgf",
            "<",
            "Laxh;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p1, Laxh;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Lbgf;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Laxh;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Laxh;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    sget-object v0, Lbhi;->a:Lbgf;

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lbba;->a(Laxh;)Laxh;

    move-result-object v3

    iget-object v0, p1, Laxh;->c:[Laxh;

    array-length v0, v0

    new-array v0, v0, [Laxh;

    iput-object v0, v3, Laxh;->c:[Laxh;

    move v1, v2

    :goto_1
    iget-object v0, p1, Laxh;->c:[Laxh;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p1, Laxh;->c:[Laxh;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lbis;->a(I)Lbis;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lbhi;->a(Laxh;Ljava/util/Set;Lbis;)Lbgf;

    move-result-object v0

    sget-object v4, Lbhi;->a:Lbgf;

    if-ne v0, v4, :cond_1

    sget-object v0, Lbhi;->a:Lbgf;

    goto :goto_0

    :cond_1
    iget-object v4, v3, Laxh;->c:[Laxh;

    invoke-virtual {v0}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lbgf;

    invoke-direct {v0, v3, v2}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lbba;->a(Laxh;)Laxh;

    move-result-object v3

    iget-object v0, p1, Laxh;->d:[Laxh;

    array-length v0, v0

    iget-object v1, p1, Laxh;->e:[Laxh;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid serving value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Laxh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    sget-object v0, Lbhi;->a:Lbgf;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p1, Laxh;->d:[Laxh;

    array-length v0, v0

    new-array v0, v0, [Laxh;

    iput-object v0, v3, Laxh;->d:[Laxh;

    iget-object v0, p1, Laxh;->d:[Laxh;

    array-length v0, v0

    new-array v0, v0, [Laxh;

    iput-object v0, v3, Laxh;->e:[Laxh;

    move v1, v2

    :goto_2
    iget-object v0, p1, Laxh;->d:[Laxh;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v0, p1, Laxh;->d:[Laxh;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lbis;->b(I)Lbis;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lbhi;->a(Laxh;Ljava/util/Set;Lbis;)Lbgf;

    move-result-object v0

    iget-object v4, p1, Laxh;->e:[Laxh;

    aget-object v4, v4, v1

    invoke-interface {p3, v1}, Lbis;->c(I)Lbis;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lbhi;->a(Laxh;Ljava/util/Set;Lbis;)Lbgf;

    move-result-object v4

    sget-object v5, Lbhi;->a:Lbgf;

    if-eq v0, v5, :cond_4

    sget-object v5, Lbhi;->a:Lbgf;

    if-ne v4, v5, :cond_5

    :cond_4
    sget-object v0, Lbhi;->a:Lbgf;

    goto/16 :goto_0

    :cond_5
    iget-object v5, v3, Laxh;->d:[Laxh;

    invoke-virtual {v0}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    aput-object v0, v5, v1

    iget-object v5, v3, Laxh;->e:[Laxh;

    invoke-virtual {v4}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    new-instance v0, Lbgf;

    invoke-direct {v0, v3, v2}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Laxh;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Laxh;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Previous macro references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    sget-object v0, Lbhi;->a:Lbgf;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, Laxh;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Laxh;->f:Ljava/lang/String;

    invoke-interface {p3}, Lbis;->a()Lbfr;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lbhi;->a(Ljava/lang/String;Ljava/util/Set;Lbfr;)Lbgf;

    move-result-object v0

    iget-object v1, p1, Laxh;->k:[I

    invoke-static {v0, v1}, Lbit;->a(Lbgf;[I)Lbgf;

    move-result-object v0

    iget-object v1, p1, Laxh;->f:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1}, Lbba;->a(Laxh;)Laxh;

    move-result-object v3

    iget-object v0, p1, Laxh;->j:[Laxh;

    array-length v0, v0

    new-array v0, v0, [Laxh;

    iput-object v0, v3, Laxh;->j:[Laxh;

    move v1, v2

    :goto_3
    iget-object v0, p1, Laxh;->j:[Laxh;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    iget-object v0, p1, Laxh;->j:[Laxh;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lbis;->d(I)Lbis;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lbhi;->a(Laxh;Ljava/util/Set;Lbis;)Lbgf;

    move-result-object v0

    sget-object v4, Lbhi;->a:Lbgf;

    if-ne v0, v4, :cond_8

    sget-object v0, Lbhi;->a:Lbgf;

    goto/16 :goto_0

    :cond_8
    iget-object v4, v3, Laxh;->j:[Laxh;

    invoke-virtual {v0}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    new-instance v0, Lbgf;

    invoke-direct {v0, v3, v2}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;Lbfr;)Lbgf;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbfr;",
            ")",
            "Lbgf",
            "<",
            "Laxh;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    iget v0, p0, Lbhi;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbhi;->m:I

    iget-object v0, p0, Lbhi;->h:Lbjd;

    invoke-interface {v0, p1}, Lbjd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbho;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbhi;->c:Lbej;

    invoke-interface {v1}, Lbej;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lbho;->b()Laxh;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lbhi;->a(Laxh;Ljava/util/Set;)V

    iget v1, p0, Lbhi;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbhi;->m:I

    invoke-virtual {v0}, Lbho;->a()Lbgf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbhi;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lbhp;

    if-nez v9, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lbhi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Invalid macro: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    iget v0, p0, Lbhi;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbhi;->m:I

    sget-object v0, Lbhi;->a:Lbgf;

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lbhp;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v9}, Lbhp;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v9}, Lbhp;->c()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v9}, Lbhp;->e()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v9}, Lbhp;->d()Ljava/util/Map;

    move-result-object v6

    invoke-interface {p3}, Lbfr;->b()Lbhh;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v8}, Lbhi;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lbhh;)Lbgf;

    move-result-object v1

    invoke-virtual {v1}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lbhp;->f()Lbbc;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_4

    iget v0, p0, Lbhi;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbhi;->m:I

    sget-object v0, Lbhi;->a:Lbgf;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v10, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lbhi;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Multiple macros active for macroName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc;

    move-object v2, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lbhi;->f:Ljava/util/Map;

    invoke-interface {p3}, Lbfr;->a()Lbgu;

    move-result-object v3

    invoke-direct {p0, v0, v2, p2, v3}, Lbhi;->a(Ljava/util/Map;Lbbc;Ljava/util/Set;Lbgu;)Lbgf;

    move-result-object v3

    invoke-virtual {v1}, Lbgf;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lbgf;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v10

    :goto_2
    sget-object v1, Lbhi;->a:Lbgf;

    if-ne v3, v1, :cond_7

    sget-object v0, Lbhi;->a:Lbgf;

    :goto_3
    invoke-virtual {v2}, Lbbc;->c()Laxh;

    move-result-object v1

    invoke-virtual {v0}, Lbgf;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lbhi;->h:Lbjd;

    new-instance v3, Lbho;

    invoke-direct {v3, v0, v1}, Lbho;-><init>(Lbgf;Laxh;)V

    invoke-interface {v2, p1, v3}, Lbjd;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    invoke-direct {p0, v1, p2}, Lbhi;->a(Laxh;Ljava/util/Set;)V

    iget v1, p0, Lbhi;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbhi;->m:I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    new-instance v1, Lbgf;

    invoke-virtual {v3}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    goto :goto_3
.end method

.method private a(Ljava/util/Map;Lbbc;Ljava/util/Set;Lbgu;)Lbgf;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbem;",
            ">;",
            "Lbbc;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbgu;",
            ")",
            "Lbgf",
            "<",
            "Laxh;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lbbc;->b()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lawu;->bb:Lawu;

    invoke-virtual {v1}, Lawu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    if-nez v0, :cond_1

    const-string v0, "No function id in properties"

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    sget-object v1, Lbhi;->a:Lbgf;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v7, v0, Laxh;->g:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbem;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no backing implementation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    sget-object v1, Lbhi;->a:Lbgf;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbhi;->g:Lbjd;

    invoke-interface {v1, p2}, Lbjd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbgf;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lbhi;->c:Lbej;

    invoke-interface {v2}, Lbej;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lbbc;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v5

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4, v2}, Lbgu;->a(Ljava/lang/String;)Lbgw;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxh;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laxh;

    invoke-interface {v10, v3}, Lbgw;->a(Laxh;)Lbis;

    move-result-object v3

    invoke-direct {p0, v2, p3, v3}, Lbhi;->a(Laxh;Ljava/util/Set;Lbis;)Lbgf;

    move-result-object v10

    sget-object v2, Lbhi;->a:Lbgf;

    if-ne v10, v2, :cond_4

    sget-object v1, Lbhi;->a:Lbgf;

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Lbgf;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laxh;

    invoke-virtual {p2, v2, v3}, Lbbc;->a(Ljava/lang/String;Laxh;)V

    move v2, v4

    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbem;->a(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect keys for function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lbem;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    sget-object v1, Lbhi;->a:Lbgf;

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lbem;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_3
    new-instance v1, Lbgf;

    invoke-virtual {v0, v8}, Lbem;->a(Ljava/util/Map;)Laxh;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    if-eqz v5, :cond_8

    iget-object v0, p0, Lbhi;->g:Lbjd;

    invoke-interface {v0, p2, v1}, Lbjd;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v1}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-interface {p4, v0}, Lbgu;->a(Laxh;)V

    goto/16 :goto_0

    :cond_9
    move v5, v6

    goto :goto_3
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Lbhn;Lbhh;)Lbgf;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lbbg;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbhn;",
            "Lbhh;",
            ")",
            "Lbgf",
            "<",
            "Ljava/util/Set",
            "<",
            "Lbbc;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbg;

    invoke-interface {p4}, Lbhh;->a()Lbgx;

    move-result-object v7

    invoke-virtual {p0, v0, p2, v7}, Lbhi;->a(Lbbg;Ljava/util/Set;Lbgx;)Lbgf;

    move-result-object v8

    invoke-virtual {v8}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3, v0, v4, v5, v7}, Lbhn;->a(Lbbg;Ljava/util/Set;Ljava/util/Set;Lbgx;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v8}, Lbgf;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p4, v4}, Lbhh;->a(Ljava/util/Set;)V

    new-instance v0, Lbgf;

    invoke-direct {v0, v4, v2}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Lbhp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbhp;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lbhp;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhp;

    if-nez v0, :cond_0

    new-instance v0, Lbhp;

    invoke-direct {v0}, Lbhp;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static a(Lbbc;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lbbc;->b()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lawu;->bm:Lawu;

    invoke-virtual {v1}, Lawu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-static {v0}, Lbip;->a(Laxh;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Laxh;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxh;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lbgd;

    invoke-direct {v0}, Lbgd;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lbhi;->a(Laxh;Ljava/util/Set;Lbis;)Lbgf;

    move-result-object v0

    sget-object v1, Lbhi;->a:Lbgf;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-static {v0}, Lbip;->e(Laxh;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lbhi;->j:Lbdk;

    invoke-virtual {v1, v0}, Lbdk;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lbhi;->j:Lbdk;

    invoke-virtual {v2, v0}, Lbdk;->a(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    const-string v0, "pushAfterEvaluate: value not a Map"

    invoke-static {v0}, Lbfo;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "pushAfterEvaluate: value not a Map or List"

    invoke-static {v0}, Lbfo;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbbc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid resource: imbalance of rule names of functions for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " operation. Using default rule name instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Lbem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbem;",
            ">;",
            "Lbem;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lbem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate function type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lbem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lbem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lbhi;->m:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lbhi;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    :goto_1
    iget v2, p0, Lbhi;->m:I

    if-ge v0, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Lbbc;Ljava/util/Set;Lbgu;)Lbgf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbgu;",
            ")",
            "Lbgf",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbhi;->e:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lbhi;->a(Ljava/util/Map;Lbbc;Ljava/util/Set;Lbgu;)Lbgf;

    move-result-object v1

    invoke-virtual {v1}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-static {v0}, Lbip;->d(Laxh;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbip;->e(Ljava/lang/Object;)Laxh;

    move-result-object v2

    invoke-interface {p3, v2}, Lbgu;->a(Laxh;)V

    new-instance v2, Lbgf;

    invoke-virtual {v1}, Lbgf;->b()Z

    move-result v1

    invoke-direct {v2, v0, v1}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    return-object v2
.end method

.method a(Lbbg;Ljava/util/Set;Lbgx;)Lbgf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbg;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbgx;",
            ")",
            "Lbgf",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lbbg;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc;

    invoke-interface {p3}, Lbgx;->a()Lbgu;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, Lbhi;->a(Lbbc;Ljava/util/Set;Lbgu;)Lbgf;

    move-result-object v5

    invoke-virtual {v5}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbip;->e(Ljava/lang/Object;)Laxh;

    move-result-object v0

    invoke-interface {p3, v0}, Lbgx;->a(Laxh;)V

    new-instance v0, Lbgf;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lbgf;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    :goto_1
    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v5}, Lbgf;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lbbg;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc;

    invoke-interface {p3}, Lbgx;->b()Lbgu;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, Lbhi;->a(Lbbc;Ljava/util/Set;Lbgu;)Lbgf;

    move-result-object v5

    invoke-virtual {v5}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbip;->e(Ljava/lang/Object;)Laxh;

    move-result-object v0

    invoke-interface {p3, v0}, Lbgx;->a(Laxh;)V

    new-instance v0, Lbgf;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lbgf;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lbgf;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbip;->e(Ljava/lang/Object;)Laxh;

    move-result-object v0

    invoke-interface {p3, v0}, Lbgx;->a(Laxh;)V

    new-instance v0, Lbgf;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lbgf;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lbhh;)Lbgf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lbbg;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lbbg;",
            "Ljava/util/List",
            "<",
            "Lbbc;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lbbg;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lbbg;",
            "Ljava/util/List",
            "<",
            "Lbbc;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lbbg;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbhh;",
            ")",
            "Lbgf",
            "<",
            "Ljava/util/Set",
            "<",
            "Lbbc;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lbhl;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lbhl;-><init>(Lbhi;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, v0, p8}, Lbhi;->a(Ljava/util/Set;Ljava/util/Set;Lbhn;Lbhh;)Lbgf;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Set;Lbhh;)Lbgf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lbbg;",
            ">;",
            "Lbhh;",
            ")",
            "Lbgf",
            "<",
            "Ljava/util/Set",
            "<",
            "Lbbc;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lbhm;

    invoke-direct {v1, p0}, Lbhm;-><init>(Lbhi;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lbhi;->a(Ljava/util/Set;Ljava/util/Set;Lbhn;Lbhh;)Lbgf;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized a()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbhi;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lbem;)V
    .locals 1

    iget-object v0, p0, Lbhi;->f:Ljava/util/Map;

    invoke-static {v0, p1}, Lbhi;->a(Ljava/util/Map;Lbem;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lbhi;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbhi;->c:Lbej;

    invoke-interface {v0, p1}, Lbej;->b(Ljava/lang/String;)Lbei;

    move-result-object v1

    invoke-interface {v1}, Lbei;->b()Lbjz;

    move-result-object v2

    iget-object v0, p0, Lbhi;->i:Ljava/util/Set;

    invoke-interface {v2}, Lbjz;->b()Lbhh;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lbhi;->a(Ljava/util/Set;Lbhh;)Lbgf;

    move-result-object v0

    invoke-virtual {v0}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc;

    iget-object v4, p0, Lbhi;->d:Ljava/util/Map;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Lbjz;->a()Lbgu;

    move-result-object v6

    invoke-direct {p0, v4, v0, v5, v6}, Lbhi;->a(Ljava/util/Map;Lbbc;Ljava/util/Set;Lbgu;)Lbgf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lbei;->c()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbhi;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxe;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxe;

    iget-object v2, v0, Laxe;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Laxe;->a:Ljava/lang/String;

    const-string v3, "gaExperiment:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored supplemental: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lbhi;->j:Lbdk;

    invoke-static {v2, v0}, Lbel;->a(Lbdk;Laxe;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public b(Ljava/lang/String;)Lbgf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbgf",
            "<",
            "Laxh;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lbhi;->m:I

    iget-object v0, p0, Lbhi;->c:Lbej;

    invoke-interface {v0, p1}, Lbej;->a(Ljava/lang/String;)Lbei;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lbei;->a()Lbfr;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lbhi;->a(Ljava/lang/String;Ljava/util/Set;Lbfr;)Lbgf;

    move-result-object v1

    invoke-interface {v0}, Lbei;->c()V

    return-object v1
.end method

.method b(Lbem;)V
    .locals 1

    iget-object v0, p0, Lbhi;->d:Ljava/util/Map;

    invoke-static {v0, p1}, Lbhi;->a(Ljava/util/Map;Lbem;)V

    return-void
.end method

.method c(Lbem;)V
    .locals 1

    iget-object v0, p0, Lbhi;->e:Ljava/util/Map;

    invoke-static {v0, p1}, Lbhi;->a(Ljava/util/Map;Lbem;)V

    return-void
.end method

.method declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lbhi;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
