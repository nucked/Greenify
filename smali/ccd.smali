.class final Lccd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbkl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbkl",
        "<",
        "Ljava/lang/String;",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 36
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccd;->a(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
