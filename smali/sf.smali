.class Lsf;
.super Lsh;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lsh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lsg;

    invoke-direct {v0, p0, p1}, Lsg;-><init>(Lsf;Lsb;)V

    invoke-static {v0}, Lsl;->a(Lsn;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
