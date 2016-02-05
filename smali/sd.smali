.class Lsd;
.super Lsh;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lsh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lse;

    invoke-direct {v0, p0, p1}, Lse;-><init>(Lsd;Lsb;)V

    invoke-static {v0}, Lsi;->a(Lsk;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
