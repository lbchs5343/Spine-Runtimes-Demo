.class public final Lg/fmc;
.super Lg/bfm;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lg/amh;


# direct methods
.method public constructor <init>(Lg/amh;Lg/eek;Lg/gks;)V
    .locals 0

    iput-object p1, p0, Lg/fmc;->d:Lg/amh;

    invoke-direct {p0, p2, p3}, Lg/bfm;-><init>(Lg/eek;Lg/gsh;)V

    return-void
.end method


# virtual methods
.method public final c(Lg/eie;)Z
    .locals 3

    iget-object v0, p0, Lg/bfm;->a:Lg/eek;

    iget-object v1, v0, Lg/eek;->ai:Lg/gks;

    invoke-virtual {p1, v1}, Lg/eie;->p(Lg/gsh;)Lg/cwx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/eie;->p(Lg/gsh;)Lg/cwx;

    move-result-object p1

    iget-object v0, p0, Lg/fmc;->d:Lg/amh;

    iget-object v0, v0, Lg/amh;->d:Lg/cwm;

    invoke-virtual {v0, v1, p1}, Lg/cwm;->h(Lg/cwx;Lg/cwx;)Lg/dho;

    move-result-object p1

    invoke-virtual {p1}, Lg/dho;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lg/dho;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
