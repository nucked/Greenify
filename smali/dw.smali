.class Ldw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm;


# instance fields
.field final synthetic a:Lei;

.field final synthetic b:Ldv;


# direct methods
.method constructor <init>(Ldv;Lei;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Ldw;->b:Ldv;

    iput-object p2, p0, Ldw;->a:Lei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Ldw;->a:Lei;

    invoke-virtual {v0}, Lei;->o()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
