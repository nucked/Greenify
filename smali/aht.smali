.class Laht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lahr;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lahr;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Laht;->a:Lahr;

    iput p2, p0, Laht;->b:I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Laht;->a:Lahr;

    invoke-static {v0}, Lahr;->b(Lahr;)Lahu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Laht;->a:Lahr;

    iget-object v0, v0, Lahr;->a:Lahq;

    iget v1, p0, Laht;->b:I

    invoke-interface {v0, v1}, Lahq;->a(I)J

    move-result-wide v0

    .line 145
    iget-object v2, p0, Laht;->a:Lahr;

    invoke-static {v2}, Lahr;->b(Lahr;)Lahu;

    move-result-object v2

    iget v3, p0, Laht;->b:I

    invoke-interface {v2, p1, v3, v0, v1}, Lahu;->a(Landroid/view/View;IJ)V

    .line 147
    :cond_0
    return-void
.end method
