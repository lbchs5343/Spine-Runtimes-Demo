.class public final Lg/btg;
.super Lg/hdc;
.source "SourceFile"


# instance fields
.field public final a:Lg/hdc;

.field public d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/hdc;Lg/ayu;Lg/eqp;I)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lg/hdc;-><init>(Lg/ayu;Lg/eqp;I)V

    iput-object p1, p0, Lg/btg;->a:Lg/hdc;

    return-void
.end method

.method public constructor <init>(Lg/hdc;Lg/ayu;Lg/yu;Z)V
    .locals 6

    sget-object v3, Lg/eqp;->CUSTOM_RAW:Lg/eqp;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lg/hdc;-><init>(Lg/ayu;Lg/yu;Lg/eqp;ZZ)V

    iput-object p1, v0, Lg/btg;->a:Lg/hdc;

    return-void
.end method


# virtual methods
.method public final _o()Lg/eek;
    .locals 5

    new-instance v0, Lg/btg;

    iget-object v1, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lg/btg;->a:Lg/hdc;

    iget-object v3, p0, Lg/hdc;->ad:Lg/ayu;

    iget-object v4, p0, Lg/hdc;->ab:Lg/eqp;

    invoke-direct {v0, v2, v3, v4, v1}, Lg/btg;-><init>(Lg/hdc;Lg/ayu;Lg/eqp;I)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    iget-object v1, p0, Lg/btg;->d:Ljava/util/ArrayList;

    iput-object v1, v0, Lg/btg;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/btg;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lg/hdc;->_p(Lg/eek;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lg/btg;

    iget-object p1, p1, Lg/btg;->a:Lg/hdc;

    iget-object v1, p0, Lg/btg;->a:Lg/hdc;

    invoke-virtual {v1, p1}, Lg/hdc;->_p(Lg/eek;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final aa()Lg/gsh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/eek;->ag:I

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": INVOKE_CUSTOM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/eek;->ai:Lg/gks;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v0}, Lg/eek;->at(Ljava/lang/StringBuilder;)Z

    move-result v1

    const/16 v2, 0xa

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v0}, Lg/eek;->al(Ljava/lang/StringBuilder;)V

    const-string v1, " call-site: \n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/btg;->d:Ljava/util/ArrayList;

    const-string v3, "\n  "

    invoke-static {v3, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
