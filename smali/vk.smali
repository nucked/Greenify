.class public Lvk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lvp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 144
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 145
    new-instance v0, Lvn;

    invoke-direct {v0}, Lvn;-><init>()V

    sput-object v0, Lvk;->a:Lvp;

    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 147
    new-instance v0, Lvm;

    invoke-direct {v0}, Lvm;-><init>()V

    sput-object v0, Lvk;->a:Lvp;

    goto :goto_0

    .line 148
    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 149
    new-instance v0, Lvo;

    invoke-direct {v0}, Lvo;-><init>()V

    sput-object v0, Lvk;->a:Lvp;

    goto :goto_0

    .line 151
    :cond_2
    new-instance v0, Lvl;

    invoke-direct {v0}, Lvl;-><init>()V

    sput-object v0, Lvk;->a:Lvp;

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 173
    sget-object v0, Lvk;->a:Lvp;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lvp;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 174
    return-void
.end method
