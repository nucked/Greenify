.class Lzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmv;


# instance fields
.field final synthetic a:Lzt;


# direct methods
.method constructor <init>(Lzt;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lzu;->a:Lzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lzu;->a:Lzt;

    invoke-static {v0}, Lzt;->a(Lzt;)Lzp;

    move-result-object v0

    iget-object v1, p0, Lzu;->a:Lzt;

    invoke-virtual {v0, v1}, Lzp;->a(Lzt;)V

    .line 666
    return-void
.end method
