.class public Lhy;
.super Lig;
.source "SourceFile"


# static fields
.field public static final a:Lih;

.field private static final g:Lia;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/CharSequence;

.field private final d:[Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 254
    new-instance v0, Lib;

    invoke-direct {v0}, Lib;-><init>()V

    sput-object v0, Lhy;->g:Lia;

    .line 263
    :goto_0
    new-instance v0, Lhz;

    invoke-direct {v0}, Lhz;-><init>()V

    sput-object v0, Lhy;->a:Lih;

    return-void

    .line 255
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 256
    new-instance v0, Lid;

    invoke-direct {v0}, Lid;-><init>()V

    sput-object v0, Lhy;->g:Lia;

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Lic;

    invoke-direct {v0}, Lic;-><init>()V

    sput-object v0, Lhy;->g:Lia;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lhy;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lhy;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lhy;->e:Z

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lhy;->f:Landroid/os/Bundle;

    return-object v0
.end method
