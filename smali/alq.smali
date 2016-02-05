.class public final Lalq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final b:Layq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layq",
            "<TV;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Layq;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Layq",
            "<TV;>;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lalq;->b:Layq;

    iput-object p2, p0, Lalq;->a:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/String;F)Lalq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lalq",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p1}, Lalq;->a(Ljava/lang/String;FF)Lalq;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;FF)Lalq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF)",
            "Lalq",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lalq;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/Float;)Layq;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lalq;-><init>(Layq;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;I)Lalq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lalq",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p1}, Lalq;->a(Ljava/lang/String;II)Lalq;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;II)Lalq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lalq",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lalq;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/Integer;)Layq;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lalq;-><init>(Layq;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;J)Lalq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lalq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p1, p2}, Lalq;->a(Ljava/lang/String;JJ)Lalq;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;JJ)Lalq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lalq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lalq;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/Long;)Layq;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lalq;-><init>(Layq;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lalq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lalq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p1}, Lalq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lalq;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lalq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lalq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lalq;

    invoke-static {p0, p2}, Layq;->a(Ljava/lang/String;Ljava/lang/String;)Layq;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lalq;-><init>(Layq;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Z)Lalq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lalq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p1}, Lalq;->a(Ljava/lang/String;ZZ)Lalq;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;ZZ)Lalq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lalq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lalq;

    invoke-static {p0, p2}, Layq;->a(Ljava/lang/String;Z)Layq;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lalq;-><init>(Layq;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lalq;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalq;->c:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Late;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Layq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lalq;->b:Layq;

    invoke-virtual {v0}, Layq;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lalq;->a:Ljava/lang/Object;

    goto :goto_0
.end method
