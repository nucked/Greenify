.class final Lbkk;
.super Lbkr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbkr",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final a:Lbkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbkk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lbkk;

    invoke-direct {v0}, Lbkk;-><init>()V

    sput-object v0, Lbkk;->a:Lbkk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lbkr;-><init>()V

    return-void
.end method

.method static a()Lbkr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lbkr",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lbkk;->a:Lbkk;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x598df91c

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "Optional.absent()"

    return-object v0
.end method
