.class public final Lg/ekv;
.super Lg/js;
.source "SourceFile"


# instance fields
.field public final synthetic h:Ljava/util/ArrayList;

.field public final synthetic i:Lg/fii;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/util/ArrayList;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/fii;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ekv;->i:Lg/fii;

    iput-object p2, p0, Lg/ekv;->j:Ljava/lang/Object;

    iput-object p3, p0, Lg/ekv;->k:Ljava/util/ArrayList;

    iput-object p4, p0, Lg/ekv;->l:Ljava/lang/Object;

    iput-object p5, p0, Lg/ekv;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final f(Lg/fqk;)V
    .locals 3

    const/4 p1, 0x0

    iget-object v0, p0, Lg/ekv;->i:Lg/fii;

    iget-object v1, p0, Lg/ekv;->j:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lg/ekv;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Lg/fii;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Lg/ekv;->l:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lg/ekv;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Lg/fii;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public final g(Lg/fqk;)V
    .locals 0

    invoke-virtual {p1, p0}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    return-void
.end method
