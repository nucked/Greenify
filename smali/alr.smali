.class public Lalr;
.super Lalf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lalf",
        "<",
        "Lajd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lakh;)V
    .locals 1

    new-instance v0, Lals;

    invoke-direct {v0, p1}, Lals;-><init>(Lakh;)V

    invoke-direct {p0, p1, v0}, Lalf;-><init>(Lakh;Lalg;)V

    return-void
.end method
