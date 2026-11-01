.class public Lg/gez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/jn;
.implements Lg/caf;


# static fields
.field public static final d:Lg/gez;


# instance fields
.field public e:Ljava/lang/Object;

.field public final synthetic f:I

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/gez;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    sput-object v0, Lg/gez;->d:Lg/gez;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v0, 0x2

    iput v0, p0, Lg/gez;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/gez;->e:Ljava/lang/Object;

    new-instance v2, Lg/nq;

    invoke-direct {v2}, Lg/nq;-><init>()V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-array v4, v0, [Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lg/nq;->f:Ljava/util/List;

    new-instance v4, Lg/fov;

    invoke-direct {v4, v6}, Lg/fov;-><init>(I)V

    iput-object v4, v2, Lg/nq;->b:Lg/fov;

    new-instance v4, Lg/fov;

    invoke-direct {v4, v0}, Lg/fov;-><init>(I)V

    iput-object v4, v2, Lg/nq;->a:Lg/fov;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "verify dex file checksum before load"

    iput-object v0, v2, Lg/nq;->e:Ljava/lang/String;

    iput-object v3, v2, Lg/nq;->g:Ljava/lang/Boolean;

    new-instance v0, Lg/agx;

    const/16 v3, 0xb

    invoke-direct {v0, v3, p0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    iput-object v0, v2, Lg/nq;->d:Lg/agx;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/nq;

    iget-object v2, v1, Lg/nq;->c:Ljava/lang/String;

    iget-object v3, v1, Lg/nq;->e:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lg/nq;->a:Lg/fov;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lg/nq;->b:Lg/fov;

    if-eqz v3, :cond_1

    iget-object v1, v1, Lg/nq;->d:Lg/agx;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Setter should be set for option: "

    invoke-static {v1, v2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Formatter should be set for option: "

    invoke-static {v1, v2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser should be set for option: "

    invoke-static {v1, v2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Description should be set for option: "

    invoke-static {v1, v2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/gez;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/gez;->f:I

    iput-object p2, p0, Lg/gez;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;ZZ)V
    .locals 0

    const/16 p3, 0x9

    iput p3, p0, Lg/gez;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gez;->e:Ljava/lang/Object;

    iput-boolean p2, p0, Lg/gez;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/gez;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gez;->e:Ljava/lang/Object;

    iput-boolean p2, p0, Lg/gez;->g:Z

    return-void
.end method

.method public constructor <init>(Lg/adh;Lg/cuz;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lg/gez;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/gez;->g:Z

    iput-object p2, p0, Lg/gez;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/dwm;Z)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lg/gez;->f:I

    invoke-direct {p0, v0, p1}, Lg/gez;-><init>(ILjava/lang/Object;)V

    iput-boolean p2, p0, Lg/gez;->g:Z

    return-void
.end method

.method public constructor <init>(Lg/ggg;Lg/hed;)V
    .locals 4

    const/4 v0, 0x5

    iput v0, p0, Lg/gez;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/gez;->e:Ljava/lang/Object;

    iget-boolean v1, p1, Lg/ggg;->c:Z

    iput-boolean v1, p0, Lg/gez;->g:Z

    iget-object p1, p1, Lg/ggg;->b:Lg/gez;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/gez;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p2, Lg/hed;->am:Lg/cci;

    invoke-virtual {p1}, Lg/cci;->av()V

    iget-object v1, p1, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/hcd;

    iget-object v3, v2, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v3}, Lg/gqc;->be()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lg/hcd;->g:Lg/dsj;

    iget-object v2, v2, Lg/dsj;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lg/cci;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cci;

    iget-object v1, v1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p2, Lg/hed;->am:Lg/cci;

    iget-object p1, p1, Lg/cci;->ab:Lg/dwg;

    iget-object p1, p1, Lg/dwg;->k:Lg/fnq;

    iget-object p1, p1, Lg/fnq;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lg/gez;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gez;->e:Ljava/lang/Object;

    iput-boolean p1, p0, Lg/gez;->g:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lg/gez;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg/gez;->g:Z

    iput-object p3, p0, Lg/gez;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public _bl(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lg/gez;->e:Ljava/lang/Object;

    check-cast v0, Lg/cuz;

    check-cast p1, Lg/atp;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/cuz;->g:Z

    iget-object v2, v0, Lg/cuz;->r:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, v0, Lg/cuz;->t:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iput-object p1, v0, Lg/cuz;->i:Lg/atp;

    iget-object v2, v0, Lg/cuz;->j:Lg/bze;

    iput-object p1, v2, Lg/bze;->b:Lg/atp;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    iget-object p1, v0, Lg/cuz;->o:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/cuz;->ae(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Lg/cyt;

    move-result-object p1

    check-cast p1, Lg/gkm;

    iget-object p1, p1, Lg/gkm;->c:Lg/her;

    iget-boolean v0, p1, Lg/her;->c:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lg/her;->b:Lg/gob;

    invoke-virtual {v0, v1}, Lg/gob;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fm;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lg/fm;->y(Z)Lg/adh;

    iget-object p1, p1, Lg/her;->b:Lg/gob;

    iget-object v0, p1, Lg/gob;->d:[I

    iget v3, p1, Lg/gob;->b:I

    invoke-static {v3, v1, v0}, Lg/erl;->w(II[I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p1, Lg/gob;->a:[Ljava/lang/Object;

    aget-object v3, v1, v0

    sget-object v4, Lg/bfc;->c:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    aput-object v4, v1, v0

    iput-boolean v2, p1, Lg/gob;->c:Z

    :cond_1
    iput-boolean v2, p0, Lg/gez;->g:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "destroyLoader must be called on the main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Called while creating a loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public h(Lg/fjq;)V
    .locals 3

    iget-boolean v0, p0, Lg/gez;->g:Z

    if-eqz v0, :cond_0

    sget p1, Lg/gbs;->a:I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg/gez;->e:Ljava/lang/Object;

    check-cast v0, Lg/dzh;

    new-instance v1, Lg/fij;

    sget-object v2, Lg/cq;->DEFAULT:Lg/cq;

    invoke-direct {v1, p1, v2}, Lg/fij;-><init>(Lg/fjq;Lg/cq;)V

    invoke-virtual {v0, v1}, Lg/dzh;->q(Lg/fij;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sget p1, Lg/gbs;->a:I

    return-void
.end method

.method public i(Ljava/lang/String;Z)Lg/duh;
    .locals 2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v0, Lg/duh;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lg/duh;-><init>(Lg/gez;Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg/gez;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    move-object v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public k(Ljava/lang/CharSequence;I)Z
    .locals 6

    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    if-ltz v0, :cond_6

    iget-object v0, p0, Lg/gez;->e:Ljava/lang/Object;

    check-cast v0, Lg/dwm;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/gez;->p()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, p2, :cond_3

    if-ne v3, v1, :cond_3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    sget-object v5, Lg/cl;->b:Lg/gez;

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_1

    if-eq v3, v1, :cond_1

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :pswitch_1
    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Lg/gez;->p()Z

    move-result p1

    return p1

    :cond_4
    return v0

    :cond_5
    return v4

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public l(Ljava/util/HashMap;)V
    .locals 6

    iget-object v0, p0, Lg/gez;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/nq;

    iget-object v2, v1, Lg/nq;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ", value: "

    if-nez v3, :cond_0

    iget-object v3, v1, Lg/nq;->g:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v5, v1, Lg/nq;->a:Lg/fov;

    invoke-virtual {v5, v3}, Lg/fov;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-object v1, v1, Lg/nq;->d:Lg/agx;

    invoke-virtual {v1, v3}, Lg/agx;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Setter invoke failed for option: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parse failed for option: "

    invoke-static {v1, v2, v4, v3}, Lg/awf;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method

.method public m(JLjava/lang/String;)Lg/duh;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lg/duh;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p3, p1, v0}, Lg/duh;-><init>(Lg/gez;Ljava/lang/String;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public n(Lg/ejb;)Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lg/gez;->g:Z

    const-string v1, "r"

    const/4 v2, 0x0

    const-string v3, "v"

    if-eqz v0, :cond_1

    iget-object p1, p1, Lg/ejb;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/vm;

    iget-object p1, p1, Lg/vm;->c:Lg/gks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lg/gks;->e:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-boolean v0, p1, Lg/ejb;->b:Z

    if-eqz v0, :cond_2

    const-string p1, "this"

    return-object p1

    :cond_2
    iget-object v0, p1, Lg/ejb;->c:Ljava/lang/String;

    invoke-static {v0}, Lg/cbd;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lg/ejb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/vm;

    iget-object v0, v0, Lg/vm;->c:Lg/gks;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lg/gks;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Lg/gez;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lg/ejb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Lg/duh;
    .locals 2

    new-instance v0, Lg/duh;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lg/duh;-><init>(Lg/gez;Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lg/gez;->g:Z

    return v0
.end method

.method public r(Lg/ftn;)Z
    .locals 2

    iget-object v0, p0, Lg/gez;->e:Ljava/lang/Object;

    check-cast v0, Lg/bbp;

    iget-object v0, v0, Lg/bbp;->f:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/gez;->f:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/gez;->e:Ljava/lang/Object;

    check-cast v0, Lg/cuz;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lg/ftn;Z)V
    .locals 2

    iget-object p2, p0, Lg/gez;->e:Ljava/lang/Object;

    check-cast p2, Lg/bbp;

    iget-boolean v0, p0, Lg/gez;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/gez;->g:Z

    iget-object v0, p2, Lg/bbp;->d:Lg/fxu;

    iget-object v0, v0, Lg/fxu;->h:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ab:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->b:Lg/esf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/esf;->ah()Z

    iget-object v0, v0, Lg/esf;->k:Lg/csq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/byn;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lg/byn;->g:Lg/gox;

    invoke-interface {v0}, Lg/erj;->dismiss()V

    :cond_1
    iget-object p2, p2, Lg/bbp;->f:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/gez;->g:Z

    return-void
.end method
