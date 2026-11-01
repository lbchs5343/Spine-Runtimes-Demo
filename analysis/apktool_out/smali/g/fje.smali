.class public abstract Lg/fje;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Schedulers"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static b(Lg/gg;Lg/dwm;Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/fkj;

    iget-object p2, p2, Lg/fkj;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lg/gg;->ab(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Lg/flk;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 3

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v0

    invoke-virtual {p1}, Lg/gac;->an()V

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lg/gg;->t()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lg/flk;->c:Lg/dwm;

    invoke-static {v0, v2, v1}, Lg/fje;->b(Lg/gg;Lg/dwm;Ljava/util/ArrayList;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lg/flk;->b:I

    invoke-virtual {v0, v2}, Lg/gg;->ac(I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object p0, p0, Lg/flk;->c:Lg/dwm;

    invoke-static {v0, p0, v2}, Lg/fje;->b(Lg/gg;Lg/dwm;Ljava/util/ArrayList;)V

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v0}, Lg/gg;->aa()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1}, Lg/gac;->ah()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lg/gac;->am()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lg/fkj;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg/fkj;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/giw;

    invoke-interface {v1}, Lg/giw;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, p1}, Lg/giw;->r([Lg/fkj;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lg/fkj;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lg/fkj;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/giw;

    invoke-interface {p2}, Lg/giw;->t()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p2, p0}, Lg/giw;->r([Lg/fkj;)V

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lg/gac;->am()V

    throw p0

    :cond_6
    :goto_4
    return-void
.end method
