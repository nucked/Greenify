.class Lch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcg;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>(ILcg;)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch;->a:Ljava/lang/ref/WeakReference;

    .line 174
    iput p1, p0, Lch;->b:I

    .line 175
    return-void
.end method

.method static synthetic a(Lch;I)I
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lch;->b:I

    return p1
.end method

.method static synthetic a(Lch;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lch;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lch;)I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lch;->b:I

    return v0
.end method


# virtual methods
.method a(Lcg;)Z
    .locals 1

    .prologue
    .line 178
    if-eqz p1, :cond_0

    iget-object v0, p0, Lch;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
