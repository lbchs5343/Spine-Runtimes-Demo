.class public final Lg/ctt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Z

.field public h:I

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcn/trinea/developertools/MyApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lg/ctt;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lg/ctt;->i:Ljava/lang/Object;

    new-instance v0, Lg/bzq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/bzq;-><init>(Lg/ctt;I)V

    iput-object v0, p0, Lg/ctt;->a:Ljava/lang/Object;

    new-instance v0, Lg/bzq;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/bzq;-><init>(Lg/ctt;I)V

    iput-object v0, p0, Lg/ctt;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lg/ctt;->b:Ljava/lang/Object;

    invoke-static {p1}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object p1

    iput-object p1, p0, Lg/ctt;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lg/bnu;[Lg/bnu;Lg/ecz;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/ctt;->d:Z

    iput-object p2, p0, Lg/ctt;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/ctt;->c:Ljava/lang/Object;

    iput-object p4, p0, Lg/ctt;->e:Ljava/lang/Object;

    iput-object p5, p0, Lg/ctt;->i:Ljava/lang/Object;

    if-eqz p7, :cond_1

    invoke-interface {p7}, Lg/ecz;->typeName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_0

    iput-object p3, p0, Lg/ctt;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/ctt;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/ctt;->f:Ljava/lang/Object;

    :goto_0
    if-eqz p7, :cond_3

    invoke-interface {p7}, Lg/ecz;->parseFeatures()[Lg/cbj;

    move-result-object p1

    array-length p3, p1

    const/4 p4, 0x0

    const/4 p7, 0x0

    :goto_1
    if-ge p4, p3, :cond_4

    aget-object v1, p1, p4

    sget-object v2, Lg/cbj;->SupportArrayToBean:Lg/cbj;

    if-ne v1, v2, :cond_2

    const/4 p7, 0x1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    const/4 p7, 0x0

    :cond_4
    iput-boolean p7, p0, Lg/ctt;->g:Z

    invoke-static {p5, p6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p5, p6

    :goto_2
    iput-object p5, p0, Lg/ctt;->a:Ljava/lang/Object;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    :cond_6
    iput v0, p0, Lg/ctt;->h:I

    return-void
.end method

.method public static j(Ljava/util/ArrayList;Lg/bnu;)V
    .locals 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bnu;

    iget-object v3, v2, Lg/bnu;->i:Ljava/lang/String;

    iget-object v4, p1, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v2, v2, Lg/bnu;->j:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lg/bnu;->j:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public k()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ctt;->g:Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lg/ctt;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bes;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lg/bes;->b:J

    iget-object v3, v2, Lg/bes;->c:Lg/gpv;

    const/4 v4, 0x0

    iput-object v4, v2, Lg/bes;->f:Ljava/lang/String;

    iput-object v4, v2, Lg/bes;->a:Ljava/lang/String;

    invoke-interface {v3}, Lg/gpv;->ac()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Lg/bes;->d:Z

    if-nez v4, :cond_0

    iput-boolean v0, v2, Lg/bes;->d:Z

    invoke-interface {v3}, Lg/gpv;->ae()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lg/ctt;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lg/bus;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/ctt;->c:Ljava/lang/Object;

    check-cast v0, Lg/ark;

    invoke-virtual {v0}, Lg/ark;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m(J)V
    .locals 3

    iget-object v0, p0, Lg/ctt;->e:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lg/ctt;->a:Ljava/lang/Object;

    check-cast v1, Lg/bzq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lg/ctt;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
