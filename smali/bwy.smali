.class public Lbwy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbwy;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    iput-object p1, p0, Lbwy;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 39
    return-void
.end method

.method static synthetic a(Lbwy;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lbwy;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic b(Lbwy;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lbwy;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public a()Lbwz;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lbwz;

    invoke-direct {v0, p0}, Lbwz;-><init>(Lbwy;)V

    return-object v0
.end method
