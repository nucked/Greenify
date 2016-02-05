.class Lals;
.super Ljava/lang/Object;

# interfaces
.implements Lalg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lalg",
        "<",
        "Lajd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lakh;

.field private final b:Lajd;


# direct methods
.method public constructor <init>(Lakh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lals;->a:Lakh;

    new-instance v0, Lajd;

    invoke-direct {v0}, Lajd;-><init>()V

    iput-object v0, p0, Lals;->b:Lajd;

    return-void
.end method


# virtual methods
.method public a()Lajd;
    .locals 1

    iget-object v0, p0, Lals;->b:Lajd;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lals;->b:Lajd;

    iput p2, v0, Lajd;->d:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lals;->a:Lakh;

    invoke-virtual {v0}, Lakh;->f()Lajk;

    move-result-object v0

    const-string v1, "Int xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lajk;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lals;->b:Lajd;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lajd;->e:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lals;->a:Lakh;

    invoke-virtual {v0}, Lakh;->f()Lajk;

    move-result-object v0

    const-string v1, "Bool xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lajk;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public synthetic b()Lale;
    .locals 1

    invoke-virtual {p0}, Lals;->a()Lajd;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lals;->b:Lajd;

    iput-object p2, v0, Lajd;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lals;->b:Lajd;

    iput-object p2, v0, Lajd;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lals;->b:Lajd;

    iput-object p2, v0, Lajd;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lals;->a:Lakh;

    invoke-virtual {v0}, Lakh;->f()Lajk;

    move-result-object v0

    const-string v1, "String xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lajk;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
