.class public final Lg/gpq;
.super Lg/dme;
.source "SourceFile"


# instance fields
.field public d:Lg/dme;


# direct methods
.method public constructor <init>(Lg/dme;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gpq;->d:Lg/dme;

    return-void
.end method


# virtual methods
.method public final _au()V
    .locals 1

    iget-object v0, p0, Lg/gpq;->d:Lg/dme;

    invoke-virtual {v0}, Lg/dme;->_au()V

    return-void
.end method

.method public final _av(J)Lg/dme;
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "unit"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/gpq;->d:Lg/dme;

    invoke-virtual {v0, p1, p2}, Lg/dme;->_av(J)Lg/dme;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/gpq;->d:Lg/dme;

    invoke-virtual {v0, p1, p2}, Lg/dme;->a(J)Lg/dme;

    move-result-object p1

    return-object p1
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lg/gpq;->d:Lg/dme;

    invoke-virtual {v0}, Lg/dme;->r()Z

    move-result v0

    return v0
.end method

.method public final s()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/gpq;->d:Lg/dme;

    invoke-virtual {v0}, Lg/dme;->s()Lg/dme;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/gpq;->d:Lg/dme;

    invoke-virtual {v0}, Lg/dme;->t()Lg/dme;

    move-result-object v0

    return-object v0
.end method

.method public final u()J
    .locals 2

    iget-object v0, p0, Lg/gpq;->d:Lg/dme;

    invoke-virtual {v0}, Lg/dme;->u()J

    move-result-wide v0

    return-wide v0
.end method
