.class public abstract Lblo;
.super Lboy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lboy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lblq;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lboy;-><init>()V

    .line 65
    sget-object v0, Lblq;->b:Lblq;

    iput-object v0, p0, Lblo;->a:Lblq;

    .line 68
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lblq;->d:Lblq;

    iput-object v0, p0, Lblo;->a:Lblq;

    .line 143
    invoke-virtual {p0}, Lblo;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lblo;->b:Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lblo;->a:Lblq;

    sget-object v1, Lblq;->c:Lblq;

    if-eq v0, v1, :cond_0

    .line 145
    sget-object v0, Lblq;->a:Lblq;

    iput-object v0, p0, Lblo;->a:Lblq;

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lblq;->c:Lblq;

    iput-object v0, p0, Lblo;->a:Lblq;

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lblo;->a:Lblq;

    sget-object v3, Lblq;->d:Lblq;

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lbkt;->b(Z)V

    .line 131
    sget-object v0, Lblp;->a:[I

    iget-object v3, p0, Lblo;->a:Lblq;

    invoke-virtual {v3}, Lblq;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-direct {p0}, Lblo;->c()Z

    move-result v2

    :goto_1
    :pswitch_0
    return v2

    :cond_0
    move v0, v2

    .line 130
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 135
    goto :goto_1

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lblo;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 156
    :cond_0
    sget-object v0, Lblq;->b:Lblq;

    iput-object v0, p0, Lblo;->a:Lblq;

    .line 157
    iget-object v0, p0, Lblo;->b:Ljava/lang/Object;

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lblo;->b:Ljava/lang/Object;

    .line 159
    return-object v0
.end method
