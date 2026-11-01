.class public abstract Lg/cuz;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lg/atp;

.field public j:Lg/bze;

.field public k:I

.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Landroid/widget/EditText;

.field public final n:Ljava/util/Stack;

.field public o:Ljava/lang/Object;

.field public p:Z

.field public q:Landroid/view/View;

.field public final r:Ljava/util/HashSet;

.field public s:Lg/gaf;

.field public final t:Ljava/util/HashSet;

.field public u:Z

.field public v:Landroid/view/View;

.field public w:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/cuz;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lg/cuz;->o:Ljava/lang/Object;

    iput-boolean v0, p0, Lg/cuz;->p:Z

    iput-boolean v0, p0, Lg/cuz;->x:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lg/cuz;->h:Z

    iput-boolean v0, p0, Lg/cuz;->f:Z

    iput-object v1, p0, Lg/cuz;->j:Lg/bze;

    iput-object v1, p0, Lg/cuz;->i:Lg/atp;

    iput-boolean v0, p0, Lg/cuz;->g:Z

    iput-object v1, p0, Lg/cuz;->v:Landroid/view/View;

    iput-object v1, p0, Lg/cuz;->q:Landroid/view/View;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/cuz;->r:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/cuz;->t:Ljava/util/HashSet;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lg/cuz;->n:Ljava/util/Stack;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method


