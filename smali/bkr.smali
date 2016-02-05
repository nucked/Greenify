.class public abstract Lbkr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lbkr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lbkr",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lblf;

    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lblf;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d()Lbkr;
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
    .line 78
    invoke-static {}, Lbkk;->a()Lbkr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
