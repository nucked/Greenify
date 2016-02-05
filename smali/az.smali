.class Laz;
.super Lay;
.source "SourceFile"


# instance fields
.field final synthetic b:Lav;


# direct methods
.method private constructor <init>(Lav;)V
    .locals 1

    .prologue
    .line 258
    iput-object p1, p0, Laz;->b:Lav;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lay;-><init>(Lav;Law;)V

    return-void
.end method

.method synthetic constructor <init>(Lav;Law;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0, p1}, Laz;-><init>(Lav;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Laz;->b:Lav;

    invoke-static {v0}, Lav;->a(Lav;)F

    move-result v0

    iget-object v1, p0, Laz;->b:Lav;

    invoke-static {v1}, Lav;->b(Lav;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method