# virtual methods
.method public final aa(Lg/evr;)V
    .locals 4

    iget-object v0, p1, Lg/amu;->ak:Ljava/lang/Object;

    iget-object v1, p1, Lg/evr;->ar:Landroid/widget/CheckBox;

    iget-object v2, p0, Lg/cuz;->r:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lg/cuz;->t:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p1, Lg/amu;->ak:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lg/cuz;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/cuz;->ak()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p1, Lg/amu;->ak:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ab(Lg/amu;ILjava/lang/Object;)V
    .locals 3

    iput-object p3, p1, Lg/amu;->ak:Ljava/lang/Object;

    iget-object p2, p1, Lg/amu;->am:Landroid/view/View;

    move-object v0, p3

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lg/cuz;->u:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lg/cuz;->u:Z

    if-eqz v1, :cond_3

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f08017c

    goto :goto_2

    :cond_2
    const v1, 0x7f08017b

    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object p2, p1, Lg/amu;->al:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, p3}, Lg/cuz;->ad(Lg/amu;Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lg/cuz;->ac(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lg/cuz;->r:Ljava/util/HashSet;

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    iget-object p3, p0, Lg/cuz;->t:Ljava/util/HashSet;

    if-eqz p2, :cond_4

    check-cast p1, Lg/evr;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lg/evr;->ar:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_4
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    check-cast p1, Lg/evr;

    iget-object p1, p1, Lg/evr;->ar:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_5
    return-void
.end method

.method public final ac(Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lg/cuz;->k:I

    if-ne p1, v2, :cond_0

    iget-boolean v3, p0, Lg/cuz;->x:Z

    if-nez v3, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lg/cuz;->x:Z

    if-eqz p1, :cond_2

    :cond_1
    return v2

    :cond_2
    return v0

    :cond_3
    iget p1, p0, Lg/cuz;->k:I

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_5

    iget-boolean p1, p0, Lg/cuz;->h:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v2
.end method

.method public ad(Lg/amu;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p1, Lg/amu;->ap:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lg/cuz;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lg/amu;->ap:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final ae(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/gs;->k(Landroidx/fragment/app/u;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final af()V
    .locals 6

    iget-object v0, p0, Lg/cuz;->s:Lg/gaf;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lg/cuz;->x:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lg/cuz;->r:Ljava/util/HashSet;

    if-nez v0, :cond_1

    iget v0, p0, Lg/cuz;->k:I

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget v0, p0, Lg/cuz;->k:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lg/cuz;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lg/ero;

    invoke-virtual {v0, v1}, Lg/ero;->av(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lg/cuz;->o:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lg/ero;

    invoke-virtual {v0, v1}, Lg/ero;->av(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lg/cuz;->s:Lg/gaf;

    invoke-interface {v1, v0}, Lg/gaf;->onFilePicked(Landroid/net/Uri;)V

    return-void

    :cond_7
    iget-boolean v3, p0, Lg/cuz;->x:Z

    if-eqz v3, :cond_a

    iget-object v0, p0, Lg/cuz;->s:Lg/gaf;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lg/ero;

    invoke-virtual {v4, v3}, Lg/ero;->av(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v3}, Lg/ero;->av(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {v0, v1}, Lg/gaf;->onFilesPicked(Ljava/util/List;)V

    return-void

    :cond_a
    if-nez v0, :cond_c

    iget-object v0, p0, Lg/cuz;->s:Lg/gaf;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :cond_b
    move-object v2, p0

    check-cast v2, Lg/ero;

    invoke-virtual {v2, v1}, Lg/ero;->av(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/gaf;->onFilePicked(Landroid/net/Uri;)V

    return-void

    :cond_c
    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lg/cuz;->s:Lg/gaf;

    iget-object v1, p0, Lg/cuz;->o:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lg/ero;

    invoke-virtual {v2, v1}, Lg/ero;->av(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/gaf;->onFilePicked(Landroid/net/Uri;)V

    return-void

    :cond_d
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lg/cuz;->s:Lg/gaf;

    iget-object v1, p0, Lg/cuz;->o:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lg/ero;

    invoke-virtual {v2, v1}, Lg/ero;->av(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/gaf;->onFilePicked(Landroid/net/Uri;)V

    return-void

    :cond_e
    iget-object v0, p0, Lg/cuz;->s:Lg/gaf;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :cond_f
    move-object v2, p0

    check-cast v2, Lg/ero;

    invoke-virtual {v2, v1}, Lg/ero;->av(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/gaf;->onFilePicked(Landroid/net/Uri;)V

    :cond_10
    :goto_4
    return-void
.end method

.method public ag(Landroidx/recyclerview/widget/p;)V
    .locals 0

    return-void
.end method

.method public final ah(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lg/cuz;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/cuz;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lg/cuz;->t:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lg/cuz;->al(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public ai(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public aj(Landroidx/recyclerview/widget/p;)V
    .locals 0

    return-void
.end method

.method public final ak()V
    .locals 4

    iget-object v0, p0, Lg/cuz;->t:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/evr;

    iget-object v2, v2, Lg/evr;->ar:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lg/cuz;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public al(Ljava/lang/Object;Z)V
    .locals 12

    invoke-virtual {p0, p1}, Lg/cuz;->z(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_0

    iget-object p2, p0, Lg/cuz;->o:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lg/cuz;->n:Ljava/util/Stack;

    iget-object v0, p0, Lg/cuz;->o:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lg/cuz;->o:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/cuz;->g:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Lg/cyt;

    move-result-object p2

    check-cast p2, Lg/gkm;

    iget-object v1, p2, Lg/gkm;->c:Lg/her;

    iget-boolean v0, v1, Lg/her;->c:Z

    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_5

    iget-object v0, v1, Lg/her;->b:Lg/gob;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lg/gob;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fm;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lg/fm;->y(Z)Lg/adh;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v3, Lg/adh;

    const-string v4, "Object returned from onCreateLoader must not be a non-static inner member class: "

    :try_start_0
    iput-boolean p1, v1, Lg/her;->c:Z

    move-object v6, p0

    check-cast v6, Lg/ero;

    new-instance v8, Ljava/io/File;

    iget-object p1, v6, Lg/cuz;->o:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v11, v6, Lg/ero;->am:Z

    iget v9, v6, Lg/ero;->ao:I

    iget-boolean v10, v6, Lg/ero;->at:Z

    new-instance v5, Lg/adh;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v5 .. v11}, Lg/adh;-><init>(Lg/ero;Landroid/content/Context;Ljava/io/File;IZZ)V

    invoke-virtual {v3}, Ljava/lang/Class;->isMemberClass()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_3
    :goto_1
    new-instance p1, Lg/fm;

    invoke-direct {p1, v5, v0}, Lg/fm;-><init>(Lg/adh;Lg/adh;)V

    iget-object v0, v1, Lg/her;->b:Lg/gob;

    invoke-virtual {v0, v2, p1}, Lg/gob;->h(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v1, Lg/her;->c:Z

    iget-object p2, p2, Lg/gkm;->b:Ljava/lang/Object;

    new-instance v0, Lg/gez;

    iget-object v1, p1, Lg/fm;->w:Lg/adh;

    invoke-direct {v0, v1, p0}, Lg/gez;-><init>(Lg/adh;Lg/cuz;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/a;->n(Lg/iz;Lg/jn;)V

    iget-object v1, p1, Lg/fm;->v:Lg/gez;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Lg/fm;->m(Lg/jn;)V

    :cond_4
    iput-object p2, p1, Lg/fm;->x:Ljava/lang/Object;

    iput-object v0, p1, Lg/fm;->v:Lg/gez;

    return-void

    :goto_2
    iput-boolean v2, v1, Lg/her;->c:Z

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "restartLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p0, p1}, Lg/cuz;->ai(Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lg/cuz;->o:Ljava/lang/Object;

    const-string v1, "/"

    if-nez v0, :cond_4

    const-string v0, "KEY_SINGLE_CLICK"

    const-string v2, "KEY_ALLOW_EXISTING_FILE"

    const-string v3, "KEY_ALLOW_MULTIPLE"

    const-string v4, "KEY_ALLOW_DIR_CREATE"

    const-string v5, "KEY_MODE"

    if-eqz p1, :cond_0

    iget v6, p0, Lg/cuz;->k:I

    invoke-virtual {p1, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lg/cuz;->k:I

    iget-boolean v5, p0, Lg/cuz;->p:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lg/cuz;->p:Z

    iget-boolean v4, p0, Lg/cuz;->x:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lg/cuz;->x:Z

    iget-boolean v3, p0, Lg/cuz;->h:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lg/cuz;->h:Z

    iget-boolean v2, p0, Lg/cuz;->f:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/cuz;->f:Z

    const-string v0, "KEY_CURRENT_PATH"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lg/cuz;->o:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iget v6, p0, Lg/cuz;->k:I

    invoke-virtual {p1, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/cuz;->k:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iget-boolean v5, p0, Lg/cuz;->p:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/cuz;->p:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iget-boolean v4, p0, Lg/cuz;->x:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/cuz;->x:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iget-boolean v3, p0, Lg/cuz;->h:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/cuz;->h:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iget-boolean v2, p0, Lg/cuz;->f:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/cuz;->f:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_START_PATH"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Lg/cuz;->o:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lg/cuz;->o:Ljava/lang/Object;

    iget-object p1, p0, Lg/cuz;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    iget p1, p0, Lg/cuz;->k:I

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    iget-object v0, p0, Lg/cuz;->v:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz p1, :cond_6

    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    const/16 v5, 0x8

    :goto_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/cuz;->q:Landroid/view/View;

    if-eqz p1, :cond_7

    const/16 v3, 0x8

    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lg/cuz;->f:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p1

    const v0, 0x7f09022d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lg/cuz;->o:Ljava/lang/Object;

    if-nez p1, :cond_9

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/cuz;->o:Ljava/lang/Object;

    :cond_9
    iget-object p1, p0, Lg/cuz;->o:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lg/cuz;->al(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lg/gaf;

    iput-object v0, p0, Lg/cuz;->s:Lg/gaf;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFilePickedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0e000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f090229

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean p2, p0, Lg/cuz;->p:Z

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00b6

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lg/cuz;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iput-object p2, p0, Lg/cuz;->w:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lg/cuz;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    iget-object p2, p0, Lg/cuz;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p3

    const v1, 0x7f0403ce

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    new-instance p3, Lg/cnm;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object v0, p3, Lg/cnm;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lg/fji;)V

    :cond_0
    new-instance p2, Lg/bze;

    invoke-direct {p2, p0}, Lg/bze;-><init>(Lg/cuz;)V

    iput-object p2, p0, Lg/cuz;->j:Lg/bze;

    iget-object p3, p0, Lg/cuz;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    const p2, 0x7f09022b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lg/bee;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lg/bee;-><init>(Lg/cuz;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09022d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lg/bee;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lg/bee;-><init>(Lg/cuz;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09022e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lg/bee;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v0}, Lg/bee;-><init>(Lg/cuz;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090237

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lg/cuz;->v:Landroid/view/View;

    const p2, 0x7f09022c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lg/cuz;->q:Landroid/view/View;

    const p2, 0x7f09023f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lg/cuz;->m:Landroid/widget/EditText;

    new-instance p3, Lg/bvb;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p0}, Lg/bvb;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lg/cuz;->o:Ljava/lang/Object;

    if-eqz p2, :cond_1

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lg/cuz;->ae(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cuz;->s:Lg/gaf;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const v0, 0x7f090229

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p1

    instance-of v0, p1, Lg/ub;

    if-eqz v0, :cond_0

    check-cast p1, Lg/ub;

    invoke-virtual {p1}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/v;

    move-result-object p1

    new-instance v0, Lg/bgr;

    invoke-direct {v0}, Lg/bgr;-><init>()V

    iput-object p0, v0, Lg/ade;->g:Lg/cuz;

    const-string v1, "new_folder_fragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/b;->show(Landroidx/fragment/app/v;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lg/cuz;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_CURRENT_PATH"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_ALLOW_MULTIPLE"

    iget-boolean v1, p0, Lg/cuz;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "KEY_ALLOW_EXISTING_FILE"

    iget-boolean v1, p0, Lg/cuz;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "KEY_ALLOW_DIR_CREATE"

    iget-boolean v1, p0, Lg/cuz;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "KEY_SINGLE_CLICK"

    iget-boolean v1, p0, Lg/cuz;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "KEY_MODE"

    iget v1, p0, Lg/cuz;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public y(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/buj;->q(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
