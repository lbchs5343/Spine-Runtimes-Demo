.class public final Lg/fsb;
.super Lg/ehi;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/IOException;

.field public final b:Lg/ehi;

.field public final f:Lg/deb;


# direct methods
.method public constructor <init>(Lg/ehi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fsb;->b:Lg/ehi;

    new-instance v0, Lg/ajo;

    invoke-virtual {p1}, Lg/ehi;->c()Lg/dsy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lg/ajo;-><init>(Lg/fsb;Lg/dsy;)V

    invoke-static {v0}, Lg/baf;->ai(Lg/cpv;)Lg/deb;

    move-result-object p1

    iput-object p1, p0, Lg/fsb;->f:Lg/deb;

    return-void
.end method


# virtual methods
.method public final c()Lg/dsy;
    .locals 1

    iget-object v0, p0, Lg/fsb;->f:Lg/deb;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lg/fsb;->b:Lg/ehi;

    invoke-virtual {v0}, Lg/ehi;->close()V

    return-void
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lg/fsb;->b:Lg/ehi;

    invoke-virtual {v0}, Lg/ehi;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lg/dpd;
    .locals 1

    iget-object v0, p0, Lg/fsb;->b:Lg/ehi;

    invoke-virtual {v0}, Lg/ehi;->e()Lg/dpd;

    move-result-object v0

    return-object v0
.end method
