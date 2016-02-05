.class public final Lbrl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lbqg",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lbqg",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lbrl;->a:Ljava/util/Map;

    .line 49
    return-void
.end method

.method private a(Ljava/lang/Class;)Lbsk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lbsk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 99
    :cond_0
    new-instance v0, Lbrr;

    invoke-direct {v0, p0, v1}, Lbrr;-><init>(Lbrl;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lbsk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lbsk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lbrs;

    invoke-direct {v0, p0}, Lbrs;-><init>(Lbrl;)V

    .line 197
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Lbrt;

    invoke-direct {v0, p0, p1}, Lbrt;-><init>(Lbrl;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 153
    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Lbru;

    invoke-direct {v0, p0}, Lbru;-><init>(Lbrl;)V

    goto :goto_0

    .line 159
    :cond_2
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    new-instance v0, Lbrv;

    invoke-direct {v0, p0}, Lbrv;-><init>(Lbrl;)V

    goto :goto_0

    .line 166
    :cond_3
    new-instance v0, Lbrw;

    invoke-direct {v0, p0}, Lbrw;-><init>(Lbrl;)V

    goto :goto_0

    .line 174
    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    new-instance v0, Lbrx;

    invoke-direct {v0, p0}, Lbrx;-><init>(Lbrl;)V

    goto :goto_0

    .line 181
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lbva;->a(Ljava/lang/reflect/Type;)Lbva;

    move-result-object v1

    invoke-virtual {v1}, Lbva;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 183
    new-instance v0, Lbrn;

    invoke-direct {v0, p0}, Lbrn;-><init>(Lbrl;)V

    goto :goto_0

    .line 189
    :cond_6
    new-instance v0, Lbro;

    invoke-direct {v0, p0}, Lbro;-><init>(Lbrl;)V

    goto :goto_0

    .line 197
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lbsk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lbsk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lbrp;

    invoke-direct {v0, p0, p2, p1}, Lbrp;-><init>(Lbrl;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public a(Lbva;)Lbsk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbva",
            "<TT;>;)",
            "Lbsk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lbva;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lbva;->a()Ljava/lang/Class;

    move-result-object v1

    .line 58
    iget-object v0, p0, Lbrl;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqg;

    .line 59
    if-eqz v0, :cond_1

    .line 60
    new-instance v1, Lbrm;

    invoke-direct {v1, p0, v0, v2}, Lbrm;-><init>(Lbrl;Lbqg;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    iget-object v0, p0, Lbrl;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqg;

    .line 71
    if-eqz v0, :cond_2

    .line 72
    new-instance v1, Lbrq;

    invoke-direct {v1, p0, v0, v2}, Lbrq;-><init>(Lbrl;Lbqg;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    goto :goto_0

    .line 79
    :cond_2
    invoke-direct {p0, v1}, Lbrl;->a(Ljava/lang/Class;)Lbsk;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0, v2, v1}, Lbrl;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lbsk;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0, v2, v1}, Lbrl;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lbsk;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lbrl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
