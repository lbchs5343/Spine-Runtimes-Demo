.class public final Lg/cjv;
.super Lg/os;
.source "SourceFile"


# instance fields
.field public final g:Lg/cis;

.field public h:Lg/dae;

.field public final j:Lg/bzv;

.field public final k:Lg/fcw;


# direct methods
.method public constructor <init>(Lg/cyg;)V
    .locals 3

    invoke-direct {p0, p1}, Lg/os;-><init>(Lg/cyg;)V

    new-instance p1, Lg/bzv;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lg/bzv;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/cjv;->j:Lg/bzv;

    new-instance p1, Lg/fcw;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lg/fcw;->b:Ljava/lang/Object;

    new-instance v0, Lg/rd;

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lg/rd;-><init>(Ljava/lang/Object;Lg/gan;I)V

    iput-object v0, p1, Lg/fcw;->a:Ljava/lang/Object;

    iget-object v0, v1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lg/fcw;->d:J

    iput-wide v0, p1, Lg/fcw;->e:J

    iput-object p1, p0, Lg/cjv;->k:Lg/fcw;

    new-instance p1, Lg/cis;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lg/cis;->b:Ljava/lang/Object;

    iput-object p1, p0, Lg/cjv;->g:Lg/cis;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()V
    .locals 4

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-object v0, p0, Lg/cjv;->h:Lg/dae;

    if-nez v0, :cond_0

    new-instance v0, Lg/dae;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lg/dae;-><init>(Landroid/os/Looper;IZ)V

    iput-object v0, p0, Lg/cjv;->h:Lg/dae;

    :cond_0
    return-void
.end method
