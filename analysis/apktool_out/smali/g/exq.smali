.class public final Lg/exq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fgd;


# instance fields
.field public a:Z

.field public final b:Lg/dsg;

.field public final c:Z

.field public final d:Z

.field public final e:Landroid/content/Context;

.field public final f:Ljava/lang/String;

.field public final g:Lg/esn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lg/dsg;ZZ)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/exq;->e:Landroid/content/Context;

    iput-object p2, p0, Lg/exq;->f:Ljava/lang/String;

    iput-object p3, p0, Lg/exq;->b:Lg/dsg;

    iput-boolean p4, p0, Lg/exq;->c:Z

    iput-boolean p5, p0, Lg/exq;->d:Z

    new-instance p1, Lg/tc;

    invoke-direct {p1, p0}, Lg/tc;-><init>(Lg/exq;)V

    new-instance p2, Lg/esn;

    invoke-direct {p2, p1}, Lg/esn;-><init>(Lg/cvw;)V

    iput-object p2, p0, Lg/exq;->g:Lg/esn;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lg/exq;->g:Lg/esn;

    invoke-virtual {v0}, Lg/esn;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/exq;->h()Lg/got;

    move-result-object v0

    invoke-virtual {v0}, Lg/got;->close()V

    :cond_0
    return-void
.end method

.method public final h()Lg/got;
    .locals 1

    iget-object v0, p0, Lg/exq;->g:Lg/esn;

    invoke-virtual {v0}, Lg/esn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/got;

    return-object v0
.end method

.method public final i()Lg/crd;
    .locals 2

    invoke-virtual {p0}, Lg/exq;->h()Lg/got;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/got;->j(Z)Lg/crd;

    move-result-object v0

    return-object v0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lg/exq;->g:Lg/esn;

    invoke-virtual {v0}, Lg/esn;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/exq;->h()Lg/got;

    move-result-object v0

    const-string v1, "sQLiteOpenHelper"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Lg/exq;->a:Z

    return-void
.end method
