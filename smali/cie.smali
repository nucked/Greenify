.class Lcie;
.super Lcif;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcif",
        "<TC;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcid;


# direct methods
.method constructor <init>(Lcid;Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcie;->a:Lcid;

    invoke-direct {p0, p2, p3, p4}, Lcif;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method
