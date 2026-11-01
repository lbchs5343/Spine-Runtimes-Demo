.class public Lg/azc;
.super Lg/coh;
.source "SourceFile"

# interfaces
.implements Lg/qz;


# instance fields
.field public final l:Lg/w;


# direct methods
.method public constructor <init>(Lg/w;Lg/boj;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lg/coh;-><init>(Lg/boj;Z)V

    iput-object p1, p0, Lg/azc;->l:Lg/w;

    return-void
.end method


# virtual methods
.method public final f()Lg/qz;
    .locals 2

    iget-object v0, p0, Lg/azc;->l:Lg/w;

    invoke-static {v0}, Lg/awf;->n(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/azc;->l:Lg/w;

    invoke-static {p1}, Lg/cux;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/bry;->_z(Ljava/lang/Object;)V

    return-void
.end method

.method public m(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/azc;->l:Lg/w;

    invoke-static {v0}, Lg/awt;->ab(Lg/bdp;)Lg/bdp;

    move-result-object v0

    invoke-static {p1}, Lg/cux;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lg/baf;->ad(Ljava/lang/Object;Lg/bdp;)V

    return-void
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
