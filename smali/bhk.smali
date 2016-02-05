.class Lbhk;
.super Ljava/lang/Object;

# interfaces
.implements Lbjg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbjg",
        "<",
        "Ljava/lang/String;",
        "Lbho;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbhi;


# direct methods
.method constructor <init>(Lbhi;)V
    .locals 0

    iput-object p1, p0, Lbhk;->a:Lbhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lbho;

    invoke-virtual {p0, p1, p2}, Lbhk;->a(Ljava/lang/String;Lbho;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Lbho;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lbho;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
