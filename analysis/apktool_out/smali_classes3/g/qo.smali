.class public final Lg/qo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Bundle;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public h:J

.field public final i:Ljava/util/Set;

.field public final j:Ljava/util/ArrayList;

.field public final k:Z

.field public final l:Ljava/util/Set;

.field public final m:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lg/gxk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/qo;->h:J

    iget-object v0, p1, Lg/gxk;->m:Ljava/lang/String;

    iput-object v0, p0, Lg/qo;->f:Ljava/lang/String;

    iget-object v0, p1, Lg/gxk;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lg/qo;->j:Ljava/util/ArrayList;

    iget-object v0, p1, Lg/gxk;->f:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lg/qo;->l:Ljava/util/Set;

    iget-object v0, p1, Lg/gxk;->j:Landroid/os/Bundle;

    iput-object v0, p0, Lg/qo;->c:Landroid/os/Bundle;

    iget-object v0, p1, Lg/gxk;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p1, Lg/gxk;->i:Ljava/lang/String;

    iput-object v0, p0, Lg/qo;->e:Ljava/lang/String;

    iget v0, p1, Lg/gxk;->k:I

    iput v0, p0, Lg/qo;->g:I

    iget-object v0, p1, Lg/gxk;->c:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lg/qo;->m:Ljava/util/Set;

    iget-object v0, p1, Lg/gxk;->e:Landroid/os/Bundle;

    iput-object v0, p0, Lg/qo;->a:Landroid/os/Bundle;

    iget-object v0, p1, Lg/gxk;->g:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lg/qo;->i:Ljava/util/Set;

    iget-boolean v0, p1, Lg/gxk;->b:Z

    iput-boolean v0, p0, Lg/qo;->k:Z

    iget-object v0, p1, Lg/gxk;->d:Ljava/lang/String;

    iput-object v0, p0, Lg/qo;->b:Ljava/lang/String;

    iget p1, p1, Lg/gxk;->h:I

    iput p1, p0, Lg/qo;->d:I

    return-void
.end method
