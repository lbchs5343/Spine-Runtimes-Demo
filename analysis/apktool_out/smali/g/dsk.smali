.class public final Lg/dsk;
.super Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/util/HashMap;


# virtual methods
.method public final b(Ljava/lang/String;)Lg/ans;
    .locals 2

    iget-object v0, p0, Lg/dsk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dsk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dsk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ans;

    return-object p1

    :cond_0
    new-instance v0, Lg/ans;

    invoke-direct {v0}, Lg/ans;-><init>()V

    iget-object v1, p0, Lg/dsk;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
