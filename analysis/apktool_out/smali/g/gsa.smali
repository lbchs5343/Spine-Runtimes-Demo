.class public final Lg/gsa;
.super Ljava/lang/Object;

# interfaces
.implements Lg/eyj;


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Lg/dlv;

.field public c:Z


# virtual methods
.method public final d(Ljava/lang/String;)Lg/bgh;
    .locals 2

    iget-object v0, p0, Lg/gsa;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/bgh;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/blw;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/gsa;->b:Lg/dlv;

    iget-object v2, v0, Lg/blw;->b:Ljava/lang/String;

    sget-object v3, Lg/dqk;->a:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lg/dqk;

    const/4 v3, 0x1

    invoke-direct {v2, v1, p1, v0, v3}, Lg/dqk;-><init>(Lg/dlv;Ljava/lang/String;Lg/blw;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "update"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "emit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    new-instance v2, Lg/dqk;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v0, v3}, Lg/dqk;-><init>(Lg/dlv;Ljava/lang/String;Lg/blw;I)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v2, Lg/dqk;

    const/4 v3, 0x2

    invoke-direct {v2, v1, p1, v0, v3}, Lg/dqk;-><init>(Lg/dlv;Ljava/lang/String;Lg/blw;I)V

    :goto_1
    if-eqz v2, :cond_1

    iget v0, v2, Lg/dqk;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Lg/dqk;->e:Lg/dlv;

    iget-object v1, v2, Lg/dqk;->f:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, v2, Lg/dqk;->f:Ljava/util/HashMap;

    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Lg/dqk;->g(Lg/dlv;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v0}, Lg/dlv;->d(Lg/dlv;)Lg/dlv;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/dqk;->g(Lg/dlv;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, v2, Lg/dqk;->e:Lg/dlv;

    invoke-virtual {v0}, Lg/dlv;->i()Lg/cyx;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v2, Lg/dqk;->b:Ljava/lang/String;

    iget-object v2, v2, Lg/dqk;->d:Lg/blw;

    invoke-interface {v1, v0, v3, v2}, Lg/cyx;->dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, v2, Lg/dqk;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v0, v2, Lg/dqk;->f:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v2, Lg/dqk;->e:Lg/dlv;

    invoke-virtual {v1}, Lg/dlv;->wn()Lg/dsk;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lg/dsk;->b(Ljava/lang/String;)Lg/ans;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/ans;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dus;

    iget-object v2, v1, Lg/bgh;->dq:Lg/eyj;

    iget-object v3, v1, Lg/bgh;->iw:Ljava/lang/String;

    iget-object v1, v1, Lg/bgh;->ox:Lg/csh;

    iget-object v1, v1, Lg/csh;->b:Ljava/util/ArrayList;

    check-cast v2, Lg/gsa;

    invoke-virtual {v2, v3, v1}, Lg/gsa;->e(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    :cond_a
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
