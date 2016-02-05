.class public Lrw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lrw;->a:Ljava/lang/Object;

    .line 429
    return-void
.end method

.method static synthetic a(Lrw;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lrw;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(IIIIZZ)Lrw;
    .locals 8

    .prologue
    .line 423
    new-instance v7, Lrw;

    invoke-static {}, Lrl;->r()Lrp;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lrp;->a(IIIIZZ)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v0}, Lrw;-><init>(Ljava/lang/Object;)V

    return-object v7
.end method
