.class public Lei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final a:Lmd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmd",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final j:Ljava/lang/Object;


# instance fields
.field public A:Z

.field B:I

.field public C:Leu;

.field D:Ler;

.field E:Leu;

.field F:Lei;

.field public G:I

.field public H:I

.field public I:Ljava/lang/String;

.field J:Z

.field public K:Z

.field public L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:I

.field R:Landroid/view/ViewGroup;

.field S:Landroid/view/View;

.field T:Landroid/view/View;

.field U:Z

.field V:Z

.field W:Lfv;

.field X:Z

.field Y:Z

.field Z:Ljava/lang/Object;

.field aa:Ljava/lang/Object;

.field ab:Ljava/lang/Object;

.field ac:Ljava/lang/Object;

.field ad:Ljava/lang/Object;

.field ae:Ljava/lang/Object;

.field af:Ljava/lang/Boolean;

.field ag:Ljava/lang/Boolean;

.field ah:Lij;

.field ai:Lij;

.field k:I

.field l:Landroid/view/View;

.field m:I

.field public n:Landroid/os/Bundle;

.field o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field q:Ljava/lang/String;

.field public r:Landroid/os/Bundle;

.field s:Lei;

.field t:I

.field u:I

.field v:Z

.field w:Z

.field x:Z

.field public y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lmd;

    invoke-direct {v0}, Lmd;-><init>()V

    sput-object v0, Lei;->a:Lmd;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lei;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lei;->k:I

    .line 197
    iput v2, p0, Lei;->p:I

    .line 209
    iput v2, p0, Lei;->t:I

    .line 280
    iput-boolean v3, p0, Lei;->O:Z

    .line 302
    iput-boolean v3, p0, Lei;->V:Z

    .line 308
    iput-object v1, p0, Lei;->Z:Ljava/lang/Object;

    .line 309
    sget-object v0, Lei;->j:Ljava/lang/Object;

    iput-object v0, p0, Lei;->aa:Ljava/lang/Object;

    .line 310
    iput-object v1, p0, Lei;->ab:Ljava/lang/Object;

    .line 311
    sget-object v0, Lei;->j:Ljava/lang/Object;

    iput-object v0, p0, Lei;->ac:Ljava/lang/Object;

    .line 312
    iput-object v1, p0, Lei;->ad:Ljava/lang/Object;

    .line 313
    sget-object v0, Lei;->j:Ljava/lang/Object;

    iput-object v0, p0, Lei;->ae:Ljava/lang/Object;

    .line 317
    iput-object v1, p0, Lei;->ah:Lij;

    .line 318
    iput-object v1, p0, Lei;->ai:Lij;

    .line 391
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lei;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lei;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lei;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lei;
    .locals 4

    .prologue
    .line 417
    :try_start_0
    sget-object v0, Lei;->a:Lmd;

    invoke-virtual {v0, p1}, Lmd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 418
    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 421
    sget-object v1, Lei;->a:Lmd;

    invoke-virtual {v1, p1, v0}, Lmd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei;

    .line 424
    if-eqz p2, :cond_1

    .line 425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 426
    iput-object p2, v0, Lei;->r:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 428
    :cond_1
    return-object v0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    new-instance v1, Lek;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lek;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 433
    :catch_1
    move-exception v0

    .line 434
    new-instance v1, Lek;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lek;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 437
    :catch_2
    move-exception v0

    .line 438
    new-instance v1, Lek;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lek;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 454
    :try_start_0
    sget-object v0, Lei;->a:Lmd;

    invoke-virtual {v0, p1}, Lmd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 455
    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 458
    sget-object v1, Lei;->a:Lmd;

    invoke-virtual {v1, p1, v0}, Lmd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    const-class v1, Lei;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 462
    :goto_0
    return v0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lei;->ag:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lei;->ag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 1816
    iget-object v0, p0, Lei;->af:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lei;->af:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method C()V
    .locals 3

    .prologue
    .line 1916
    new-instance v0, Leu;

    invoke-direct {v0}, Leu;-><init>()V

    iput-object v0, p0, Lei;->E:Leu;

    .line 1917
    iget-object v0, p0, Lei;->E:Leu;

    iget-object v1, p0, Lei;->D:Ler;

    new-instance v2, Lej;

    invoke-direct {v2, p0}, Lej;-><init>(Lei;)V

    invoke-virtual {v0, v1, v2, p0}, Leu;->a(Ler;Lep;Lei;)V

    .line 1932
    return-void
.end method

