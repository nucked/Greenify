.class public Lcid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcid;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcif;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcif",
            "<TC;TT;>;"
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Lcie;

    iget-object v1, p0, Lcid;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcie;-><init>(Lcid;Ljava/lang/Class;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            "A3:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TA1;>;",
            "Ljava/lang/Class",
            "<TA2;>;",
            "Ljava/lang/Class",
            "<TA3;>;)",
            "Lcig",
            "<TR;TC;TA1;TA2;TA3;>;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Lcih;

    iget-object v1, p0, Lcid;->a:Ljava/lang/Class;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcih;-><init>(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method
