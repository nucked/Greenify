.class public final Ldv;
.super Lff;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final a:Z


# instance fields
.field final b:Leu;

.field public c:Ldz;

.field d:Ldz;

.field public e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field public j:I

.field public k:I

.field public l:Z

.field m:Z

.field public n:Ljava/lang/String;

.field o:Z

.field public p:I

.field public q:I

.field public r:Ljava/lang/CharSequence;

.field public s:I

.field public t:Ljava/lang/CharSequence;

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldv;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Leu;)V
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Lff;-><init>()V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldv;->m:Z

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Ldv;->p:I

    .line 354
    iput-object p1, p0, Ldv;->b:Leu;

    .line 355
    return-void
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lea;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;Z)",
            "Lea;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1019
    new-instance v2, Lea;

    invoke-direct {v2, p0}, Lea;-><init>(Ldv;)V

    .line 1024
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Ldv;->b:Leu;

    iget-object v1, v1, Leu;->o:Ler;

    invoke-virtual {v1}, Ler;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lea;->d:Landroid/view/View;

    move v6, v7

    move v8, v7

    .line 1028
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1029
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1030
    invoke-direct/range {v0 .. v5}, Ldv;->a(ILea;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    .line 1028
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    .line 1037
    :cond_0
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1038
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1039
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ldv;->a(ILea;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v9

    .line 1037
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1046
    :cond_2
    if-nez v8, :cond_3

    .line 1047
    const/4 v2, 0x0

    .line 1050
    :cond_3
    return-object v2

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method private static a(Lei;Lei;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1071
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1072
    :cond_0
    const/4 v0, 0x0

    .line 1074
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lei;->z()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lfg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lei;->y()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Lei;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1054
    if-nez p0, :cond_0

    .line 1055
    const/4 v0, 0x0

    .line 1057
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lei;->x()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lfg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lei;->u()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Lei;Ljava/util/ArrayList;Lln;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lei;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1081
    if-eqz p0, :cond_0

    .line 1082
    invoke-virtual {p1}, Lei;->o()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lfg;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    .line 1085
    :cond_0
    return-object p0
.end method

.method static synthetic a(Ldv;Lea;ZLei;)Lln;
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Ldv;->a(Lea;ZLei;)Lln;

    move-result-object v0

    return-object v0
.end method

.method private a(Lea;Lei;Z)Lln;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea;",
            "Lei;",
            "Z)",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1090
    new-instance v0, Lln;

    invoke-direct {v0}, Lln;-><init>()V

    .line 1091
    iget-object v1, p0, Ldv;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1092
    invoke-virtual {p2}, Lei;->o()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lfg;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1093
    if-eqz p3, :cond_2

    .line 1094
    iget-object v1, p0, Ldv;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lln;->a(Ljava/util/Collection;)Z

    .line 1101
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 1102
    iget-object v1, p2, Lei;->ah:Lij;

    if-eqz v1, :cond_1

    .line 1103
    iget-object v1, p2, Lei;->ah:Lij;

    iget-object v2, p0, Ldv;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lij;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1106
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Ldv;->a(Lea;Lln;Z)V

    .line 1115
    :goto_1
    return-object v0

    .line 1096
    :cond_2
    iget-object v1, p0, Ldv;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Ldv;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Ldv;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lln;)Lln;

    move-result-object v0

    goto :goto_0

    .line 1108
    :cond_3
    iget-object v1, p2, Lei;->ai:Lij;

    if-eqz v1, :cond_4

    .line 1109
    iget-object v1, p2, Lei;->ai:Lij;

    iget-object v2, p0, Ldv;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lij;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1112
    :cond_4
    invoke-direct {p0, p1, v0, v3}, Ldv;->b(Lea;Lln;Z)V

    goto :goto_1
.end method

.method private a(Lea;ZLei;)Lln;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea;",
            "Z",
            "Lei;",
            ")",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1286
    invoke-direct {p0, p1, p3, p2}, Ldv;->b(Lea;Lei;Z)Lln;

    move-result-object v0

    .line 1290
    if-eqz p2, :cond_1

    .line 1291
    iget-object v1, p3, Lei;->ai:Lij;

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, p3, Lei;->ai:Lij;

    iget-object v2, p0, Ldv;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lij;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1295
    :cond_0
    invoke-direct {p0, p1, v0, v3}, Ldv;->a(Lea;Lln;Z)V

    .line 1303
    :goto_0
    return-object v0

    .line 1297
    :cond_1
    iget-object v1, p3, Lei;->ah:Lij;

    if-eqz v1, :cond_2

    .line 1298
    iget-object v1, p3, Lei;->ah:Lij;

    iget-object v2, p0, Ldv;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lij;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1301
    :cond_2
    invoke-direct {p0, p1, v0, v3}, Ldv;->b(Lea;Lln;Z)V

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lln;)Lln;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1316
    invoke-virtual {p2}, Lln;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    :goto_0
    return-object p2

    .line 1319
    :cond_0
    new-instance v1, Lln;

    invoke-direct {v1}, Lln;-><init>()V

    .line 1320
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1321
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1322
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lln;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1323
    if-eqz v0, :cond_1

    .line 1324
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lln;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object p2, v1

    .line 1327
    goto :goto_0
.end method

.method private a(ILei;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Ldv;->b:Leu;

    iput-object v0, p2, Lei;->C:Leu;

    .line 416
    if-eqz p3, :cond_1

    .line 417
    iget-object v0, p2, Lei;->I:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lei;->I:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lei;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iput-object p3, p2, Lei;->I:Ljava/lang/String;

    .line 425
    :cond_1
    if-eqz p1, :cond_3

    .line 426
    iget v0, p2, Lei;->G:I

    if-eqz v0, :cond_2

    iget v0, p2, Lei;->G:I

    if-eq v0, p1, :cond_2

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lei;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2
    iput p1, p2, Lei;->G:I

    iput p1, p2, Lei;->H:I

    .line 434
    :cond_3
    new-instance v0, Ldz;

    invoke-direct {v0}, Ldz;-><init>()V

    .line 435
    iput p4, v0, Ldz;->c:I

    .line 436
    iput-object p2, v0, Ldz;->d:Lei;

    .line 437
    invoke-virtual {p0, v0}, Ldv;->a(Ldz;)V

    .line 438
    return-void
.end method

.method private static a(Landroid/util/SparseArray;Lei;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;",
            "Lei;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    if-eqz p1, :cond_0

    .line 747
    iget v0, p1, Lei;->H:I

    .line 748
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lei;->n()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lei;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lei;->o()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 750
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 753
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lea;ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 1359
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Ldy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldy;-><init>(Ldv;Landroid/view/View;Lea;ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1367
    return-void
.end method

.method static synthetic a(Ldv;Lea;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Ldv;->a(Lea;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Ldv;Lea;Lei;Lei;ZLln;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct/range {p0 .. p5}, Ldv;->a(Lea;Lei;Lei;ZLln;)V

    return-void
.end method

.method static synthetic a(Ldv;Lln;Lea;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Ldv;->a(Lln;Lea;)V

    return-void
.end method

.method private a(Lea;ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1370
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    .line 1371
    :goto_0
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1372
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei;

    .line 1373
    iget-object v3, v0, Lei;->S:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lei;->R:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget v3, v0, Lei;->H:I

    if-ne v3, p2, :cond_0

    .line 1375
    iget-boolean v3, v0, Lei;->J:Z

    if-eqz v3, :cond_1

    .line 1376
    iget-object v3, p1, Lea;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Lei;->S:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1377
    iget-object v3, v0, Lei;->S:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Lfg;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1379
    iget-object v3, p1, Lea;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lei;->S:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1382
    :cond_1
    iget-object v3, v0, Lei;->S:Landroid/view/View;

    invoke-static {p3, v3, v2}, Lfg;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1384
    iget-object v3, p1, Lea;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lei;->S:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1389
    :cond_2
    return-void
.end method

.method private a(Lea;Landroid/view/View;Ljava/lang/Object;Lei;Lei;ZLjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lei;",
            "Lei;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1233
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v0, Ldx;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    move-object v5, p1

    move/from16 v6, p6

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ldx;-><init>(Ldv;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Lea;ZLei;Lei;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1258
    return-void
.end method

.method private a(Lea;Lei;Lei;ZLln;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea;",
            "Lei;",
            "Lei;",
            "Z",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1262
    if-eqz p4, :cond_1

    iget-object v0, p3, Lei;->ah:Lij;

    .line 1265
    :goto_0
    if-eqz v0, :cond_0

    .line 1266
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p5}, Lln;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1267
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Lln;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1268
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lij;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1270
    :cond_0
    return-void

    .line 1262
    :cond_1
    iget-object v0, p2, Lei;->ah:Lij;

    goto :goto_0
.end method

.method private static a(Lea;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1406
    if-eqz p1, :cond_0

    .line 1407
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1408
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1409
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1410
    iget-object v3, p0, Lea;->a:Lln;

    invoke-static {v3, v0, v1}, Ldv;->a(Lln;Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1413
    :cond_0
    return-void
.end method

.method private a(Lea;Lln;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea;",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1417
    iget-object v1, p0, Ldv;->v:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    .line 1418
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1419
    iget-object v0, p0, Ldv;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1420
    iget-object v1, p0, Ldv;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1421
    invoke-virtual {p2, v1}, Lln;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1422
    if-eqz v1, :cond_0

    .line 1423
    invoke-static {v1}, Lfg;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1424
    if-eqz p3, :cond_2

    .line 1425
    iget-object v4, p1, Lea;->a:Lln;

    invoke-static {v4, v0, v1}, Ldv;->a(Lln;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1417
    :cond_1
    iget-object v1, p0, Ldv;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 1427
    :cond_2
    iget-object v4, p1, Lea;->a:Lln;

    invoke-static {v4, v1, v0}, Ldv;->a(Lln;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1431
    :cond_3
    return-void
.end method

.method private a(Lln;Lea;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lea;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v0, p0, Ldv;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lln;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    iget-object v0, p0, Ldv;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lln;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1277
    if-eqz v0, :cond_0

    .line 1278
    iget-object v1, p2, Lea;->c:Lfl;

    iput-object v0, v1, Lfl;->a:Landroid/view/View;

    .line 1281
    :cond_0
    return-void
.end method

.method private static a(Lln;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1393
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1394
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lln;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1395
    invoke-virtual {p0, v0}, Lln;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1396
    invoke-virtual {p0, v0, p2}, Lln;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1402
    :cond_0
    :goto_1
    return-void

    .line 1394
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1400
    :cond_2
    invoke-virtual {p0, p1, p2}, Lln;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private a(ILea;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lea;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Ldv;->b:Leu;

    iget-object v4, v4, Leu;->p:Lep;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lep;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1133
    if-nez v6, :cond_0

    .line 1134
    const/4 v4, 0x0

    .line 1226
    :goto_0
    return v4

    .line 1136
    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lei;

    .line 1137
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lei;

    .line 1139
    move/from16 v0, p3

    invoke-static {v8, v0}, Ldv;->a(Lei;Z)Ljava/lang/Object;

    move-result-object v12

    .line 1140
    move/from16 v0, p3

    invoke-static {v8, v9, v0}, Ldv;->a(Lei;Lei;Z)Ljava/lang/Object;

    move-result-object v7

    .line 1142
    move/from16 v0, p3

    invoke-static {v9, v0}, Ldv;->b(Lei;Z)Ljava/lang/Object;

    move-result-object v14

    .line 1143
    const/16 v20, 0x0

    .line 1144
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    if-eqz v7, :cond_3

    .line 1146
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Ldv;->a(Lea;Lei;Z)Lln;

    move-result-object v20

    .line 1147
    invoke-virtual/range {v20 .. v20}, Lln;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1148
    const/4 v7, 0x0

    .line 1149
    const/16 v20, 0x0

    move-object v13, v7

    .line 1164
    :goto_1
    if-nez v12, :cond_5

    if-nez v13, :cond_5

    if-nez v14, :cond_5

    .line 1166
    const/4 v4, 0x0

    goto :goto_0

    .line 1152
    :cond_1
    if-eqz p3, :cond_4

    iget-object v4, v9, Lei;->ah:Lij;

    .line 1155
    :goto_2
    if-eqz v4, :cond_2

    .line 1156
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Lln;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1157
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Lln;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1158
    const/4 v13, 0x0

    invoke-virtual {v4, v5, v10, v13}, Lij;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v10, p3

    .line 1160
    invoke-direct/range {v4 .. v11}, Ldv;->a(Lea;Landroid/view/View;Ljava/lang/Object;Lei;Lei;ZLjava/util/ArrayList;)V

    :cond_3
    move-object v13, v7

    goto :goto_1

    .line 1152
    :cond_4
    iget-object v4, v8, Lei;->ah:Lij;

    goto :goto_2

    .line 1169
    :cond_5
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    move-object/from16 v0, p2

    iget-object v4, v0, Lea;->d:Landroid/view/View;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v14, v9, v0, v1, v4}, Ldv;->a(Ljava/lang/Object;Lei;Ljava/util/ArrayList;Lln;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v26

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Ldv;->v:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    if-eqz v20, :cond_7

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Ldv;->v:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lln;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1176
    if-eqz v4, :cond_7

    .line 1177
    if-eqz v26, :cond_6

    .line 1178
    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lfg;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1180
    :cond_6
    if-eqz v13, :cond_7

    .line 1181
    invoke-static {v13, v4}, Lfg;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1187
    :cond_7
    new-instance v15, Ldw;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Ldw;-><init>(Ldv;Lei;)V

    .line 1195
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    new-instance v21, Lln;

    invoke-direct/range {v21 .. v21}, Lln;-><init>()V

    .line 1198
    const/4 v4, 0x1

    .line 1199
    if-eqz v8, :cond_8

    .line 1200
    if-eqz p3, :cond_a

    invoke-virtual {v8}, Lei;->B()Z

    move-result v4

    .line 1203
    :cond_8
    :goto_3
    move-object/from16 v0, v26

    invoke-static {v12, v0, v13, v4}, Lfg;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v30

    .line 1206
    if-eqz v30, :cond_9

    .line 1207
    move-object/from16 v0, p2

    iget-object v0, v0, Lea;->d:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lea;->c:Lfl;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lea;->a:Lln;

    move-object/from16 v18, v0

    move-object v14, v6

    move-object/from16 v22, v11

    invoke-static/range {v12 .. v22}, Lfg;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Lfm;Landroid/view/View;Lfl;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1211
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v30

    invoke-direct {v0, v6, v1, v2, v3}, Ldv;->a(Landroid/view/View;Lea;ILjava/lang/Object;)V

    .line 1215
    move-object/from16 v0, p2

    iget-object v4, v0, Lea;->d:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-static {v0, v4, v5}, Lfg;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1217
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Ldv;->a(Lea;ILjava/lang/Object;)V

    .line 1219
    move-object/from16 v0, v30

    invoke-static {v6, v0}, Lfg;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1221
    move-object/from16 v0, p2

    iget-object v0, v0, Lea;->d:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lea;->b:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v22, v6

    move-object/from16 v24, v12

    move-object/from16 v25, v19

    move-object/from16 v28, v13

    move-object/from16 v29, v11

    move-object/from16 v32, v21

    invoke-static/range {v22 .. v32}, Lfg;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1226
    :cond_9
    if-eqz v30, :cond_b

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1200
    :cond_a
    invoke-virtual {v8}, Lei;->A()Z

    move-result v4

    goto :goto_3

    .line 1226
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private static b(Lei;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1062
    if-nez p0, :cond_0

    .line 1063
    const/4 v0, 0x0

    .line 1065
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lei;->v()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lfg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lei;->w()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Lea;Lei;Z)Lln;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea;",
            "Lei;",
            "Z)",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1341
    new-instance v0, Lln;

    invoke-direct {v0}, Lln;-><init>()V

    .line 1342
    invoke-virtual {p2}, Lei;->o()Landroid/view/View;

    move-result-object v1

    .line 1343
    if-eqz v1, :cond_0

    .line 1344
    iget-object v2, p0, Ldv;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1345
    invoke-static {v0, v1}, Lfg;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1346
    if-eqz p3, :cond_1

    .line 1347
    iget-object v1, p0, Ldv;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Ldv;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Ldv;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lln;)Lln;

    move-result-object v0

    .line 1354
    :cond_0
    :goto_0
    return-object v0

    .line 1350
    :cond_1
    iget-object v1, p0, Ldv;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lln;->a(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->p:Lep;

    invoke-virtual {v0}, Lep;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 820
    :cond_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Ldv;->c:Ldz;

    move-object v3, v0

    .line 779
    :goto_0
    if-eqz v3, :cond_0

    .line 780
    iget v0, v3, Ldz;->c:I

    packed-switch v0, :pswitch_data_0

    .line 818
    :goto_1
    iget-object v0, v3, Ldz;->a:Ldz;

    move-object v3, v0

    goto :goto_0

    .line 782
    :pswitch_0
    iget-object v0, v3, Ldz;->d:Lei;

    invoke-direct {p0, p2, v0}, Ldv;->b(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 785
    :pswitch_1
    iget-object v1, v3, Ldz;->d:Lei;

    .line 786
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 787
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 788
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei;

    .line 789
    if-eqz v2, :cond_2

    iget v4, v0, Lei;->H:I

    iget v5, v2, Lei;->H:I

    if-ne v4, v5, :cond_3

    .line 790
    :cond_2
    if-ne v0, v2, :cond_4

    .line 791
    const/4 v2, 0x0

    .line 787
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 793
    :cond_4
    invoke-static {p1, v0}, Ldv;->a(Landroid/util/SparseArray;Lei;)V

    goto :goto_3

    :cond_5
    move-object v2, v1

    .line 798
    :cond_6
    invoke-direct {p0, p2, v2}, Ldv;->b(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 802
    :pswitch_2
    iget-object v0, v3, Ldz;->d:Lei;

    invoke-static {p1, v0}, Ldv;->a(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 805
    :pswitch_3
    iget-object v0, v3, Ldz;->d:Lei;

    invoke-static {p1, v0}, Ldv;->a(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 808
    :pswitch_4
    iget-object v0, v3, Ldz;->d:Lei;

    invoke-direct {p0, p2, v0}, Ldv;->b(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 811
    :pswitch_5
    iget-object v0, v3, Ldz;->d:Lei;

    invoke-static {p1, v0}, Ldv;->a(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 814
    :pswitch_6
    iget-object v0, v3, Ldz;->d:Lei;

    invoke-direct {p0, p2, v0}, Ldv;->b(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private b(Landroid/util/SparseArray;Lei;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;",
            "Lei;",
            ")V"
        }
    .end annotation

    .prologue
    .line 756
    if-eqz p2, :cond_0

    .line 757
    iget v0, p2, Lei;->H:I

    .line 758
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 762
    :cond_0
    return-void
.end method

.method private b(Lea;Lln;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea;",
            "Lln",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1435
    invoke-virtual {p2}, Lln;->size()I

    move-result v3

    .line 1436
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1437
    invoke-virtual {p2, v2}, Lln;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1438
    invoke-virtual {p2, v2}, Lln;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lfg;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1439
    if-eqz p3, :cond_0

    .line 1440
    iget-object v4, p1, Lea;->a:Lln;

    invoke-static {v4, v0, v1}, Ldv;->a(Lln;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1442
    :cond_0
    iget-object v4, p1, Lea;->a:Lln;

    invoke-static {v4, v1, v0}, Ldv;->a(Lln;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1445
    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldv;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 621
    iget-boolean v0, p0, Ldv;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    sget-boolean v0, Leu;->a:Z

    if-eqz v0, :cond_1

    .line 623
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v0, Llr;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Llr;-><init>(Ljava/lang/String;)V

    .line 625
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 626
    const-string v0, "  "

    invoke-virtual {p0, v0, v3, v1, v3}, Ldv;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 628
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldv;->o:Z

    .line 629
    iget-boolean v0, p0, Ldv;->l:Z

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Ldv;->b:Leu;

    invoke-virtual {v0, p0}, Leu;->a(Ldv;)I

    move-result v0

    iput v0, p0, Ldv;->p:I

    .line 634
    :goto_0
    iget-object v0, p0, Ldv;->b:Leu;

    invoke-virtual {v0, p0, p1}, Leu;->a(Ljava/lang/Runnable;Z)V

    .line 635
    iget v0, p0, Ldv;->p:I

    return v0

    .line 632
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Ldv;->p:I

    goto :goto_0
.end method

.method public a(ZLea;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lea;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lea;",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;)",
            "Lea;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 873
    sget-boolean v0, Leu;->a:Z

    if-eqz v0, :cond_0

    .line 874
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popFromBackStack: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v0, Llr;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Llr;-><init>(Ljava/lang/String;)V

    .line 876
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 877
    const-string v0, "  "

    invoke-virtual {p0, v0, v4, v1, v4}, Ldv;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 880
    :cond_0
    sget-boolean v0, Ldv;->a:Z

    if-eqz v0, :cond_2

    .line 881
    if-nez p2, :cond_3

    .line 882
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    :cond_1
    invoke-direct {p0, p3, p4, v10}, Ldv;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lea;

    move-result-object p2

    .line 890
    :cond_2
    :goto_0
    invoke-virtual {p0, v9}, Ldv;->b(I)V

    .line 892
    if-eqz p2, :cond_4

    move v7, v2

    .line 893
    :goto_1
    if-eqz p2, :cond_5

    move v1, v2

    .line 894
    :goto_2
    iget-object v0, p0, Ldv;->d:Ldz;

    move-object v6, v0

    .line 895
    :goto_3
    if-eqz v6, :cond_a

    .line 896
    if-eqz p2, :cond_6

    move v5, v2

    .line 897
    :goto_4
    if-eqz p2, :cond_7

    move v0, v2

    .line 898
    :goto_5
    iget v3, v6, Ldz;->c:I

    packed-switch v3, :pswitch_data_0

    .line 950
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Ldz;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_3
    if-nez p1, :cond_2

    .line 886
    iget-object v0, p0, Ldv;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Ldv;->u:Ljava/util/ArrayList;

    invoke-static {p2, v0, v1}, Ldv;->a(Lea;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 892
    :cond_4
    iget v0, p0, Ldv;->k:I

    move v7, v0

    goto :goto_1

    .line 893
    :cond_5
    iget v0, p0, Ldv;->j:I

    move v1, v0

    goto :goto_2

    .line 896
    :cond_6
    iget v0, v6, Ldz;->g:I

    move v5, v0

    goto :goto_4

    .line 897
    :cond_7
    iget v0, v6, Ldz;->h:I

    goto :goto_5

    .line 900
    :pswitch_0
    iget-object v3, v6, Ldz;->d:Lei;

    .line 901
    iput v0, v3, Lei;->Q:I

    .line 902
    iget-object v0, p0, Ldv;->b:Leu;

    invoke-static {v1}, Leu;->c(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Leu;->a(Lei;II)V

    .line 954
    :cond_8
    :goto_6
    iget-object v0, v6, Ldz;->b:Ldz;

    move-object v6, v0

    .line 955
    goto :goto_3

    .line 906
    :pswitch_1
    iget-object v3, v6, Ldz;->d:Lei;

    .line 907
    if-eqz v3, :cond_9

    .line 908
    iput v0, v3, Lei;->Q:I

    .line 909
    iget-object v0, p0, Ldv;->b:Leu;

    invoke-static {v1}, Leu;->c(I)I

    move-result v8

    invoke-virtual {v0, v3, v8, v7}, Leu;->a(Lei;II)V

    .line 912
    :cond_9
    iget-object v0, v6, Ldz;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    move v3, v2

    .line 913
    :goto_7
    iget-object v0, v6, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 914
    iget-object v0, v6, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei;

    .line 915
    iput v5, v0, Lei;->Q:I

    .line 916
    iget-object v8, p0, Ldv;->b:Leu;

    invoke-virtual {v8, v0, v2}, Leu;->a(Lei;Z)V

    .line 913
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 921
    :pswitch_2
    iget-object v0, v6, Ldz;->d:Lei;

    .line 922
    iput v5, v0, Lei;->Q:I

    .line 923
    iget-object v3, p0, Ldv;->b:Leu;

    invoke-virtual {v3, v0, v2}, Leu;->a(Lei;Z)V

    goto :goto_6

    .line 926
    :pswitch_3
    iget-object v0, v6, Ldz;->d:Lei;

    .line 927
    iput v5, v0, Lei;->Q:I

    .line 928
    iget-object v3, p0, Ldv;->b:Leu;

    invoke-static {v1}, Leu;->c(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Leu;->c(Lei;II)V

    goto :goto_6

    .line 932
    :pswitch_4
    iget-object v3, v6, Ldz;->d:Lei;

    .line 933
    iput v0, v3, Lei;->Q:I

    .line 934
    iget-object v0, p0, Ldv;->b:Leu;

    invoke-static {v1}, Leu;->c(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Leu;->b(Lei;II)V

    goto :goto_6

    .line 938
    :pswitch_5
    iget-object v0, v6, Ldz;->d:Lei;

    .line 939
    iput v5, v0, Lei;->Q:I

    .line 940
    iget-object v3, p0, Ldv;->b:Leu;

    invoke-static {v1}, Leu;->c(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Leu;->e(Lei;II)V

    goto :goto_6

    .line 944
    :pswitch_6
    iget-object v0, v6, Ldz;->d:Lei;

    .line 945
    iput v5, v0, Lei;->Q:I

    .line 946
    iget-object v3, p0, Ldv;->b:Leu;

    invoke-static {v1}, Leu;->c(I)I

    move-result v5

    invoke-virtual {v3, v0, v5, v7}, Leu;->d(Lei;II)V

    goto :goto_6

    .line 957
    :cond_a
    if-eqz p1, :cond_b

    .line 958
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v2, p0, Ldv;->b:Leu;

    iget v2, v2, Leu;->n:I

    invoke-static {v1}, Leu;->c(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v7, v10}, Leu;->a(IIIZ)V

    move-object p2, v4

    .line 963
    :cond_b
    iget v0, p0, Ldv;->p:I

    if-ltz v0, :cond_c

    .line 964
    iget-object v0, p0, Ldv;->b:Leu;

    iget v1, p0, Ldv;->p:I

    invoke-virtual {v0, v1}, Leu;->b(I)V

    .line 965
    iput v9, p0, Ldv;->p:I

    .line 967
    :cond_c
    return-object p2

    .line 898
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(I)Lff;
    .locals 0

    .prologue
    .line 512
    iput p1, p0, Ldv;->j:I

    .line 513
    return-object p0
.end method

.method public a(ILei;)Lff;
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ldv;->a(ILei;Ljava/lang/String;)Lff;

    move-result-object v0

    return-object v0
.end method

.method public a(ILei;Ljava/lang/String;)Lff;
    .locals 2

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Ldv;->a(ILei;Ljava/lang/String;I)V

    .line 450
    return-object p0
.end method

.method public a(Lei;)Lff;
    .locals 2

    .prologue
    .line 454
    new-instance v0, Ldz;

    invoke-direct {v0}, Ldz;-><init>()V

    .line 455
    const/4 v1, 0x3

    iput v1, v0, Ldz;->c:I

    .line 456
    iput-object p1, v0, Ldz;->d:Lei;

    .line 457
    invoke-virtual {p0, v0}, Ldv;->a(Ldz;)V

    .line 459
    return-object p0
.end method

.method public a(Lei;Ljava/lang/String;)Lff;
    .locals 2

    .prologue
    .line 399
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Ldv;->a(ILei;Ljava/lang/String;I)V

    .line 400
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lff;
    .locals 2

    .prologue
    .line 541
    iget-boolean v0, p0, Ldv;->m:Z

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldv;->l:Z

    .line 546
    iput-object p1, p0, Ldv;->n:Ljava/lang/String;

    .line 547
    return-object p0
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lei;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->p:Lep;

    invoke-virtual {v0}, Lep;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    :cond_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Ldv;->c:Ldz;

    move-object v2, v0

    .line 837
    :goto_0
    if-eqz v2, :cond_0

    .line 838
    iget v0, v2, Ldz;->c:I

    packed-switch v0, :pswitch_data_0

    .line 867
    :goto_1
    iget-object v0, v2, Ldz;->a:Ldz;

    move-object v2, v0

    goto :goto_0

    .line 840
    :pswitch_0
    iget-object v0, v2, Ldz;->d:Lei;

    invoke-static {p1, v0}, Ldv;->a(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 843
    :pswitch_1
    iget-object v0, v2, Ldz;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 844
    iget-object v0, v2, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 845
    iget-object v0, v2, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei;

    invoke-direct {p0, p2, v0}, Ldv;->b(Landroid/util/SparseArray;Lei;)V

    .line 844
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 848
    :cond_2
    iget-object v0, v2, Ldz;->d:Lei;

    invoke-static {p1, v0}, Ldv;->a(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 851
    :pswitch_2
    iget-object v0, v2, Ldz;->d:Lei;

    invoke-direct {p0, p2, v0}, Ldv;->b(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 854
    :pswitch_3
    iget-object v0, v2, Ldz;->d:Lei;

    invoke-direct {p0, p2, v0}, Ldv;->b(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 857
    :pswitch_4
    iget-object v0, v2, Ldz;->d:Lei;

    invoke-static {p1, v0}, Ldv;->a(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 860
    :pswitch_5
    iget-object v0, v2, Ldz;->d:Lei;

    invoke-direct {p0, p2, v0}, Ldv;->b(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 863
    :pswitch_6
    iget-object v0, v2, Ldz;->d:Lei;

    invoke-static {p1, v0}, Ldv;->a(Landroid/util/SparseArray;Lei;)V

    goto :goto_1

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ldz;)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Ldv;->c:Ldz;

    if-nez v0, :cond_0

    .line 385
    iput-object p1, p0, Ldv;->d:Ldz;

    iput-object p1, p0, Ldv;->c:Ldz;

    .line 391
    :goto_0
    iget v0, p0, Ldv;->f:I

    iput v0, p1, Ldz;->e:I

    .line 392
    iget v0, p0, Ldv;->g:I

    iput v0, p1, Ldz;->f:I

    .line 393
    iget v0, p0, Ldv;->h:I

    iput v0, p1, Ldz;->g:I

    .line 394
    iget v0, p0, Ldv;->i:I

    iput v0, p1, Ldz;->h:I

    .line 395
    iget v0, p0, Ldv;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldv;->e:I

    .line 396
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Ldv;->d:Ldz;

    iput-object v0, p1, Ldz;->b:Ldz;

    .line 388
    iget-object v0, p0, Ldv;->d:Ldz;

    iput-object p1, v0, Ldz;->a:Ldz;

    .line 389
    iput-object p1, p0, Ldv;->d:Ldz;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Ldv;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 258
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 261
    if-eqz p3, :cond_8

    .line 262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ldv;->n:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ldv;->p:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 264
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ldv;->o:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 265
    iget v0, p0, Ldv;->j:I

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Ldv;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Ldv;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget v0, p0, Ldv;->f:I

    if-nez v0, :cond_1

    iget v0, p0, Ldv;->g:I

    if-eqz v0, :cond_2

    .line 272
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Ldv;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget v0, p0, Ldv;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :cond_2
    iget v0, p0, Ldv;->h:I

    if-nez v0, :cond_3

    iget v0, p0, Ldv;->i:I

    if-eqz v0, :cond_4

    .line 278
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget v0, p0, Ldv;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget v0, p0, Ldv;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    :cond_4
    iget v0, p0, Ldv;->q:I

    if-nez v0, :cond_5

    iget-object v0, p0, Ldv;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 284
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Ldv;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Ldv;->r:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 289
    :cond_6
    iget v0, p0, Ldv;->s:I

    if-nez v0, :cond_7

    iget-object v0, p0, Ldv;->t:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 290
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget v0, p0, Ldv;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Ldv;->t:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 297
    :cond_8
    iget-object v0, p0, Ldv;->c:Ldz;

    if-eqz v0, :cond_10

    .line 298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    iget-object v0, p0, Ldv;->c:Ldz;

    move v2, v1

    move-object v3, v0

    .line 302
    :goto_0
    if-eqz v3, :cond_10

    .line 304
    iget v0, v3, Ldz;->c:I

    packed-switch v0, :pswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Ldz;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 316
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Ldz;->d:Lei;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    if-eqz p3, :cond_c

    .line 319
    iget v0, v3, Ldz;->e:I

    if-nez v0, :cond_9

    iget v0, v3, Ldz;->f:I

    if-eqz v0, :cond_a

    .line 320
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget v0, v3, Ldz;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget v0, v3, Ldz;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    :cond_a
    iget v0, v3, Ldz;->g:I

    if-nez v0, :cond_b

    iget v0, v3, Ldz;->h:I

    if-eqz v0, :cond_c

    .line 326
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget v0, v3, Ldz;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    iget v0, v3, Ldz;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_c
    iget-object v0, v3, Ldz;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, v3, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    .line 333
    :goto_2
    iget-object v5, v3, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 334
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-object v5, v3, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 336
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    :goto_3
    iget-object v5, v3, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    .line 306
    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    .line 307
    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    .line 308
    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    .line 309
    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    .line 310
    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    .line 311
    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    .line 312
    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    .line 338
    :cond_d
    if-nez v0, :cond_e

    .line 339
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    :cond_e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 342
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 347
    :cond_f
    iget-object v3, v3, Ldz;->a:Ldz;

    .line 348
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 349
    goto/16 :goto_0

    .line 351
    :cond_10
    return-void

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldv;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 6

    .prologue
    .line 588
    iget-boolean v0, p0, Ldv;->l:Z

    if-nez v0, :cond_1

    .line 610
    :cond_0
    return-void

    .line 591
    :cond_1
    sget-boolean v0, Leu;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_2
    iget-object v0, p0, Ldv;->c:Ldz;

    move-object v2, v0

    .line 594
    :goto_0
    if-eqz v2, :cond_0

    .line 595
    iget-object v0, v2, Ldz;->d:Lei;

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, v2, Ldz;->d:Lei;

    iget v1, v0, Lei;->B:I

    add-int/2addr v1, p1

    iput v1, v0, Lei;->B:I

    .line 597
    sget-boolean v0, Leu;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Ldz;->d:Lei;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Ldz;->d:Lei;

    iget v3, v3, Lei;->B:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_3
    iget-object v0, v2, Ldz;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 601
    iget-object v0, v2, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 602
    iget-object v0, v2, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei;

    .line 603
    iget v3, v0, Lei;->B:I

    add-int/2addr v3, p1

    iput v3, v0, Lei;->B:I

    .line 604
    sget-boolean v3, Leu;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lei;->B:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 608
    :cond_5
    iget-object v0, v2, Ldz;->a:Ldz;

    move-object v2, v0

    goto/16 :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Ldv;->n:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 639
    sget-boolean v0, Leu;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    iget-boolean v0, p0, Ldv;->l:Z

    if-eqz v0, :cond_1

    .line 642
    iget v0, p0, Ldv;->p:I

    if-gez v0, :cond_1

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldv;->b(I)V

    .line 649
    const/4 v0, 0x0

    .line 652
    sget-boolean v1, Ldv;->a:Z

    if-eqz v1, :cond_10

    .line 653
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 654
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 656
    invoke-direct {p0, v0, v1}, Ldv;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 658
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ldv;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lea;

    move-result-object v0

    move-object v8, v0

    .line 661
    :goto_0
    if-eqz v8, :cond_2

    const/4 v0, 0x0

    move v7, v0

    .line 662
    :goto_1
    if-eqz v8, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 663
    :goto_2
    iget-object v0, p0, Ldv;->c:Ldz;

    move-object v6, v0

    .line 664
    :goto_3
    if-eqz v6, :cond_e

    .line 665
    if-eqz v8, :cond_4

    const/4 v0, 0x0

    move v5, v0

    .line 666
    :goto_4
    if-eqz v8, :cond_5

    const/4 v0, 0x0

    move v2, v0

    .line 667
    :goto_5
    iget v0, v6, Ldz;->c:I

    packed-switch v0, :pswitch_data_0

    .line 731
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Ldz;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_2
    iget v0, p0, Ldv;->k:I

    move v7, v0

    goto :goto_1

    .line 662
    :cond_3
    iget v0, p0, Ldv;->j:I

    move v1, v0

    goto :goto_2

    .line 665
    :cond_4
    iget v0, v6, Ldz;->e:I

    move v5, v0

    goto :goto_4

    .line 666
    :cond_5
    iget v0, v6, Ldz;->f:I

    move v2, v0

    goto :goto_5

    .line 669
    :pswitch_0
    iget-object v0, v6, Ldz;->d:Lei;

    .line 670
    iput v5, v0, Lei;->Q:I

    .line 671
    iget-object v2, p0, Ldv;->b:Leu;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Leu;->a(Lei;Z)V

    .line 735
    :cond_6
    :goto_6
    iget-object v0, v6, Ldz;->a:Ldz;

    move-object v6, v0

    .line 736
    goto :goto_3

    .line 674
    :pswitch_1
    iget-object v3, v6, Ldz;->d:Lei;

    .line 675
    iget v9, v3, Lei;->H:I

    .line 676
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 677
    const/4 v0, 0x0

    move-object v4, v3

    move v3, v0

    :goto_7
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    .line 678
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v0, v0, Leu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei;

    .line 679
    sget-boolean v10, Leu;->a:Z

    if-eqz v10, :cond_7

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OP_REPLACE: adding="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " old="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_7
    iget v10, v0, Lei;->H:I

    if-ne v10, v9, :cond_8

    .line 682
    if-ne v0, v4, :cond_9

    .line 683
    const/4 v4, 0x0

    iput-object v4, v6, Ldz;->d:Lei;

    .line 677
    :cond_8
    :goto_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 685
    :cond_9
    iget-object v10, v6, Ldz;->i:Ljava/util/ArrayList;

    if-nez v10, :cond_a

    .line 686
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Ldz;->i:Ljava/util/ArrayList;

    .line 688
    :cond_a
    iget-object v10, v6, Ldz;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iput v2, v0, Lei;->Q:I

    .line 690
    iget-boolean v10, p0, Ldv;->l:Z

    if-eqz v10, :cond_b

    .line 691
    iget v10, v0, Lei;->B:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lei;->B:I

    .line 692
    sget-boolean v10, Leu;->a:Z

    if-eqz v10, :cond_b

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bump nesting of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lei;->B:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_b
    iget-object v10, p0, Ldv;->b:Leu;

    invoke-virtual {v10, v0, v1, v7}, Leu;->a(Lei;II)V

    goto :goto_8

    :cond_c
    move-object v4, v3

    .line 700
    :cond_d
    if-eqz v4, :cond_6

    .line 701
    iput v5, v4, Lei;->Q:I

    .line 702
    iget-object v0, p0, Ldv;->b:Leu;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Leu;->a(Lei;Z)V

    goto/16 :goto_6

    .line 706
    :pswitch_2
    iget-object v0, v6, Ldz;->d:Lei;

    .line 707
    iput v2, v0, Lei;->Q:I

    .line 708
    iget-object v2, p0, Ldv;->b:Leu;

    invoke-virtual {v2, v0, v1, v7}, Leu;->a(Lei;II)V

    goto/16 :goto_6

    .line 711
    :pswitch_3
    iget-object v0, v6, Ldz;->d:Lei;

    .line 712
    iput v2, v0, Lei;->Q:I

    .line 713
    iget-object v2, p0, Ldv;->b:Leu;

    invoke-virtual {v2, v0, v1, v7}, Leu;->b(Lei;II)V

    goto/16 :goto_6

    .line 716
    :pswitch_4
    iget-object v0, v6, Ldz;->d:Lei;

    .line 717
    iput v5, v0, Lei;->Q:I

    .line 718
    iget-object v2, p0, Ldv;->b:Leu;

    invoke-virtual {v2, v0, v1, v7}, Leu;->c(Lei;II)V

    goto/16 :goto_6

    .line 721
    :pswitch_5
    iget-object v0, v6, Ldz;->d:Lei;

    .line 722
    iput v2, v0, Lei;->Q:I

    .line 723
    iget-object v2, p0, Ldv;->b:Leu;

    invoke-virtual {v2, v0, v1, v7}, Leu;->d(Lei;II)V

    goto/16 :goto_6

    .line 726
    :pswitch_6
    iget-object v0, v6, Ldz;->d:Lei;

    .line 727
    iput v5, v0, Lei;->Q:I

    .line 728
    iget-object v2, p0, Ldv;->b:Leu;

    invoke-virtual {v2, v0, v1, v7}, Leu;->e(Lei;II)V

    goto/16 :goto_6

    .line 738
    :cond_e
    iget-object v0, p0, Ldv;->b:Leu;

    iget-object v2, p0, Ldv;->b:Leu;

    iget v2, v2, Leu;->n:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v7, v3}, Leu;->a(IIIZ)V

    .line 740
    iget-boolean v0, p0, Ldv;->l:Z

    if-eqz v0, :cond_f

    .line 741
    iget-object v0, p0, Ldv;->b:Leu;

    invoke-virtual {v0, p0}, Leu;->b(Ldv;)V

    .line 743
    :cond_f
    return-void

    :cond_10
    move-object v8, v0

    goto/16 :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, p0, Ldv;->p:I

    if-ltz v1, :cond_0

    .line 245
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget v1, p0, Ldv;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    iget-object v1, p0, Ldv;->n:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 249
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Ldv;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