.method D()V
    .locals 3

    .prologue
    .line 1981
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->l()V

    .line 1983
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->h()Z

    .line 1985
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lei;->P:Z

    .line 1986
    invoke-virtual {p0}, Lei;->c()V

    .line 1987
    iget-boolean v0, p0, Lei;->P:Z

    if-nez v0, :cond_1

    .line 1988
    new-instance v0, Lik;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lik;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1991
    :cond_1
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_2

    .line 1992
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->o()V

    .line 1994
    :cond_2
    iget-object v0, p0, Lei;->W:Lfv;

    if-eqz v0, :cond_3

    .line 1995
    iget-object v0, p0, Lei;->W:Lfv;

    invoke-virtual {v0}, Lfv;->g()V

    .line 1997
    :cond_3
    return-void
.end method

.method E()V
    .locals 3

    .prologue
    .line 2000
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 2001
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->l()V

    .line 2002
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->h()Z

    .line 2004
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lei;->P:Z

    .line 2005
    invoke-virtual {p0}, Lei;->p()V

    .line 2006
    iget-boolean v0, p0, Lei;->P:Z

    if-nez v0, :cond_1

    .line 2007
    new-instance v0, Lik;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lik;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2010
    :cond_1
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_2

    .line 2011
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->p()V

    .line 2012
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->h()Z

    .line 2014
    :cond_2
    return-void
.end method

.method F()V
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lei;->onLowMemory()V

    .line 2025
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->v()V

    .line 2028
    :cond_0
    return-void
.end method

.method G()V
    .locals 3

    .prologue
    .line 2119
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->q()V

    .line 2122
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lei;->P:Z

    .line 2123
    invoke-virtual {p0}, Lei;->q()V

    .line 2124
    iget-boolean v0, p0, Lei;->P:Z

    if-nez v0, :cond_1

    .line 2125
    new-instance v0, Lik;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lik;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2128
    :cond_1
    return-void
.end method

.method H()V
    .locals 3

    .prologue
    .line 2131
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->r()V

    .line 2134
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lei;->P:Z

    .line 2135
    invoke-virtual {p0}, Lei;->d()V

    .line 2136
    iget-boolean v0, p0, Lei;->P:Z

    if-nez v0, :cond_1

    .line 2137
    new-instance v0, Lik;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lik;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2140
    :cond_1
    return-void
.end method

.method I()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2143
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->s()V

    .line 2146
    :cond_0
    iget-boolean v0, p0, Lei;->X:Z

    if-eqz v0, :cond_2

    .line 2147
    iput-boolean v3, p0, Lei;->X:Z

    .line 2148
    iget-boolean v0, p0, Lei;->Y:Z

    if-nez v0, :cond_1

    .line 2149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->Y:Z

    .line 2150
    iget-object v0, p0, Lei;->D:Ler;

    iget-object v1, p0, Lei;->q:Ljava/lang/String;

    iget-boolean v2, p0, Lei;->X:Z

    invoke-virtual {v0, v1, v2, v3}, Ler;->a(Ljava/lang/String;ZZ)Lfv;

    move-result-object v0

    iput-object v0, p0, Lei;->W:Lfv;

    .line 2152
    :cond_1
    iget-object v0, p0, Lei;->W:Lfv;

    if-eqz v0, :cond_2

    .line 2153
    iget-object v0, p0, Lei;->D:Ler;

    invoke-virtual {v0}, Ler;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2154
    iget-object v0, p0, Lei;->W:Lfv;

    invoke-virtual {v0}, Lfv;->d()V

    .line 2160
    :cond_2
    :goto_0
    return-void

    .line 2156
    :cond_3
    iget-object v0, p0, Lei;->W:Lfv;

    invoke-virtual {v0}, Lfv;->c()V

    goto :goto_0
.end method

.method J()V
    .locals 3

    .prologue
    .line 2163
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 2164
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->t()V

    .line 2166
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lei;->P:Z

    .line 2167
    invoke-virtual {p0}, Lei;->e()V

    .line 2168
    iget-boolean v0, p0, Lei;->P:Z

    if-nez v0, :cond_1

    .line 2169
    new-instance v0, Lik;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lik;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2172
    :cond_1
    iget-object v0, p0, Lei;->W:Lfv;

    if-eqz v0, :cond_2

    .line 2173
    iget-object v0, p0, Lei;->W:Lfv;

    invoke-virtual {v0}, Lfv;->f()V

    .line 2175
    :cond_2
    return-void
