.class public final Lg/bmf;
.super Ljava/lang/Object;

# interfaces
.implements Lg/faq;


# instance fields
.field public a:[Lg/faq;

.field public b:Ljava/lang/String;

.field public c:Lg/gqx;


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/bmf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bmf;->a:[Lg/faq;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/bmf;->a:[Lg/faq;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-interface {v2}, Lg/faq;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dq()Lg/axb;
    .locals 1

    sget-object v0, Lg/euc;->dq:Lg/euc;

    return-object v0
.end method

.method public final dq(Ljava/util/Map;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lg/gqx;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bmf;->c:Lg/gqx;

    iget-object v1, p0, Lg/bmf;->b:Ljava/lang/String;

    iput-object v1, v0, Lg/gqx;->a:Ljava/lang/String;

    iget-object v0, p0, Lg/bmf;->a:[Lg/faq;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lg/bmf;->a:[Lg/faq;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lg/bmf;->c:Lg/gqx;

    iput-object v0, v2, Lg/gqx;->b:[Ljava/lang/Object;

    invoke-static {v1}, Lg/dzm;->aq(Ljava/lang/String;)Lg/cld;

    move-result-object v1

    const-string v2, "default_key"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-interface {v1, p1, v0}, Lg/cld;->p(Lorg/json/JSONObject;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
