.class public Lais;
.super Lair;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lair",
        "<",
        "Lais;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lair;-><init>()V

    const-string v0, "&t"

    const-string v1, "screenview"

    invoke-virtual {p0, v0, v1}, Lais;->a(Ljava/lang/String;Ljava/lang/String;)Lair;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lair;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
