.class public final Lg/cne;
.super Lg/bgf;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Collection;

.field public final b:Ljava/util/Map;

.field public final c:I

.field public final g:Ljava/util/List;

.field public final h:Lg/ccw;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/ccw;Ljava/util/List;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg/bgf;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/cne;->h:Lg/ccw;

    iput p3, p0, Lg/cne;->c:I

    iput-object p2, p0, Lg/cne;->g:Ljava/util/List;

    iput-object v1, p0, Lg/cne;->j:Ljava/lang/Object;

    iput-object v1, p0, Lg/cne;->b:Ljava/util/Map;

    iput-object v1, p0, Lg/cne;->a:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg/bgf;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lg/cne;->h:Lg/ccw;

    const/4 v0, -0x1

    iput v0, p0, Lg/cne;->c:I

    iput-object v1, p0, Lg/cne;->g:Ljava/util/List;

    iput-object p1, p0, Lg/cne;->j:Ljava/lang/Object;

    iput-object p2, p0, Lg/cne;->b:Ljava/util/Map;

    iput-object v1, p0, Lg/cne;->a:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg/bgf;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lg/cne;->h:Lg/ccw;

    const/4 v0, -0x1

    iput v0, p0, Lg/cne;->c:I

    iput-object v1, p0, Lg/cne;->g:Ljava/util/List;

    iput-object v1, p0, Lg/cne;->j:Ljava/lang/Object;

    iput-object v1, p0, Lg/cne;->b:Ljava/util/Map;

    iput-object p1, p0, Lg/cne;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final _t(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;Lg/ccw;)V
    .locals 0

    return-void
.end method

.method public final ag(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lg/cne;->b:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/cne;->j:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p1, p0, Lg/cne;->a:Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lg/cne;->g:Ljava/util/List;

    iget v0, p0, Lg/cne;->c:I

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    instance-of v1, p1, Lg/grv;

    if-eqz v1, :cond_3

    check-cast p1, Lg/grv;

    iget-object v1, p1, Lg/grv;->l:Ljava/lang/Object;

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-le v2, v0, :cond_3

    iget-object p1, p1, Lg/grv;->k:Ljava/lang/reflect/Type;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lg/cne;->h:Lg/ccw;

    iget-object v2, v2, Lg/ccw;->k:Lg/mh;

    invoke-static {p2, p1, v2}, Lg/dtu;->s(Ljava/lang/Object;Ljava/lang/reflect/Type;Lg/mh;)Ljava/lang/Object;

    move-result-object p2

    :cond_2
    invoke-static {v1, v0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method
