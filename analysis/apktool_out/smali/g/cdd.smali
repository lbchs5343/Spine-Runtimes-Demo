.class public final Lg/cdd;
.super Lg/buj;
.source "SourceFile"


# instance fields
.field public final bf:Lg/eek;

.field public final bg:Lg/eek;


# direct methods
.method public constructor <init>(Lg/gsh;Lg/gks;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/eek;

    sget-object v1, Lg/hay;->REGION_ARG:Lg/hay;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/eek;-><init>(Lg/hay;I)V

    iput-object v0, p0, Lg/cdd;->bf:Lg/eek;

    sget-object v2, Lg/csv;->DONT_INLINE:Lg/csv;

    invoke-virtual {v0, v2}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {p2}, Lg/gks;->z()Lg/gks;

    move-result-object p2

    invoke-virtual {v0, p2}, Lg/eek;->ax(Lg/gks;)V

    new-instance p2, Lg/eek;

    const/4 v3, 0x1

    invoke-direct {p2, v1, v3}, Lg/eek;-><init>(Lg/hay;I)V

    iput-object p2, p0, Lg/cdd;->bg:Lg/eek;

    invoke-virtual {p2, v2}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {p1}, Lg/gsh;->b()Lg/gsh;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/eek;->_an(Lg/gsh;)V

    iget-object p1, v0, Lg/eek;->ai:Lg/gks;

    iget-object p1, p1, Lg/gks;->a:Lg/vm;

    invoke-virtual {p1}, Lg/vm;->u()Lg/ejb;

    move-result-object p1

    iput-boolean v3, p1, Lg/ejb;->d:Z

    return-void
.end method


# virtual methods
.method public final bh(Lg/cab;)V
    .locals 2

    iget-object v0, p1, Lg/cab;->h:Lg/gcv;

    iget-object v1, v0, Lg/gcv;->d:Lg/fza;

    iget-object v0, v0, Lg/gcv;->c:Lg/fza;

    iget-object v0, v0, Lg/fza;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lg/ffb;->r(Ljava/util/List;Lg/fza;)Lg/fza;

    move-result-object v0

    iget-object v0, v0, Lg/fza;->ac:Ljava/util/ArrayList;

    iget-object v1, p0, Lg/cdd;->bg:Lg/eek;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lg/cab;->z:Lg/fza;

    iget-object p1, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v1, p0, Lg/cdd;->bf:Lg/eek;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method
