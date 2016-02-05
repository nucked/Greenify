.class public Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;
.super Landroid/content/IntentFilter;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ComponentName;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;ZLandroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-boolean p2, p0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->b:Z

    iput-object p3, p0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a:Landroid/content/ComponentName;

    .line 105
    return-void
.end method

.method public constructor <init>(ZLandroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    iput-boolean p1, p0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->b:Z

    iput-object p2, p0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a:Landroid/content/ComponentName;

    .line 100
    return-void
.end method

.method private a(Ljava/util/Iterator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 38
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-static {p1, v0}, Lbnc;->a(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbkq;->a([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Landroid/content/IntentFilter$AuthorityEntry;Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 2

    .prologue
    .line 94
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbkq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/os/PatternMatcher;Landroid/os/PatternMatcher;)Z
    .locals 2

    .prologue
    .line 90
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/os/PatternMatcher;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbkq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->b(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 56
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lbnc;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;",
            "Ljava/util/Iterator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 74
    :cond_0
    :goto_0
    return v3

    .line 67
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 68
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PatternMatcher;

    .line 72
    invoke-static {v0, v1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Landroid/os/PatternMatcher;Landroid/os/PatternMatcher;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 74
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private static c(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 86
    :cond_0
    :goto_0
    return v3

    .line 79
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 80
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter$AuthorityEntry;

    .line 84
    invoke-static {v0, v1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Landroid/content/IntentFilter$AuthorityEntry;Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 86
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    instance-of v1, p1, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    check-cast p1, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;

    .line 44
    iget-object v1, p0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lbkq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->b:Z

    iget-boolean v2, p1, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->b:Z

    if-ne v1, v2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p0, p1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->c(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->b(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->b:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Ljava/util/Iterator;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Ljava/util/Iterator;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Ljava/util/Iterator;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a(Ljava/util/Iterator;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    return v0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    goto :goto_0
.end method
