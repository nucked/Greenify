.class public final Lckx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lckv;

.field private static final b:Lckv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcky;

    invoke-direct {v0}, Lcky;-><init>()V

    sput-object v0, Lckx;->a:Lckv;

    .line 106
    new-instance v0, Lckz;

    invoke-direct {v0}, Lckz;-><init>()V

    sput-object v0, Lckx;->b:Lckv;

    return-void
.end method

.method public static a()Lcla;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcla;

    invoke-direct {v0}, Lcla;-><init>()V

    return-object v0
.end method

.method static synthetic b()Lckv;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lckx;->a:Lckv;

    return-object v0
.end method
