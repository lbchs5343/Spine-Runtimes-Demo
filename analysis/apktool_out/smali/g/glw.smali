.class public final Lg/glw;
.super Lg/bjk;
.source "SourceFile"


# instance fields
.field public final g:Lg/eys;

.field public final h:Lg/eek;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/eys;Lg/eek;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/bjk;-><init>(Lg/cfm;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/glw;->i:Ljava/util/ArrayList;

    iput-object p2, p0, Lg/glw;->h:Lg/eek;

    new-instance p1, Lg/eys;

    invoke-direct {p1, p0}, Lg/eys;-><init>(Lg/cfm;)V

    iput-object p1, p0, Lg/glw;->g:Lg/eys;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/glw;->h:Lg/eek;

    iget v0, v0, Lg/eek;->ag:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lg/fsw;Lg/eos;)V
    .locals 3

    check-cast p2, Lg/grs;

    const-string v0, "synchronized ("

    invoke-virtual {p2, v0}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    const/4 v0, 0x0

    iget-object v1, p0, Lg/glw;->h:Lg/eek;

    invoke-virtual {v1, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v0, v2}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v0, ") {"

    invoke-interface {p2, v0}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-static {p2, v1}, Lg/ahw;->c(Lg/eos;Lg/eek;)V

    iget-object v0, p1, Lg/grb;->m:Lg/hed;

    invoke-static {p2, v0, v1}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    iget-object v0, p0, Lg/glw;->g:Lg/eys;

    invoke-virtual {p1, p2, v0}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Lg/grs;->ad(C)Lg/grs;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Synchronized:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/glw;->g:Lg/eys;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/glw;->g:Lg/eys;

    iget-object v0, v0, Lg/eys;->g:Ljava/util/ArrayList;

    return-object v0
.end method
