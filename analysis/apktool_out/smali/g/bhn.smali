.class public final Lg/bhn;
.super Lg/js;
.source "SourceFile"


# instance fields
.field public final synthetic h:Lg/tl;

.field public final synthetic i:Lg/cwi;


# direct methods
.method public constructor <init>(Lg/cwi;Lg/tl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bhn;->i:Lg/cwi;

    iput-object p2, p0, Lg/bhn;->h:Lg/tl;

    return-void
.end method


# virtual methods
.method public final g(Lg/fqk;)V
    .locals 2

    iget-object v0, p0, Lg/bhn;->i:Lg/cwi;

    iget-object v0, v0, Lg/cwi;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lg/bhn;->h:Lg/tl;

    invoke-virtual {v1, v0}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    return-void
.end method
