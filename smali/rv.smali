.class public Lrv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p1, p0, Lrv;->a:Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public static a(IIZI)Lrv;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Lrv;

    invoke-static {}, Lrl;->r()Lrp;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lrp;->a(IIZI)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lrv;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
