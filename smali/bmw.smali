.class public abstract Lbmw;
.super Lbmr;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lbmr",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lbmr;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 6

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 249
    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_0

    .line 251
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 252
    :goto_0
    int-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    int-to-double v4, p0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 253
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    if-ge p0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lbkt;->a(ZLjava/lang/Object;)V

    move v0, v1

    .line 260
    :cond_1
    return v0

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static varargs a(I[Ljava/lang/Object;)Lbmw;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lbmw",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 179
    packed-switch p0, :pswitch_data_0

    .line 189
    invoke-static {p0}, Lbmw;->a(I)I

    move-result v5

    .line 190
    new-array v6, v5, [Ljava/lang/Object;

    .line 191
    add-int/lit8 v7, v5, -0x1

    move v3, v4

    move v1, v4

    move v2, v4

    .line 194
    :goto_0
    if-ge v3, p0, :cond_2

    .line 195
    aget-object v0, p1, v3

    invoke-static {v0, v3}, Lboj;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 196
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 197
    invoke-static {v9}, Lbmq;->a(I)I

    move-result v0

    .line 198
    :goto_1
    and-int v10, v0, v7

    .line 199
    aget-object v11, v6, v10

    .line 200
    if-nez v11, :cond_0

    .line 202
    add-int/lit8 v0, v1, 0x1

    aput-object v8, p1, v1

    .line 203
    aput-object v8, v6, v10

    .line 204
    add-int v1, v2, v9

    .line 194
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 181
    :pswitch_0
    invoke-static {}, Lbmw;->c()Lbmw;

    move-result-object v0

    .line 225
    :goto_3
    return-object v0

    .line 184
    :pswitch_1
    aget-object v0, p1, v4

    .line 185
    invoke-static {v0}, Lbmw;->a(Ljava/lang/Object;)Lbmw;

    move-result-object v0

    goto :goto_3

    .line 206
    :cond_0
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v0, v1

    move v1, v2

    .line 207
    goto :goto_2

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, v1, p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 212
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 215
    aget-object v1, p1, v4

    .line 216
    new-instance v0, Lbou;

    invoke-direct {v0, v1, v2}, Lbou;-><init>(Ljava/lang/Object;I)V

    goto :goto_3

    .line 217
    :cond_3
    invoke-static {v1}, Lbmw;->a(I)I

    move-result v0

    if-eq v5, v0, :cond_4

    .line 220
    invoke-static {v1, p1}, Lbmw;->a(I[Ljava/lang/Object;)Lbmw;

    move-result-object v0

    goto :goto_3

    .line 222
    :cond_4
    array-length v0, p1

    if-ge v1, v0, :cond_5

    invoke-static {p1, v1}, Lboj;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 225
    :cond_5
    new-instance v0, Lbon;

    invoke-direct {v0, p1, v2, v6, v7}, Lbon;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_3

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Lbmw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lbmw",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lbou;

    invoke-direct {v0, p0}, Lbou;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)Lbmw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lbmw",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 272
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 278
    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lbmw;->a(I[Ljava/lang/Object;)Lbmw;

    move-result-object v0

    :goto_0
    return-object v0

    .line 274
    :pswitch_0
    invoke-static {}, Lbmw;->c()Lbmw;

    move-result-object v0

    goto :goto_0

    .line 276
    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lbmw;->a(Ljava/lang/Object;)Lbmw;

    move-result-object v0

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c()Lbmw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lbmw",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lbmm;->a:Lbmm;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lboy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lboy",
            "<TE;>;"
        }
    .end annotation
.end method

.method b()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    if-ne p1, p0, :cond_0

    .line 392
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    .line 393
    :cond_0
    instance-of v0, p1, Lbmw;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbmw;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lbmw;

    invoke-virtual {v0}, Lbmw;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbmw;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 397
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {p0, p1}, Lbor;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 403
    invoke-static {p0}, Lbor;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lbmw;->a()Lboy;

    move-result-object v0

    return-object v0
.end method
