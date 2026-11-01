.class public final Lg/bst;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/aoi;

.field public b:Z

.field public final c:Ljava/util/LinkedHashSet;

.field public final d:Lg/frk;

.field public final e:Ljava/util/ArrayList;

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/content/Context;

.field public i:Ljava/util/concurrent/Executor;

.field public j:Ljava/util/HashSet;

.field public final k:J

.field public l:Z

.field public final m:Ljava/lang/String;

.field public final n:Lg/bjg;

.field public final o:Ljava/util/ArrayList;

.field public p:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bst;->h:Landroid/content/Context;

    iput-object p2, p0, Lg/bst;->m:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/bst;->o:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/bst;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/bst;->g:Ljava/util/ArrayList;

    sget-object p1, Lg/bjg;->AUTOMATIC:Lg/bjg;

    iput-object p1, p0, Lg/bst;->n:Lg/bjg;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/bst;->b:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lg/bst;->k:J

    new-instance p1, Lg/frk;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lg/frk;-><init>(I)V

    iput-object p1, p0, Lg/bst;->d:Lg/frk;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lg/bst;->c:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final varargs q([Lg/hbi;)V
    .locals 5

    iget-object v0, p0, Lg/bst;->j:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/bst;->j:Ljava/util/HashSet;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lg/bst;->j:Ljava/util/HashSet;

    invoke-static {v3}, Lg/bff;->d(Ljava/lang/Object;)V

    iget v4, v2, Lg/hbi;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lg/bst;->j:Ljava/util/HashSet;

    invoke-static {v3}, Lg/bff;->d(Ljava/lang/Object;)V

    iget v2, v2, Lg/hbi;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg/hbi;

    iget-object v0, p0, Lg/bst;->d:Lg/frk;

    invoke-virtual {v0, p1}, Lg/frk;->c([Lg/hbi;)V

    return-void
.end method
