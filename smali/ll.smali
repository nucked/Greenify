.class Lll;
.super Llk;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llk;-><init>(Llj;)V

    return-void
.end method

.method synthetic constructor <init>(Llj;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lll;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 108
    invoke-static {p1}, Llm;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method
