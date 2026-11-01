.class public final Lg/bqz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashSet;

.field public final b:Ljava/util/HashMap;

.field public final c:Lg/dda;

.field public final d:Lg/guv;

.field public final e:Ljava/util/HashSet;

.field public f:Ljava/util/HashSet;

.field public final g:Lg/gnq;

.field public final h:Lg/aea;

.field public final i:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lg/guv;Lg/gnq;Lg/aea;Ljava/util/HashMap;Lg/dda;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/bqz;->a:Ljava/util/HashSet;

    iput-object v0, p0, Lg/bqz;->f:Ljava/util/HashSet;

    iput-object p1, p0, Lg/bqz;->d:Lg/guv;

    iput-object p2, p0, Lg/bqz;->g:Lg/gnq;

    iput-object p3, p0, Lg/bqz;->h:Lg/aea;

    iput-object p4, p0, Lg/bqz;->b:Ljava/util/HashMap;

    iput-object p5, p0, Lg/bqz;->c:Lg/dda;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lg/bqz;->e:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lg/bqz;->i:Ljava/util/HashSet;

    iget-object p1, p5, Lg/dda;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-object p3, p0, Lg/bqz;->e:Ljava/util/HashSet;

    invoke-interface {p3, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
