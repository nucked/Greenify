.class Lbef;
.super Lbem;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lawt;->I:Lawt;

    invoke-virtual {v0}, Lawt;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbef;->a:Ljava/lang/String;

    sget-object v0, Lawu;->q:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbef;->b:Ljava/lang/String;

    sget-object v0, Lawu;->bP:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbef;->c:Ljava/lang/String;

    sget-object v0, Lawu;->bl:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbef;->d:Ljava/lang/String;

    sget-object v0, Lawu;->bZ:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbef;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lbef;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lbef;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbem;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Laxh;
    .locals 5
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

    sget-object v0, Lbef;->b:Ljava/lang/String;

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

    move-result-object v4

    sget-object v0, Lbef;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    if-nez v0, :cond_2

    const-string v0, "text"

    move-object v1, v0

    :goto_1
    sget-object v0, Lbef;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    if-nez v0, :cond_3

    const-string v0, "base16"

    move-object v2, v0

    :goto_2
    const/4 v3, 0x2

    sget-object v0, Lbef;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lbip;->d(Laxh;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    :goto_3
    :try_start_0
    const-string v3, "text"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_4
    const-string v3, "base16"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v1}, Lbjc;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lbip;->e(Ljava/lang/Object;)Laxh;

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

    move-object v2, v0

    goto :goto_2

    :cond_4
    :try_start_1
    const-string v3, "base16"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v4}, Lbjc;->a(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v3, "base64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_4

    :cond_6
    const-string v3, "base64url"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    or-int/lit8 v1, v0, 0x8

    invoke-static {v4, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encode: unknown input format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lbip;->f()Laxh;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Encode: invalid input:"

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v3, "base64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    const-string v3, "base64url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    or-int/lit8 v0, v0, 0x8

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encode: unknown output format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto/16 :goto_3
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
