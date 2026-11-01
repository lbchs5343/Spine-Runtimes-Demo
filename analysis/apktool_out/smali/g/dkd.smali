.class public final Lg/dkd;
.super Lg/eek;
.source "SourceFile"


# instance fields
.field public final a:Lg/cwx;


# direct methods
.method public constructor <init>(Lg/cwx;)V
    .locals 2

    sget-object v0, Lg/hay;->CONST_CLASS:Lg/hay;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    iput-object p1, p0, Lg/dkd;->a:Lg/cwx;

    return-void
.end method


# virtual methods
.method public final _o()Lg/eek;
    .locals 2

    new-instance v0, Lg/dkd;

    iget-object v1, p0, Lg/dkd;->a:Lg/cwx;

    invoke-direct {v0, v1}, Lg/dkd;-><init>(Lg/cwx;)V

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/dkd;

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/dkd;

    iget-object v0, p0, Lg/dkd;->a:Lg/cwx;

    iget-object p1, p1, Lg/dkd;->a:Lg/cwx;

    invoke-virtual {v0, p1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lg/eek;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/dkd;->a:Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
