.class Lahj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static d:Lmb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb",
            "<",
            "Lahj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Lafg;

.field c:Lafg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lmc;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lmc;-><init>(I)V

    sput-object v0, Lahj;->d:Lmb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method static a()Lahj;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lahj;->d:Lmb;

    invoke-interface {v0}, Lmb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahj;

    .line 276
    if-nez v0, :cond_0

    new-instance v0, Lahj;

    invoke-direct {v0}, Lahj;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Lahj;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lahj;->a:I

    .line 281
    iput-object v1, p0, Lahj;->b:Lafg;

    .line 282
    iput-object v1, p0, Lahj;->c:Lafg;

    .line 283
    sget-object v0, Lahj;->d:Lmb;

    invoke-interface {v0, p0}, Lmb;->a(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method static b()V
    .locals 1

    .prologue
    .line 288
    :cond_0
    sget-object v0, Lahj;->d:Lmb;

    invoke-interface {v0}, Lmb;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 289
    return-void
.end method
