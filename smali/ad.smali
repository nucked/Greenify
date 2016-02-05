.class public final Lad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkw",
        "<",
        "Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
    .locals 1

    .prologue
    .line 1117
    new-instance v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
    .locals 1

    .prologue
    .line 1122
    new-array v0, p1, [Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    return-object v0
.end method

.method public synthetic b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0, p1, p2}, Lad;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, Lad;->a(I)[Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    move-result-object v0

    return-object v0
.end method
