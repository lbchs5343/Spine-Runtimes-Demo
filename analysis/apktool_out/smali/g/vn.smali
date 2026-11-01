.class public final Lg/vn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/fzn;)V
    .locals 13

    const-string v0, "trackers"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/ckq;

    iget-object v1, p1, Lg/fzn;->d:Ljava/lang/Object;

    check-cast v1, Lg/cmh;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/ckq;-><init>(Lg/cmh;I)V

    new-instance v1, Lg/ckq;

    iget-object v3, p1, Lg/fzn;->e:Ljava/lang/Object;

    check-cast v3, Lg/euw;

    invoke-direct {v1, v3}, Lg/ckq;-><init>(Lg/euw;)V

    new-instance v3, Lg/ckq;

    iget-object v4, p1, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v4, Lg/cmh;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lg/ckq;-><init>(Lg/cmh;I)V

    new-instance v4, Lg/ckq;

    iget-object v6, p1, Lg/fzn;->f:Ljava/lang/Object;

    check-cast v6, Lg/cmh;

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Lg/ckq;-><init>(Lg/cmh;I)V

    new-instance v8, Lg/ckq;

    const/4 v9, 0x3

    invoke-direct {v8, v6, v9}, Lg/ckq;-><init>(Lg/cmh;I)V

    new-instance v10, Lg/erh;

    invoke-direct {v10, v6}, Lg/erh;-><init>(Lg/cmh;)V

    new-instance v11, Lg/fkg;

    invoke-direct {v11, v6}, Lg/fkg;-><init>(Lg/cmh;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-lt v6, v12, :cond_0

    iget-object p1, p1, Lg/fzn;->h:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    sget v6, Lg/gx;->a:I

    const-string v6, "context"

    invoke-static {p1, v6}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v6, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v6}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    new-instance v6, Lg/ehm;

    invoke-direct {v6, p1}, Lg/ehm;-><init>(Landroid/net/ConnectivityManager;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/16 p1, 0x8

    new-array p1, p1, [Lg/pe;

    aput-object v0, p1, v2

    const/4 v0, 0x1

    aput-object v1, p1, v0

    aput-object v3, p1, v7

    aput-object v4, p1, v9

    aput-object v8, p1, v5

    const/4 v0, 0x5

    aput-object v10, p1, v0

    const/4 v0, 0x6

    aput-object v11, p1, v0

    const/4 v0, 0x7

    aput-object v6, p1, v0

    invoke-static {p1}, Lg/fuv;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/vn;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final b(Lg/fkj;)Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/vn;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lg/pe;

    invoke-interface {v3, p1}, Lg/pe;->c(Lg/fkj;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p1

    sget v1, Lg/gx;->a:I

    sget-object v1, Lg/vi;->b:Lg/vi;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lg/gsv;->bh(Ljava/util/Collection;Ljava/lang/String;Lg/and;I)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public final c(Lg/fkj;)Lg/bhw;
    .locals 4

    const-string v0, "spec"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/vn;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lg/pe;

    invoke-interface {v3, p1}, Lg/pe;->b(Lg/fkj;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lg/bkk;->a(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/pe;

    iget-object v3, p1, Lg/fkj;->r:Lg/bho;

    invoke-interface {v2, v3}, Lg/pe;->a(Lg/bho;)Lg/dqm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lg/gsv;->bf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lg/dqx;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg/dqx;

    new-instance v0, Lg/vd;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lg/vd;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lg/gs;->aq(Lg/dqx;)Lg/bhw;

    move-result-object p1

    return-object p1
.end method
