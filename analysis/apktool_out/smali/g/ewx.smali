.class public final Lg/ewx;
.super Ljava/lang/Object;

# interfaces
.implements Lg/faq;


# instance fields
.field public a:Lg/faq;

.field public b:Lg/faq;

.field public c:Lg/faq;


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/ewx;->a:Lg/faq;

    invoke-interface {v1}, Lg/faq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ewx;->b:Lg/faq;

    invoke-interface {v1}, Lg/faq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ewx;->c:Lg/faq;

    invoke-interface {v1}, Lg/faq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dq()Lg/axb;
    .locals 1

    sget-object v0, Lg/gt;->dq:Lg/gt;

    return-object v0
.end method

.method public final dq(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/ewx;->a:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/ewx;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lg/ewx;->c:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/ewx;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
