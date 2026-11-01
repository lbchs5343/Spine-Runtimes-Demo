.class public final Lg/cse;
.super Lg/fox;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lg/hed;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    iget-object p1, p1, Lg/hed;->al:Lg/ayu;

    iget-object p1, p1, Lg/ayu;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lg/cse;->a:Ljava/util/BitSet;

    return-void
.end method

.method public static b(Lg/hed;I)V
    .locals 2

    sget-object v0, Lg/acq;->ab:Lg/acq;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/cse;

    if-nez v0, :cond_0

    new-instance v0, Lg/cse;

    invoke-direct {v0, p0}, Lg/cse;-><init>(Lg/hed;)V

    invoke-virtual {p0, v0}, Lg/lh;->m(Lg/eue;)V

    :cond_0
    iget-object p0, v0, Lg/cse;->a:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic d()Lg/fky;
    .locals 1

    sget-object v0, Lg/acq;->ab:Lg/acq;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SKIP_MTH_ARGS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/cse;->a:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
