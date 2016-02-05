.class public abstract Lbok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lbok;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lbok",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lboi;->a:Lboi;

    return-object v0
.end method


# virtual methods
.method public a()Lbok;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lbok",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v0, Lbop;

    invoke-direct {v0, p0}, Lbop;-><init>(Lbok;)V

    return-object v0
.end method

.method public a(Lbkl;)Lbok;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lbkl",
            "<TF;+TT;>;)",
            "Lbok",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Lbmj;

    invoke-direct {v0, p1, p0}, Lbmj;-><init>(Lbkl;Lbok;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method
