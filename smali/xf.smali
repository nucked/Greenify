.class Lxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladc;


# instance fields
.field final synthetic a:Lxb;


# direct methods
.method constructor <init>(Lxb;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lxf;->a:Lxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lxf;->a:Lxb;

    invoke-static {v0}, Lxb;->b(Lxb;)V

    .line 472
    return-void
.end method
