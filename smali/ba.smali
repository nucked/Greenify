.class Lba;
.super Lay;
.source "SourceFile"


# instance fields
.field final synthetic b:Lav;


# direct methods
.method private constructor <init>(Lav;)V
    .locals 1

    .prologue
    .line 251
    iput-object p1, p0, Lba;->b:Lav;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lay;-><init>(Lav;Law;)V

    return-void
.end method

.method synthetic constructor <init>(Lav;Law;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lba;-><init>(Lav;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lba;->b:Lav;

    invoke-static {v0}, Lav;->a(Lav;)F

    move-result v0

    return v0
.end method
