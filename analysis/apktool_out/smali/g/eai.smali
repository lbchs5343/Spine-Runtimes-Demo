.class public final Lg/eai;
.super Lg/hdc;
.source "SourceFile"


# instance fields
.field public final a:Lg/fw;

.field public final y:Lg/ayu;


# direct methods
.method public constructor <init>(Lg/ayu;ILg/fw;Lg/ayu;)V
    .locals 1

    sget-object v0, Lg/eqp;->POLYMORPHIC:Lg/eqp;

    invoke-direct {p0, p1, v0, p2}, Lg/hdc;-><init>(Lg/ayu;Lg/eqp;I)V

    iput-object p3, p0, Lg/eai;->a:Lg/fw;

    iput-object p4, p0, Lg/eai;->y:Lg/ayu;

    return-void
.end method

.method public constructor <init>(Lg/ayu;Lg/yu;Lg/fw;Lg/ayu;Z)V
    .locals 6

    sget-object v3, Lg/eqp;->POLYMORPHIC:Lg/eqp;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lg/hdc;-><init>(Lg/ayu;Lg/yu;Lg/eqp;ZZ)V

    iput-object p3, v0, Lg/eai;->a:Lg/fw;

    iput-object p4, v0, Lg/eai;->y:Lg/ayu;

    return-void
.end method


# virtual methods
.method public final _o()Lg/eek;
    .locals 5

    new-instance v0, Lg/eai;

    iget-object v1, p0, Lg/eek;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lg/eai;->a:Lg/fw;

    iget-object v3, p0, Lg/eai;->y:Lg/ayu;

    iget-object v4, p0, Lg/hdc;->ad:Lg/ayu;

    invoke-direct {v0, v4, v1, v2, v3}, Lg/eai;-><init>(Lg/ayu;ILg/fw;Lg/ayu;)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/eai;

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lg/hdc;->_p(Lg/eek;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/eai;

    iget-object v0, p0, Lg/eai;->a:Lg/fw;

    iget-object p1, p1, Lg/eai;->a:Lg/fw;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/eek;->ag:I

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": INVOKE_POLYMORPHIC "

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

    const-string v1, " base: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/eai;->y:Lg/ayu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " proto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/eai;->a:Lg/fw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
