.class public Lwh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Z

.field public C:[Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public H:Landroid/database/Cursor;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public L:Lwm;

.field public M:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Z

.field public p:Landroid/content/DialogInterface$OnCancelListener;

.field public q:Landroid/content/DialogInterface$OnDismissListener;

.field public r:Landroid/content/DialogInterface$OnKeyListener;

.field public s:[Ljava/lang/CharSequence;

.field public t:Landroid/widget/ListAdapter;

.field public u:Landroid/content/DialogInterface$OnClickListener;

.field public v:I

.field public w:Landroid/view/View;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput v0, p0, Lwh;->c:I

    .line 763
    iput v0, p0, Lwh;->e:I

    .line 786
    iput-boolean v0, p0, Lwh;->B:Z

    .line 790
    const/4 v0, -0x1

    iput v0, p0, Lwh;->F:I

    .line 798
    iput-boolean v1, p0, Lwh;->M:Z

    .line 814
    iput-object p1, p0, Lwh;->a:Landroid/content/Context;

    .line 815
    iput-boolean v1, p0, Lwh;->o:Z

    .line 816
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lwh;->b:Landroid/view/LayoutInflater;

    .line 817
    return-void
.end method

.method private b(Lwb;)V
    .locals 10

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 877
    iget-object v0, p0, Lwh;->b:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lwb;->k(Lwb;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 880
    iget-boolean v0, p0, Lwh;->D:Z

    if-eqz v0, :cond_5

    .line 881
    iget-object v0, p0, Lwh;->H:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 882
    new-instance v0, Lwi;

    iget-object v2, p0, Lwh;->a:Landroid/content/Context;

    invoke-static {p1}, Lwb;->l(Lwb;)I

    move-result v3

    iget-object v5, p0, Lwh;->s:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lwi;-><init>(Lwh;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 942
    :goto_0
    iget-object v1, p0, Lwh;->L:Lwm;

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lwh;->L:Lwm;

    invoke-interface {v1, v6}, Lwm;->a(Landroid/widget/ListView;)V

    .line 949
    :cond_0
    invoke-static {p1, v0}, Lwb;->a(Lwb;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 950
    iget v0, p0, Lwh;->F:I

    invoke-static {p1, v0}, Lwb;->a(Lwb;I)I

    .line 952
    iget-object v0, p0, Lwh;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_9

    .line 953
    new-instance v0, Lwk;

    invoke-direct {v0, p0, p1}, Lwk;-><init>(Lwh;Lwb;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 976
    :cond_1
    :goto_1
    iget-object v0, p0, Lwh;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 977
    iget-object v0, p0, Lwh;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 980
    :cond_2
    iget-boolean v0, p0, Lwh;->E:Z

    if-eqz v0, :cond_a

    .line 981
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 985
    :cond_3
    :goto_2
    invoke-static {p1, v6}, Lwb;->a(Lwb;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 986
    return-void

    .line 897
    :cond_4
    new-instance v1, Lwj;

    iget-object v3, p0, Lwh;->a:Landroid/content/Context;

    iget-object v4, p0, Lwh;->H:Landroid/database/Cursor;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lwj;-><init>(Lwh;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lwb;)V

    move-object v0, v1

    goto :goto_0

    .line 926
    :cond_5
    iget-boolean v0, p0, Lwh;->E:Z

    if-eqz v0, :cond_6

    .line 927
    invoke-static {p1}, Lwb;->m(Lwb;)I

    move-result v2

    .line 932
    :goto_3
    iget-object v0, p0, Lwh;->H:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    .line 933
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lwh;->a:Landroid/content/Context;

    iget-object v3, p0, Lwh;->H:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lwh;->I:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_0

    .line 929
    :cond_6
    invoke-static {p1}, Lwb;->n(Lwb;)I

    move-result v2

    goto :goto_3

    .line 935
    :cond_7
    iget-object v0, p0, Lwh;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_8

    .line 936
    iget-object v0, p0, Lwh;->t:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 938
    :cond_8
    new-instance v0, Lwo;

    iget-object v1, p0, Lwh;->a:Landroid/content/Context;

    iget-object v3, p0, Lwh;->s:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Lwo;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 962
    :cond_9
    iget-object v0, p0, Lwh;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_1

    .line 963
    new-instance v0, Lwl;

    invoke-direct {v0, p0, v6, p1}, Lwl;-><init>(Lwh;Landroid/widget/ListView;Lwb;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 982
    :cond_a
    iget-boolean v0, p0, Lwh;->D:Z

    if-eqz v0, :cond_3

    .line 983
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public a(Lwb;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 820
    iget-object v0, p0, Lwh;->g:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 821
    iget-object v0, p0, Lwh;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Lwb;->b(Landroid/view/View;)V

    .line 836
    :cond_0
    :goto_0
    iget-object v0, p0, Lwh;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lwh;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lwb;->b(Ljava/lang/CharSequence;)V

    .line 839
    :cond_1
    iget-object v0, p0, Lwh;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 840
    const/4 v0, -0x1

    iget-object v1, p0, Lwh;->i:Ljava/lang/CharSequence;

    iget-object v2, p0, Lwh;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lwb;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 843
    :cond_2
    iget-object v0, p0, Lwh;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 844
    const/4 v0, -0x2

    iget-object v1, p0, Lwh;->k:Ljava/lang/CharSequence;

    iget-object v2, p0, Lwh;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lwb;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 847
    :cond_3
    iget-object v0, p0, Lwh;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 848
    const/4 v0, -0x3

    iget-object v1, p0, Lwh;->m:Ljava/lang/CharSequence;

    iget-object v2, p0, Lwh;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lwb;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 853
    :cond_4
    iget-object v0, p0, Lwh;->s:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    iget-object v0, p0, Lwh;->H:Landroid/database/Cursor;

    if-nez v0, :cond_5

    iget-object v0, p0, Lwh;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    .line 854
    :cond_5
    invoke-direct {p0, p1}, Lwh;->b(Lwb;)V

    .line 856
    :cond_6
    iget-object v0, p0, Lwh;->w:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 857
    iget-boolean v0, p0, Lwh;->B:Z

    if-eqz v0, :cond_c

    .line 858
    iget-object v1, p0, Lwh;->w:Landroid/view/View;

    iget v2, p0, Lwh;->x:I

    iget v3, p0, Lwh;->y:I

    iget v4, p0, Lwh;->z:I

    iget v5, p0, Lwh;->A:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lwb;->a(Landroid/view/View;IIII)V

    .line 874
    :cond_7
    :goto_1
    return-void

    .line 823
    :cond_8
    iget-object v0, p0, Lwh;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 824
    iget-object v0, p0, Lwh;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lwb;->a(Ljava/lang/CharSequence;)V

    .line 826
    :cond_9
    iget-object v0, p0, Lwh;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 827
    iget-object v0, p0, Lwh;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lwb;->a(Landroid/graphics/drawable/Drawable;)V

    .line 829
    :cond_a
    iget v0, p0, Lwh;->c:I

    if-eqz v0, :cond_b

    .line 830
    iget v0, p0, Lwh;->c:I

    invoke-virtual {p1, v0}, Lwb;->b(I)V

    .line 832
    :cond_b
    iget v0, p0, Lwh;->e:I

    if-eqz v0, :cond_0

    .line 833
    iget v0, p0, Lwh;->e:I

    invoke-virtual {p1, v0}, Lwb;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lwb;->b(I)V

    goto :goto_0

    .line 861
    :cond_c
    iget-object v0, p0, Lwh;->w:Landroid/view/View;

    invoke-virtual {p1, v0}, Lwb;->c(Landroid/view/View;)V

    goto :goto_1

    .line 863
    :cond_d
    iget v0, p0, Lwh;->v:I

    if-eqz v0, :cond_7

    .line 864
    iget v0, p0, Lwh;->v:I

    invoke-virtual {p1, v0}, Lwb;->a(I)V

    goto :goto_1
.end method
