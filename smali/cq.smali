.class Lcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv;


# instance fields
.field final synthetic a:Lcr;

.field final synthetic b:Lcp;


# direct methods
.method constructor <init>(Lcp;Lcr;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcq;->b:Lcp;

    iput-object p2, p0, Lcq;->a:Lcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcq;->a:Lcr;

    iget-object v1, p0, Lcq;->b:Lcp;

    invoke-interface {v0, v1}, Lcr;->a(Lcp;)V

    .line 134
    return-void
.end method
