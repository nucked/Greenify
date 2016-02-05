.class Lmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmp;


# instance fields
.field final synthetic a:Lmg;

.field final synthetic b:Lmh;


# direct methods
.method constructor <init>(Lmh;Lmg;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lmi;->b:Lmh;

    iput-object p2, p0, Lmi;->a:Lmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmi;->a:Lmg;

    invoke-virtual {v0, p1, p2}, Lmg;->a(Landroid/view/View;I)V

    .line 160
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lmi;->a:Lmg;

    new-instance v1, Lrl;

    invoke-direct {v1, p2}, Lrl;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lmg;->a(Landroid/view/View;Lrl;)V

    .line 144
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lmi;->a:Lmg;

    invoke-virtual {v0, p1, p2}, Lmg;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lmi;->a:Lmg;

    invoke-virtual {v0, p1, p2, p3}, Lmg;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lmi;->a:Lmg;

    invoke-virtual {v0, p1, p2}, Lmg;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 138
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lmi;->a:Lmg;

    invoke-virtual {v0, p1, p2}, Lmg;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 149
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lmi;->a:Lmg;

    invoke-virtual {v0, p1, p2}, Lmg;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 165
    return-void
.end method
