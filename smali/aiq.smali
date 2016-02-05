.class public Laiq;
.super Lair;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lair",
        "<",
        "Laiq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lair;-><init>()V

    const-string v0, "&t"

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Laiq;->a(Ljava/lang/String;Ljava/lang/String;)Lair;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laiq;
    .locals 1

    const-string v0, "&exd"

    invoke-virtual {p0, v0, p1}, Laiq;->a(Ljava/lang/String;Ljava/lang/String;)Lair;

    return-object p0
.end method

.method public a(Z)Laiq;
    .locals 2

    const-string v0, "&exf"

    invoke-static {p1}, Lajv;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laiq;->a(Ljava/lang/String;Ljava/lang/String;)Lair;

    return-object p0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lair;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
