.class public final Lg/gzg;
.super Lg/aog;
.source "SourceFile"


# instance fields
.field public final a:Lg/cwx;

.field public final bp:Lg/be;


# direct methods
.method public constructor <init>(Lg/cwx;Lg/be;)V
    .locals 1

    sget-object v0, Lg/cwx;->t:Lg/aog;

    iget-object v0, v0, Lg/aog;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lg/aog;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lg/gzg;->a:Lg/cwx;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lg/gzg;->bp:Lg/be;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1}, Lg/aog;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lg/gzg;

    iget-object v0, p1, Lg/gzg;->bp:Lg/be;

    iget-object v1, p0, Lg/gzg;->bp:Lg/be;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lg/gzg;->a:Lg/cwx;

    iget-object p1, p1, Lg/gzg;->a:Lg/cwx;

    invoke-virtual {v0, p1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bl()Lg/be;
    .locals 1

    iget-object v0, p0, Lg/gzg;->bp:Lg/be;

    return-object v0
.end method

.method public final bm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bo()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/gzg;->a:Lg/cwx;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lg/be;->UNBOUND:Lg/be;

    iget-object v1, p0, Lg/gzg;->bp:Lg/be;

    if-ne v1, v0, :cond_0

    invoke-virtual {v1}, Lg/be;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lg/be;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gzg;->a:Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
