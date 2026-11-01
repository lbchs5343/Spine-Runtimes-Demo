.class public final Lg/dus;
.super Lg/bgh;


# virtual methods
.method public final varargs dq([Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lg/bgh;->d:Lg/dlv;

    invoke-virtual {p1}, Lg/dlv;->wn()Lg/dsk;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lg/bgh;->iw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lg/dsk;->b(Ljava/lang/String;)Lg/ans;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lg/ans;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/bgh;->iw:Ljava/lang/String;

    new-instance v1, Lg/ans;

    invoke-direct {v1}, Lg/ans;-><init>()V

    iget-object v2, p1, Lg/dsk;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lg/dsk;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lg/dsk;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
