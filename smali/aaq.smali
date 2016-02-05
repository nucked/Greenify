.class public Laaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lyu;

.field final synthetic b:Landroid/support/v7/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionBarContextView;Lyu;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Laaq;->b:Landroid/support/v7/widget/ActionBarContextView;

    iput-object p2, p0, Laaq;->a:Lyu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Laaq;->a:Lyu;

    invoke-virtual {v0}, Lyu;->c()V

    .line 168
    return-void
.end method
