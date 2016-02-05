.class public Lgg;
.super Lhc;
.source "SourceFile"


# static fields
.field public static final d:Lhd;


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/app/PendingIntent;

.field private final e:Landroid/os/Bundle;

.field private final f:[Lhy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2171
    new-instance v0, Lgh;

    invoke-direct {v0}, Lgh;-><init>()V

    sput-object v0, Lgg;->d:Lhd;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1841
    iget v0, p0, Lgg;->a:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lgg;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Lgg;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lgg;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()[Lhy;
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lgg;->f:[Lhy;

    return-object v0
.end method

.method public synthetic f()[Lig;
    .locals 1

    .prologue
    .line 1808
    invoke-virtual {p0}, Lgg;->e()[Lhy;

    move-result-object v0

    return-object v0
.end method
