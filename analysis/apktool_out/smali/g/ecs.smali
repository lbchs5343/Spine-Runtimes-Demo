.class public abstract Lg/ecs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final i:Lg/anp;

.field public j:[Lg/oi;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lg/anp;

    invoke-direct {v0}, Lg/anp;-><init>()V

    invoke-direct {p0, v0}, Lg/ecs;-><init>(Lg/anp;)V

    return-void
.end method

.method public constructor <init>(Lg/anp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ecs;->i:Lg/anp;

    return-void
.end method


# virtual methods
.method public a(ILg/oi;)V
    .locals 3

    iget-object v0, p0, Lg/ecs;->j:[Lg/oi;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [Lg/oi;

    iput-object v0, p0, Lg/ecs;->j:[Lg/oi;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_2

    and-int v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lg/ecs;->j:[Lg/oi;

    invoke-static {v0}, Lg/cux;->am(I)I

    move-result v2

    aput-object p2, v1, v2

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lg/oi;)V
    .locals 0

    return-void
.end method

.method public d(Lg/oi;)V
    .locals 0

    return-void
.end method

.method public abstract e(Lg/oi;)V
.end method

.method public f(Lg/oi;)V
    .locals 0

    return-void
.end method

.method public abstract g()Lg/anp;
.end method

.method public abstract h(Lg/oi;)V
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lg/ecs;->j:[Lg/oi;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p0, Lg/ecs;->i:Lg/anp;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v4, v3, Lg/anp;->b:Lg/dif;

    invoke-virtual {v4, v0}, Lg/dif;->i(I)Lg/oi;

    move-result-object v0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v3, Lg/anp;->b:Lg/dif;

    invoke-virtual {v1, v2}, Lg/dif;->i(I)Lg/oi;

    move-result-object v1

    :cond_1
    invoke-static {v1, v0}, Lg/oi;->f(Lg/oi;Lg/oi;)Lg/oi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/ecs;->h(Lg/oi;)V

    iget-object v0, p0, Lg/ecs;->j:[Lg/oi;

    const/16 v1, 0x10

    invoke-static {v1}, Lg/cux;->am(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lg/ecs;->f(Lg/oi;)V

    :cond_2
    iget-object v0, p0, Lg/ecs;->j:[Lg/oi;

    const/16 v1, 0x20

    invoke-static {v1}, Lg/cux;->am(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lg/ecs;->d(Lg/oi;)V

    :cond_3
    iget-object v0, p0, Lg/ecs;->j:[Lg/oi;

    const/16 v1, 0x40

    invoke-static {v1}, Lg/cux;->am(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lg/ecs;->c(Lg/oi;)V

    :cond_4
    return-void
.end method
