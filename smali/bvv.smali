.class public Lbvv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbvv;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lbvv;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lbvv;->b:Z

    .line 68
    invoke-static {p1}, Lbvn;->b(I)I

    move-result v0

    .line 70
    new-array v1, v0, [I

    iput-object v1, p0, Lbvv;->c:[I

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lbvv;->d:[Ljava/lang/Object;

    .line 72
    iput v2, p0, Lbvv;->e:I

    .line 73
    return-void
.end method

.method private static a([IIII)I
    .locals 4

    .prologue
    .line 358
    add-int v2, p1, p2

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v0, v2

    .line 360
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 361
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 363
    aget v3, p0, v2

    if-ge v3, p3, :cond_0

    move v1, v2

    .line 364
    goto :goto_0

    :cond_0
    move v0, v2

    .line 366
    goto :goto_0

    .line 369
    :cond_1
    add-int v1, p1, p2

    if-ne v0, v1, :cond_3

    .line 370
    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    .line 374
    :cond_2
    :goto_1
    return v0

    .line 371
    :cond_3
    aget v1, p0, v0

    if-eq v1, p3, :cond_2

    .line 374
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 146
    iget v3, p0, Lbvv;->e:I

    .line 148
    iget-object v4, p0, Lbvv;->c:[I

    .line 149
    iget-object v5, p0, Lbvv;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 151
    :goto_0
    if-ge v1, v3, :cond_2

    .line 152
    aget-object v6, v5, v1

    .line 154
    sget-object v7, Lbvv;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 155
    if-eq v1, v0, :cond_0

    .line 156
    aget v7, v4, v1

    aput v7, v4, v0

    .line 157
    aput-object v6, v5, v0

    .line 158
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_2
    iput-boolean v2, p0, Lbvv;->b:Z

    .line 166
    iput v0, p0, Lbvv;->e:I

    .line 169
    return-void
.end method


# virtual methods
.method public a()Lbvv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbvv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 80
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvv;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :try_start_1
    iget-object v1, p0, Lbvv;->c:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lbvv;->c:[I

    .line 82
    iget-object v1, p0, Lbvv;->d:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lbvv;->d:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lbvv;->c:[I

    const/4 v1, 0x0

    iget v2, p0, Lbvv;->e:I

    invoke-static {v0, v1, v2, p1}, Lbvv;->a([IIII)I

    move-result v0

    .line 105
    if-ltz v0, :cond_0

    iget-object v1, p0, Lbvv;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lbvv;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v1, p0, Lbvv;->d:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public b(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 177
    iget-object v0, p0, Lbvv;->c:[I

    iget v1, p0, Lbvv;->e:I

    invoke-static {v0, v5, v1, p1}, Lbvv;->a([IIII)I

    move-result v0

    .line 179
    if-ltz v0, :cond_0

    .line 180
    iget-object v1, p0, Lbvv;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 221
    :goto_0
    return-void

    .line 182
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 184
    iget v1, p0, Lbvv;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lbvv;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lbvv;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 185
    iget-object v1, p0, Lbvv;->c:[I

    aput p1, v1, v0

    .line 186
    iget-object v1, p0, Lbvv;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 190
    :cond_1
    iget-boolean v1, p0, Lbvv;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lbvv;->e:I

    iget-object v2, p0, Lbvv;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 191
    invoke-direct {p0}, Lbvv;->b()V

    .line 194
    iget-object v0, p0, Lbvv;->c:[I

    iget v1, p0, Lbvv;->e:I

    invoke-static {v0, v5, v1, p1}, Lbvv;->a([IIII)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 197
    :cond_2
    iget v1, p0, Lbvv;->e:I

    iget-object v2, p0, Lbvv;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 198
    iget v1, p0, Lbvv;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lbvn;->b(I)I

    move-result v1

    .line 200
    new-array v2, v1, [I

    .line 201
    new-array v1, v1, [Ljava/lang/Object;

    .line 204
    iget-object v3, p0, Lbvv;->c:[I

    iget-object v4, p0, Lbvv;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget-object v3, p0, Lbvv;->d:[Ljava/lang/Object;

    iget-object v4, p0, Lbvv;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iput-object v2, p0, Lbvv;->c:[I

    .line 208
    iput-object v1, p0, Lbvv;->d:[Ljava/lang/Object;

    .line 211
    :cond_3
    iget v1, p0, Lbvv;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 213
    iget-object v1, p0, Lbvv;->c:[I

    iget-object v2, p0, Lbvv;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lbvv;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iget-object v1, p0, Lbvv;->d:[Ljava/lang/Object;

    iget-object v2, p0, Lbvv;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lbvv;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    :cond_4
    iget-object v1, p0, Lbvv;->c:[I

    aput p1, v1, v0

    .line 218
    iget-object v1, p0, Lbvv;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 219
    iget v0, p0, Lbvv;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbvv;->e:I

    goto/16 :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lbvv;->a()Lbvv;

    move-result-object v0

    return-object v0
.end method
