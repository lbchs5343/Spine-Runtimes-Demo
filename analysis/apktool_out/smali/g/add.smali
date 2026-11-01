.class public final Lg/add;
.super Lg/gsh;
.source "SourceFile"

# interfaces
.implements Lg/ehh;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/cwx;)V
    .locals 0

    invoke-direct {p0}, Lg/lh;-><init>()V

    iput-object p1, p0, Lg/add;->a:Ljava/lang/String;

    iput-object p2, p0, Lg/flv;->h:Lg/cwx;

    return-void
.end method


# virtual methods
.method public final b()Lg/gsh;
    .locals 3

    new-instance v0, Lg/add;

    iget-object v1, p0, Lg/add;->a:Ljava/lang/String;

    iget-object v2, p0, Lg/flv;->h:Lg/cwx;

    invoke-direct {v0, v1, v2}, Lg/add;-><init>(Ljava/lang/String;Lg/cwx;)V

    invoke-virtual {v0, p0}, Lg/lh;->s(Lg/lh;)V

    iget-object v1, p0, Lg/gsh;->ae:Lg/eek;

    invoke-virtual {v0, v1}, Lg/gsh;->_bb(Lg/eek;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/add;->a:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/add;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/add;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lg/add;->a:Ljava/lang/String;

    check-cast p1, Lg/add;

    iget-object p1, p1, Lg/add;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/add;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/add;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/add;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
