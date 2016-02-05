.class public abstract Lbll;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lbll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lblm;

    invoke-direct {v0}, Lblm;-><init>()V

    sput-object v0, Lbll;->a:Lbll;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lbll;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lbll;->a:Lbll;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
