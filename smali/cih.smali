.class Lcih;
.super Lcii;
.source "SourceFile"

# interfaces
.implements Lcig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "A1:",
        "Ljava/lang/Object;",
        "A2:",
        "Ljava/lang/Object;",
        "A3:",
        "Ljava/lang/Object;",
        ">",
        "Lcii",
        "<TR;TC;>;",
        "Lcig",
        "<TR;TC;TA1;TA2;TA3;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TC;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TA1;>;",
            "Ljava/lang/Class",
            "<TA2;>;",
            "Ljava/lang/Class",
            "<TA3;>;)V"
        }
    .end annotation

    .prologue
    .line 367
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const/4 v1, 0x2

    aput-object p6, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lcii;-><init>(Ljava/lang/Class;Ljava/lang/String;I[Ljava/lang/Class;)V

    .line 368
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TA1;TA2;TA3;)TR;"
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-super {p0, p1, v0}, Lcii;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
