.class public abstract Lbmt;
.super Lbmr;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lbmr",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lbmt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbmt",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lbom;

    sget-object v1, Lboj;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lbom;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lbmt;->a:Lbmt;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lbmr;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lbmt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lbmt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lbot;

    invoke-direct {v0, p0}, Lbot;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lbmt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lbmt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lbmt;->b([Ljava/lang/Object;)Lbmt;

    move-result-object v0

    return-object v0
.end method

.method static a([Ljava/lang/Object;)Lbmt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lbmt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 312
    array-length v0, p0

    invoke-static {p0, v0}, Lbmt;->b([Ljava/lang/Object;I)Lbmt;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lbmt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lbmt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lbmt;->a:Lbmt;

    return-object v0
.end method

.method private static varargs b([Ljava/lang/Object;)Lbmt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lbmt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {p0}, Lboj;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbmt;->a([Ljava/lang/Object;)Lbmt;

    move-result-object v0

    return-object v0
.end method

.method static b([Ljava/lang/Object;I)Lbmt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lbmt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 320
    packed-switch p1, :pswitch_data_0

    .line 328
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 329
    invoke-static {p0, p1}, Lboj;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 331
    :cond_0
    new-instance v0, Lbom;

    invoke-direct {v0, p0}, Lbom;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 322
    :pswitch_0
    invoke-static {}, Lbmt;->b()Lbmt;

    move-result-object v0

    goto :goto_0

    .line 325
    :pswitch_1
    new-instance v0, Lbot;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lbot;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 4

    .prologue
    .line 494
    invoke-virtual {p0}, Lbmt;->size()I

    move-result v1

    .line 495
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 496
    add-int v2, p2, v0

    invoke-virtual {p0, v0}, Lbmt;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    add-int v0, p2, v1

    return v0
.end method

.method public a(II)Lbmt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lbmt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lbmt;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lbkt;->a(III)V

    .line 382
    sub-int v0, p2, p1

    .line 383
    packed-switch v0, :pswitch_data_0

    .line 389
    invoke-virtual {p0, p1, p2}, Lbmt;->b(II)Lbmt;

    move-result-object v0

    :goto_0
    return-object v0

    .line 385
    :pswitch_0
    invoke-static {}, Lbmt;->b()Lbmt;

    move-result-object v0

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-virtual {p0, p1}, Lbmt;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbmt;->a(Ljava/lang/Object;)Lbmt;

    move-result-object v0

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Lboy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lboy",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0}, Lbmt;->c()Lboz;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lboz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lboz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Lbmu;

    invoke-virtual {p0}, Lbmt;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lbmu;-><init>(Lbmt;II)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method b(II)Lbmt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lbmt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lbmv;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Lbmv;-><init>(Lbmt;II)V

    return-object v0
.end method

.method public c()Lboz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lboz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbmt;->a(I)Lboz;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lbmt;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 567
    invoke-static {p0, p1}, Lbnk;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 571
    const/4 v1, 0x1

    .line 572
    invoke-virtual {p0}, Lbmt;->size()I

    move-result v2

    .line 573
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 574
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Lbmt;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 576
    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 358
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lbnk;->b(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lbmt;->a()Lboy;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 363
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lbnk;->c(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lbmt;->c()Lboz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lbmt;->a(I)Lboz;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lbmt;->a(II)Lbmt;

    move-result-object v0

    return-object v0
.end method
