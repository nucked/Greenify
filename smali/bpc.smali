.class public final Lbpc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lbox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbox",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 807
    new-instance v0, Lbpe;

    invoke-direct {v0}, Lbpe;-><init>()V

    sput-object v0, Lbpc;->a:Lbox;

    return-void
.end method

.method public static varargs a(Ljava/io/File;[Lbpb;)Lbpa;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lbpf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbpf;-><init>(Ljava/io/File;[Lbpb;Lbpd;)V

    return-object v0
.end method
