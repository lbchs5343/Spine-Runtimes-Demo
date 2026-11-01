.class public final Lg/ws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/frp;


# instance fields
.field public final synthetic a:Lg/bhz;


# direct methods
.method public constructor <init>(Lg/bhz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ws;->a:Lg/bhz;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Lg/sp;

    iget-object v1, p0, Lg/ws;->a:Lg/bhz;

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lg/sp;-><init>(Lg/bhz;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    invoke-virtual {v1, v0}, Lg/bhz;->l(Lg/bvf;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Lg/ejs;

    const/4 v5, 0x0

    iget-object v1, p0, Lg/ws;->a:Lg/bhz;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lg/ejs;-><init>(Lg/bhz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Lg/bhz;->l(Lg/bvf;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/ws;->a:Lg/bhz;

    invoke-virtual {v0, p1, p2}, Lg/bhz;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lg/ws;->a:Lg/bhz;

    invoke-virtual {v0, p1, p2, p3}, Lg/bhz;->n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lg/dhq;

    const/4 v1, 0x0

    iget-object v2, p0, Lg/ws;->a:Lg/bhz;

    invoke-direct {v0, v2, p1, v1}, Lg/dhq;-><init>(Lg/bhz;Landroid/os/Bundle;I)V

    invoke-virtual {v2, v0}, Lg/bhz;->l(Lg/bvf;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lg/ws;->a:Lg/bhz;

    invoke-virtual {v0, p1}, Lg/bhz;->m(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final zzb()J
    .locals 2

    iget-object v0, p0, Lg/ws;->a:Lg/bhz;

    invoke-virtual {v0}, Lg/bhz;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 4

    new-instance v0, Lg/bay;

    invoke-direct {v0}, Lg/bay;-><init>()V

    new-instance v1, Lg/flf;

    const/4 v2, 0x1

    iget-object v3, p0, Lg/ws;->a:Lg/bhz;

    invoke-direct {v1, v3, v0, v2}, Lg/flf;-><init>(Lg/bhz;Lg/bay;I)V

    invoke-virtual {v3, v1}, Lg/bhz;->l(Lg/bvf;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lg/bay;->d(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lg/bay;->c(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 4

    new-instance v0, Lg/bay;

    invoke-direct {v0}, Lg/bay;-><init>()V

    new-instance v1, Lg/flf;

    const/4 v2, 0x4

    iget-object v3, p0, Lg/ws;->a:Lg/bhz;

    invoke-direct {v1, v3, v0, v2}, Lg/flf;-><init>(Lg/bhz;Lg/bay;I)V

    invoke-virtual {v3, v1}, Lg/bhz;->l(Lg/bvf;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lg/bay;->d(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lg/bay;->c(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 4

    new-instance v0, Lg/bay;

    invoke-direct {v0}, Lg/bay;-><init>()V

    new-instance v1, Lg/flf;

    const/4 v2, 0x3

    iget-object v3, p0, Lg/ws;->a:Lg/bhz;

    invoke-direct {v1, v3, v0, v2}, Lg/flf;-><init>(Lg/bhz;Lg/bay;I)V

    invoke-virtual {v3, v1}, Lg/bhz;->l(Lg/bvf;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lg/bay;->d(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lg/bay;->c(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 4

    new-instance v0, Lg/bay;

    invoke-direct {v0}, Lg/bay;-><init>()V

    new-instance v1, Lg/flf;

    const/4 v2, 0x0

    iget-object v3, p0, Lg/ws;->a:Lg/bhz;

    invoke-direct {v1, v3, v0, v2}, Lg/flf;-><init>(Lg/bhz;Lg/bay;I)V

    invoke-virtual {v3, v1}, Lg/bhz;->l(Lg/bvf;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lg/bay;->d(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lg/bay;->c(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzp(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lg/alh;

    const/4 v1, 0x0

    iget-object v2, p0, Lg/ws;->a:Lg/bhz;

    invoke-direct {v0, v2, p1, v1}, Lg/alh;-><init>(Lg/bhz;Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lg/bhz;->l(Lg/bvf;)V

    return-void
.end method

.method public final zzr(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lg/alh;

    const/4 v1, 0x1

    iget-object v2, p0, Lg/ws;->a:Lg/bhz;

    invoke-direct {v0, v2, p1, v1}, Lg/alh;-><init>(Lg/bhz;Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lg/bhz;->l(Lg/bvf;)V

    return-void
.end method