.end method

.method K()V
    .locals 3

    .prologue
    .line 2178
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->u()V

    .line 2181
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lei;->P:Z

    .line 2182
    invoke-virtual {p0}, Lei;->r()V

    .line 2183
    iget-boolean v0, p0, Lei;->P:Z

    if-nez v0, :cond_1

    .line 2184
    new-instance v0, Lik;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lik;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2187
    :cond_1
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1213
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 1170
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lei;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0}, Lei;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method public final a(ILei;)V
    .locals 2

    .prologue
    .line 480
    iput p1, p0, Lei;->p:I

    .line 481
    if-eqz p2, :cond_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lei;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lei;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lei;->q:Ljava/lang/String;

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lei;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lei;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 1041
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1164
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1141
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1149
    iget-object v0, p0, Lei;->D:Ler;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1150
    :goto_0
    if-eqz v0, :cond_0

    .line 1151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lei;->P:Z

    .line 1152
    invoke-virtual {p0, v0}, Lei;->a(Landroid/app/Activity;)V

    .line 1154
    :cond_0
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lei;->D:Ler;

    invoke-virtual {v0}, Ler;->f()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1126
    iget-object v0, p0, Lei;->D:Ler;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1127
    :goto_0
    if-eqz v0, :cond_0

    .line 1128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lei;->P:Z

    .line 1129
    invoke-virtual {p0, v0, p2, p3}, Lei;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1131
    :cond_0
    return-void

    .line 1126
    :cond_1
    iget-object v0, p0, Lei;->D:Ler;

    invoke-virtual {v0}, Ler;->f()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 913
    iget-object v0, p0, Lei;->D:Ler;

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_0
    iget-object v0, p0, Lei;->D:Ler;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Ler;->a(Lei;Landroid/content/Intent;I)V

    .line 917
    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 924
    iget-object v0, p0, Lei;->D:Ler;

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_0
    iget-object v0, p0, Lei;->D:Ler;

    invoke-virtual {v0, p0, p1, p2}, Ler;->a(Lei;Landroid/content/Intent;I)V

    .line 928
    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 2017
    invoke-virtual {p0, p1}, Lei;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2018
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0, p1}, Leu;->a(Landroid/content/res/Configuration;)V

    .line 2021
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1189
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1449
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 1432
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1227
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1829
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1830
    iget v0, p0, Lei;->G:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1831
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1832
    iget v0, p0, Lei;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lei;->I:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lei;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1835
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lei;->p:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1836
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lei;->q:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1837
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lei;->B:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1838
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1839
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->w:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1840
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->x:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1841
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->y:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1842
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->z:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1843
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1844
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->K:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1845
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->O:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1846
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->N:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1847
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1848
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->M:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1849
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lei;->V:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1850
    iget-object v0, p0, Lei;->C:Leu;

    if-eqz v0, :cond_0

    .line 1851
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1852
    iget-object v0, p0, Lei;->C:Leu;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1854
    :cond_0
    iget-object v0, p0, Lei;->D:Ler;

    if-eqz v0, :cond_1

    .line 1855
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1856
    iget-object v0, p0, Lei;->D:Ler;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1858
    :cond_1
    iget-object v0, p0, Lei;->F:Lei;

    if-eqz v0, :cond_2

    .line 1859
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1860
    iget-object v0, p0, Lei;->F:Lei;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1862
    :cond_2
    iget-object v0, p0, Lei;->r:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1863
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lei;->r:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1865
    :cond_3
    iget-object v0, p0, Lei;->n:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1866
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lei;->n:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1869
    :cond_4
    iget-object v0, p0, Lei;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 1870
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1871
    iget-object v0, p0, Lei;->o:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1873
    :cond_5
    iget-object v0, p0, Lei;->s:Lei;

    if-eqz v0, :cond_6

    .line 1874
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lei;->s:Lei;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1875
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1876
    iget v0, p0, Lei;->u:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1878
    :cond_6
    iget v0, p0, Lei;->Q:I

    if-eqz v0, :cond_7

    .line 1879
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lei;->Q:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1881
    :cond_7
    iget-object v0, p0, Lei;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 1882
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lei;->R:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1884
    :cond_8
    iget-object v0, p0, Lei;->S:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1885
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lei;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1887
    :cond_9
    iget-object v0, p0, Lei;->T:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1888
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lei;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1890
    :cond_a
    iget-object v0, p0, Lei;->l:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1891
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lei;->l:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1892
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1893
    iget v0, p0, Lei;->m:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1895
    :cond_b
    iget-object v0, p0, Lei;->W:Lfv;

    if-eqz v0, :cond_c

    .line 1896
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lei;->W:Lfv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lfv;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1899
    :cond_c
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_d

    .line 1900
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lei;->E:Leu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    iget-object v0, p0, Lei;->E:Leu;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Leu;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1903
    :cond_d
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1480
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lei;->D:Ler;

    invoke-virtual {v0}, Ler;->b()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1077
    invoke-virtual {p0}, Lei;->k()Les;

    .line 1078
    iget-object v1, p0, Lei;->E:Leu;

    invoke-virtual {v1}, Leu;->w()Lnl;

    move-result-object v1

    invoke-static {v0, v1}, Lnb;->a(Landroid/view/LayoutInflater;Lnl;)V

    .line 1079
    return-object v0
