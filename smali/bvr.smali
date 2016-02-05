.class Lbvr;
.super Lbvq;
.source "SourceFile"


# static fields
.field static final b:Lbvt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lbvr;

    invoke-direct {v0}, Lbvr;-><init>()V

    sput-object v0, Lbvr;->b:Lbvt;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lbvq;-><init>()V

    return-void
.end method
