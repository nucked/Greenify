.class public Lahi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln",
            "<",
            "Lafy;",
            "Lahj;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls",
            "<",
            "Lafy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lln;

    invoke-direct {v0}, Lln;-><init>()V

    iput-object v0, p0, Lahi;->a:Lln;

    .line 50
    new-instance v0, Lls;

    invoke-direct {v0}, Lls;-><init>()V

    iput-object v0, p0, Lahi;->b:Lls;

    .line 254
    return-void
.end method


# virtual methods
.method public a(Lafy;)Lafg;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->a(Ljava/lang/Object;)I

    move-result v2

    .line 84
    if-gez v2, :cond_0

    move-object v0, v1

    .line 97
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0, v2}, Lln;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahj;

    .line 88
    if-eqz v0, :cond_2

    iget v3, v0, Lahj;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 89
    iget v1, v0, Lahj;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Lahj;->a:I

    .line 90
    iget-object v1, v0, Lahj;->b:Lafg;

    .line 91
    iget v3, v0, Lahj;->a:I

    if-nez v3, :cond_1

    .line 92
    iget-object v3, p0, Lahi;->a:Lln;

    invoke-virtual {v3, v2}, Lln;->d(I)Ljava/lang/Object;

    .line 93
    invoke-static {v0}, Lahj;->a(Lahj;)V

    :cond_1
    move-object v0, v1

    .line 95
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 97
    goto :goto_0
.end method

.method public a(J)Lafy;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lahi;->b:Lls;

    invoke-virtual {v0, p1, p2}, Lls;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0}, Lln;->clear()V

    .line 58
    iget-object v0, p0, Lahi;->b:Lls;

    invoke-virtual {v0}, Lls;->c()V

    .line 59
    return-void
.end method

.method public a(JLafy;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lahi;->b:Lls;

    invoke-virtual {v0, p1, p2, p3}, Lls;->b(JLjava/lang/Object;)V

    .line 107
    return-void
.end method

.method public a(Lafy;Lafg;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahj;

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lahj;->a()Lahj;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lahi;->a:Lln;

    invoke-virtual {v1, p1, v0}, Lln;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    iput-object p2, v0, Lahj;->b:Lafg;

    .line 73
    iget v1, v0, Lahj;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lahj;->a:I

    .line 74
    return-void
.end method

.method public a(Lahk;)V
    .locals 5

    .prologue
    .line 193
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0}, Lln;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_7

    .line 194
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0, v2}, Lln;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 195
    iget-object v1, p0, Lahi;->a:Lln;

    invoke-virtual {v1, v2}, Lln;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahj;

    .line 196
    iget v3, v1, Lahj;->a:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 198
    invoke-interface {p1, v0}, Lahk;->a(Lafy;)V

    .line 219
    :cond_0
    :goto_1
    invoke-static {v1}, Lahj;->a(Lahj;)V

    .line 193
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 199
    :cond_1
    iget v3, v1, Lahj;->a:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 201
    iget-object v3, v1, Lahj;->b:Lafg;

    iget-object v4, v1, Lahj;->c:Lafg;

    invoke-interface {p1, v0, v3, v4}, Lahk;->a(Lafy;Lafg;Lafg;)V

    goto :goto_1

    .line 202
    :cond_2
    iget v3, v1, Lahj;->a:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    .line 204
    iget-object v3, v1, Lahj;->b:Lafg;

    iget-object v4, v1, Lahj;->c:Lafg;

    invoke-interface {p1, v0, v3, v4}, Lahk;->b(Lafy;Lafg;Lafg;)V

    goto :goto_1

    .line 205
    :cond_3
    iget v3, v1, Lahj;->a:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    .line 207
    iget-object v3, v1, Lahj;->b:Lafg;

    iget-object v4, v1, Lahj;->c:Lafg;

    invoke-interface {p1, v0, v3, v4}, Lahk;->c(Lafy;Lafg;Lafg;)V

    goto :goto_1

    .line 208
    :cond_4
    iget v3, v1, Lahj;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 210
    iget-object v3, v1, Lahj;->b:Lafg;

    const/4 v4, 0x0

    invoke-interface {p1, v0, v3, v4}, Lahk;->a(Lafy;Lafg;Lafg;)V

    goto :goto_1

    .line 211
    :cond_5
    iget v3, v1, Lahj;->a:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 213
    iget-object v3, v1, Lahj;->b:Lafg;

    iget-object v4, v1, Lahj;->c:Lafg;

    invoke-interface {p1, v0, v3, v4}, Lahk;->b(Lafy;Lafg;Lafg;)V

    goto :goto_1

    .line 214
    :cond_6
    iget v0, v1, Lahj;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 221
    :cond_7
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 241
    invoke-static {}, Lahj;->b()V

    .line 242
    return-void
.end method

.method public b(Lafy;Lafg;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahj;

    .line 120
    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lahj;->a()Lahj;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lahi;->a:Lln;

    invoke-virtual {v1, p1, v0}, Lln;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    iget v1, v0, Lahj;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lahj;->a:I

    .line 125
    iput-object p2, v0, Lahj;->b:Lafg;

    .line 126
    return-void
.end method

.method public b(Lafy;)Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahj;

    .line 136
    if-eqz v0, :cond_0

    iget v0, v0, Lahj;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lafy;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahj;

    .line 173
    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lahj;->a()Lahj;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lahi;->a:Lln;

    invoke-virtual {v1, p1, v0}, Lln;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    iget v1, v0, Lahj;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lahj;->a:I

    .line 178
    return-void
.end method

.method public c(Lafy;Lafg;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahj;

    .line 157
    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Lahj;->a()Lahj;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lahi;->a:Lln;

    invoke-virtual {v1, p1, v0}, Lln;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    iput-object p2, v0, Lahj;->c:Lafg;

    .line 162
    iget v1, v0, Lahj;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lahj;->a:I

    .line 163
    return-void
.end method

.method d(Lafy;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahj;

    .line 186
    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v1, v0, Lahj;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lahj;->a:I

    goto :goto_0
.end method

.method e(Lafy;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lahi;->b:Lls;

    invoke-virtual {v0}, Lls;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 229
    iget-object v1, p0, Lahi;->b:Lls;

    invoke-virtual {v1, v0}, Lls;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 230
    iget-object v1, p0, Lahi;->b:Lls;

    invoke-virtual {v1, v0}, Lls;->a(I)V

    .line 234
    :cond_0
    iget-object v0, p0, Lahi;->a:Lln;

    invoke-virtual {v0, p1}, Lln;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahj;

    .line 235
    if-eqz v0, :cond_1

    .line 236
    invoke-static {v0}, Lahj;->a(Lahj;)V

    .line 238
    :cond_1
    return-void

    .line 228
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
