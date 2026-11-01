.class public final Lg/bue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dhc;


# instance fields
.field public final a:Lg/dwg;

.field public final b:Lg/adz;


# direct methods
.method public constructor <init>(Lg/dwg;Lg/adz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bue;->a:Lg/dwg;

    iput-object p2, p0, Lg/bue;->b:Lg/adz;

    return-void
.end method


# virtual methods
.method public final e(Lg/gcu;)Lg/cwx;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lg/bue;->b:Lg/adz;

    invoke-virtual {v1, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/gcu;->g(Lg/gsh;)Lg/cwx;

    move-result-object p1

    iget-object v0, v1, Lg/adz;->a:Ljava/lang/Object;

    check-cast v0, Lg/cwx;

    iget-object v1, p0, Lg/bue;->a:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->u:Lg/cag;

    iget-object v1, v1, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v1, p1, v0}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v1

    invoke-virtual {v1}, Lg/dho;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final f()Lg/au;
    .locals 1

    sget-object v0, Lg/au;->ASSIGN:Lg/au;

    return-object v0
.end method

.method public final getType()Lg/cwx;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lg/bue;->b:Lg/adz;

    invoke-virtual {v1, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {v0}, Lg/flv;->j()Lg/cwx;

    move-result-object v0

    iget-object v1, v1, Lg/adz;->a:Ljava/lang/Object;

    check-cast v1, Lg/cwx;

    iget-object v2, p0, Lg/bue;->a:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->u:Lg/cag;

    iget-object v2, v2, Lg/cag;->e:Lg/cwm;

    invoke-virtual {v2, v0, v1}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object v2

    invoke-virtual {v2}, Lg/dho;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHECK_CAST_ASSIGN{("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/bue;->b:Lg/adz;

    iget-object v2, v1, Lg/adz;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v1}, Lg/flv;->j()Lg/cwx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
