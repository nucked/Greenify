.class public Lcik;
.super Lcij;
.source "SourceFile"


# instance fields
.field private final c:Lbwf;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, v0}, Lcij;-><init>(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Lbwf;

    invoke-direct {v0, p1, p2}, Lbwf;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object v0, p0, Lcik;->c:Lbwf;

    .line 69
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcij;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcik;->c:Lbwf;

    invoke-virtual {v0, p1, p2}, Lbwf;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method
