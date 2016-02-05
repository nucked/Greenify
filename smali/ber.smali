.class Lber;
.super Lbem;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lawt;->K:Lawt;

    invoke-virtual {v0}, Lawt;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lber;->a:Ljava/lang/String;

    sget-object v0, Lawu;->q:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lber;->b:Ljava/lang/String;

    sget-object v0, Lawu;->g:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lber;->c:Ljava/lang/String;

    sget-object v0, Lawu;->bl:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lber;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lber;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lber;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbem;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;[B)[B
    .locals 1

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Laxh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxh;",
            ">;)",
            "Laxh;"
        }
    .end annotation

    sget-object v0, Lber;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    if-eqz v0, :cond_0

    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lbip;->a(Laxh;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lber;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    if-nez v0, :cond_2

    const-string v0, "MD5"

    move-object v1, v0

    :goto_1
    sget-object v0, Lber;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    if-nez v0, :cond_3

    const-string v0, "text"

    :goto_2
    const-string v3, "text"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_3
    :try_start_0
    invoke-direct {p0, v1, v0}, Lber;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lbjc;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbip;->e(Ljava/lang/Object;)Laxh;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lbip;->a(Laxh;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lbip;->a(Laxh;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v3, "base16"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lbjc;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hash: unknown input format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hash: unknown algorithm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
