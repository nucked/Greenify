.class public Lche;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(IILandroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lche;->a:I

    iput p2, p0, Lche;->b:I

    iput-object p3, p0, Lche;->c:Landroid/view/View$OnClickListener;

    return-void
.end method
