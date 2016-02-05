.class public Lli;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Locale;

.field private static final b:Llk;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 116
    new-instance v0, Lll;

    invoke-direct {v0, v2}, Lll;-><init>(Llj;)V

    sput-object v0, Lli;->b:Llk;

    .line 146
    :goto_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lli;->a:Ljava/util/Locale;

    .line 148
    const-string v0, "Arab"

    sput-object v0, Lli;->c:Ljava/lang/String;

    .line 149
    const-string v0, "Hebr"

    sput-object v0, Lli;->d:Ljava/lang/String;

    return-void

    .line 118
    :cond_0
    new-instance v0, Llk;

    invoke-direct {v0, v2}, Llk;-><init>(Llj;)V

    sput-object v0, Lli;->b:Llk;

    goto :goto_0
.end method

.method public static a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lli;->b:Llk;

    invoke-virtual {v0, p0}, Llk;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lli;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lli;->d:Ljava/lang/String;

    return-object v0
.end method