.end method

.method b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1959
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 1960
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->l()V

    .line 1962
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lei;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Lei;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1416
    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1491
    return-void
.end method

.method b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .prologue
    .line 2040
    const/4 v0, 0x0

    .line 2041
    iget-boolean v1, p0, Lei;->J:Z

    if-nez v1, :cond_1

    .line 2042
    iget-boolean v1, p0, Lei;->N:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lei;->O:Z

    if-eqz v1, :cond_0

    .line 2043
    const/4 v0, 0x1

    .line 2044
    invoke-virtual {p0, p1, p2}, Lei;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2046
    :cond_0
    iget-object v1, p0, Lei;->E:Leu;

    if-eqz v1, :cond_1

    .line 2047
    iget-object v1, p0, Lei;->E:Leu;

    invoke-virtual {v1, p1, p2}, Leu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2050
    :cond_1
    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1558
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1278
    iput-boolean v1, p0, Lei;->P:Z

    .line 1280
    iget-boolean v0, p0, Lei;->X:Z

    if-nez v0, :cond_1

    .line 1281
    iput-boolean v1, p0, Lei;->X:Z

    .line 1282
    iget-boolean v0, p0, Lei;->Y:Z

    if-nez v0, :cond_0

    .line 1283
    iput-boolean v1, p0, Lei;->Y:Z

    .line 1284
    iget-object v0, p0, Lei;->D:Ler;

    iget-object v1, p0, Lei;->q:Ljava/lang/String;

    iget-boolean v2, p0, Lei;->X:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ler;->a(Ljava/lang/String;ZZ)Lfv;

    move-result-object v0

    iput-object v0, p0, Lei;->W:Lfv;

    .line 1286
    :cond_0
    iget-object v0, p0, Lei;->W:Lfv;

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lei;->W:Lfv;

    invoke-virtual {v0}, Lfv;->b()V

    .line 1290
    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method c(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 2054
    const/4 v0, 0x0

    .line 2055
    iget-boolean v1, p0, Lei;->J:Z

    if-nez v1, :cond_1

    .line 2056
    iget-boolean v1, p0, Lei;->N:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lei;->O:Z

    if-eqz v1, :cond_0

    .line 2057
    const/4 v0, 0x1

    .line 2058
    invoke-virtual {p0, p1}, Lei;->a(Landroid/view/Menu;)V

    .line 2060
    :cond_0
    iget-object v1, p0, Lei;->E:Leu;

    if-eqz v1, :cond_1

    .line 2061
    iget-object v1, p0, Lei;->E:Leu;

    invoke-virtual {v1, p1}, Leu;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2064
    :cond_1
    return v0
.end method

.method c(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2068
    iget-boolean v1, p0, Lei;->J:Z

    if-nez v1, :cond_2

    .line 2069
    iget-boolean v1, p0, Lei;->N:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lei;->O:Z

    if-eqz v1, :cond_1

    .line 2070
    invoke-virtual {p0, p1}, Lei;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2080
    :cond_0
    :goto_0
    return v0

    .line 2074
    :cond_1
    iget-object v1, p0, Lei;->E:Leu;

    if-eqz v1, :cond_2

    .line 2075
    iget-object v1, p0, Lei;->E:Leu;

    invoke-virtual {v1, p1}, Leu;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2080
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1344
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1255
    return-void
.end method

.method d(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 2098
    iget-boolean v0, p0, Lei;->J:Z

    if-nez v0, :cond_1

    .line 2099
    iget-boolean v0, p0, Lei;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lei;->O:Z

    if-eqz v0, :cond_0

    .line 2100
    invoke-virtual {p0, p1}, Lei;->b(Landroid/view/Menu;)V

    .line 2102
    :cond_0
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_1

    .line 2103
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0, p1}, Leu;->b(Landroid/view/Menu;)V

    .line 2106
    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lei;->N:Z

    if-eq v0, p1, :cond_0

    .line 839
    iput-boolean p1, p0, Lei;->N:Z

    .line 840
    invoke-virtual {p0}, Lei;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lei;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lei;->D:Ler;

    invoke-virtual {v0}, Ler;->c()V

    .line 844
    :cond_0
    return-void
.end method

.method d(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2084
    iget-boolean v1, p0, Lei;->J:Z

    if-nez v1, :cond_2

    .line 2085
    invoke-virtual {p0, p1}, Lei;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2094
    :cond_0
    :goto_0
    return v0

    .line 2088
    :cond_1
    iget-object v1, p0, Lei;->E:Leu;

    if-eqz v1, :cond_2

    .line 2089
    iget-object v1, p0, Lei;->E:Leu;

    invoke-virtual {v1, p1}, Leu;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2094
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1361
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1322
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 496
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final f(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lei;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lei;->T:Landroid/view/View;

    iget-object v1, p0, Lei;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lei;->o:Landroid/util/SparseArray;

    .line 471
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lei;->P:Z

    .line 472
    invoke-virtual {p0, p1}, Lei;->g(Landroid/os/Bundle;)V

    .line 473
    iget-boolean v0, p0, Lei;->P:Z

    if-nez v0, :cond_1

    .line 474
    new-instance v0, Lik;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lik;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_1
    return-void
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lei;->B:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lei;->D:Ler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lei;->D:Ler;

    invoke-virtual {v0}, Ler;->g()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1270
    return-void
.end method

.method public final h()Lel;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lei;->D:Ler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lei;->D:Ler;

    invoke-virtual {v0}, Ler;->f()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lel;

    goto :goto_0
.end method

.method h(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1935
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->l()V

    .line 1938
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lei;->P:Z

    .line 1939
    invoke-virtual {p0, p1}, Lei;->a(Landroid/os/Bundle;)V

    .line 1940
    iget-boolean v0, p0, Lei;->P:Z

    if-nez v0, :cond_1

    .line 1941
    new-instance v0, Lik;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lik;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1944
    :cond_1
    if-eqz p1, :cond_3

    .line 1945
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1947
    if-eqz v0, :cond_3

    .line 1948
    iget-object v1, p0, Lei;->E:Leu;

    if-nez v1, :cond_2

    .line 1949
    invoke-virtual {p0}, Lei;->C()V

    .line 1951
    :cond_2
    iget-object v1, p0, Lei;->E:Leu;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Leu;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 1952
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->m()V

    .line 1955
    :cond_3
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 503
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Lei;->D:Ler;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    iget-object v0, p0, Lei;->D:Ler;

    invoke-virtual {v0}, Ler;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method i(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1966
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->l()V

    .line 1969
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lei;->P:Z

    .line 1970
    invoke-virtual {p0, p1}, Lei;->d(Landroid/os/Bundle;)V

    .line 1971
    iget-boolean v0, p0, Lei;->P:Z

    if-nez v0, :cond_1

    .line 1972
    new-instance v0, Lik;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lik;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    :cond_1
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_2

    .line 1976
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->n()V

    .line 1978
    :cond_2
    return-void
.end method

.method public final j()Les;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lei;->C:Leu;

    return-object v0
.end method

.method j(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2109
    invoke-virtual {p0, p1}, Lei;->e(Landroid/os/Bundle;)V

    .line 2110
    iget-object v0, p0, Lei;->E:Leu;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->k()Landroid/os/Parcelable;

    move-result-object v0

    .line 2112
    if-eqz v0, :cond_0

    .line 2113
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2116
    :cond_0
    return-void
.end method

.method public final k()Les;
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lei;->E:Leu;

    if-nez v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lei;->C()V

    .line 698
    iget v0, p0, Lei;->k:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 699
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->p()V

    .line 708
    :cond_0
    :goto_0
    iget-object v0, p0, Lei;->E:Leu;

    return-object v0

    .line 700
    :cond_1
    iget v0, p0, Lei;->k:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 701
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->o()V

    goto :goto_0

    .line 702
    :cond_2
    iget v0, p0, Lei;->k:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 703
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->n()V

    goto :goto_0

    .line 704
    :cond_3
    iget v0, p0, Lei;->k:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Lei;->E:Leu;

    invoke-virtual {v0}, Leu;->m()V

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lei;->D:Ler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lei;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Lei;->w:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lei;->J:Z

    return v0
.end method

.method public o()Landroid/view/View;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lei;->S:Landroid/view/View;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1326
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 1512
    invoke-virtual {p0}, Lei;->h()Lel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lel;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1513
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1348
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 1299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1300
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 1334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lei;->P:Z

    .line 1335
    return-void
.end method

.method public r()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1368
    iput-boolean v1, p0, Lei;->P:Z

    .line 1371
    iget-boolean v0, p0, Lei;->Y:Z

    if-nez v0, :cond_0

    .line 1372
    iput-boolean v1, p0, Lei;->Y:Z

    .line 1373
    iget-object v0, p0, Lei;->D:Ler;

    iget-object v1, p0, Lei;->q:Ljava/lang/String;

    iget-boolean v2, p0, Lei;->X:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ler;->a(Ljava/lang/String;ZZ)Lfv;

    move-result-object v0

    iput-object v0, p0, Lei;->W:Lfv;

    .line 1375
    :cond_0
    iget-object v0, p0, Lei;->W:Lfv;

    if-eqz v0, :cond_1

    .line 1376
    iget-object v0, p0, Lei;->W:Lfv;

    invoke-virtual {v0}, Lfv;->h()V

    .line 1378
    :cond_1
    return-void
.end method

.method s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1387
    const/4 v0, -0x1

    iput v0, p0, Lei;->p:I

    .line 1388
    iput-object v2, p0, Lei;->q:Ljava/lang/String;

    .line 1389
    iput-boolean v1, p0, Lei;->v:Z

    .line 1390
    iput-boolean v1, p0, Lei;->w:Z

    .line 1391
    iput-boolean v1, p0, Lei;->x:Z

    .line 1392
    iput-boolean v1, p0, Lei;->y:Z

    .line 1393
    iput-boolean v1, p0, Lei;->z:Z

    .line 1394
    iput-boolean v1, p0, Lei;->A:Z

    .line 1395
    iput v1, p0, Lei;->B:I

    .line 1396
    iput-object v2, p0, Lei;->C:Leu;

    .line 1397
    iput-object v2, p0, Lei;->E:Leu;

    .line 1398
    iput-object v2, p0, Lei;->D:Ler;

    .line 1399
    iput v1, p0, Lei;->G:I

    .line 1400
    iput v1, p0, Lei;->H:I

    .line 1401
    iput-object v2, p0, Lei;->I:Ljava/lang/String;

    .line 1402
    iput-boolean v1, p0, Lei;->J:Z

    .line 1403
    iput-boolean v1, p0, Lei;->K:Z

    .line 1404
    iput-boolean v1, p0, Lei;->M:Z

    .line 1405
    iput-object v2, p0, Lei;->W:Lfv;

    .line 1406
    iput-boolean v1, p0, Lei;->X:Z

    .line 1407
    iput-boolean v1, p0, Lei;->Y:Z

    .line 1408
    return-void
.end method

.method public t()V
    .locals 0

    .prologue
    .line 1459
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 509
    invoke-static {p0, v0}, Llq;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 510
    iget v1, p0, Lei;->p:I

    if-ltz v1, :cond_0

    .line 511
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget v1, p0, Lei;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    :cond_0
    iget v1, p0, Lei;->G:I

    if-eqz v1, :cond_1

    .line 515
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget v1, p0, Lei;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_1
    iget-object v1, p0, Lei;->I:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 519
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-object v1, p0, Lei;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lei;->Z:Ljava/lang/Object;

    return-object v0
.end method

.method public v()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1641
    iget-object v0, p0, Lei;->aa:Ljava/lang/Object;

    sget-object v1, Lei;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lei;->u()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lei;->aa:Ljava/lang/Object;

    goto :goto_0
.end method

.method public w()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lei;->ab:Ljava/lang/Object;

    return-object v0
.end method

.method public x()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lei;->ac:Ljava/lang/Object;

    sget-object v1, Lei;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lei;->w()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lei;->ac:Ljava/lang/Object;

    goto :goto_0
.end method

.method public y()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lei;->ad:Ljava/lang/Object;

    return-object v0
.end method

.method public z()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1767
    iget-object v0, p0, Lei;->ae:Ljava/lang/Object;

    sget-object v1, Lei;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lei;->y()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lei;->ae:Ljava/lang/Object;

    goto :goto_0
.end method
