.class final Lbxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lbxz;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lbxz;->a:Landroid/app/Activity;

    invoke-static {v0}, Lbxt;->b(Landroid/app/Activity;)V

    .line 730
    return-void
.end method
