.class public final Lg/bku;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:[Lg/kj;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Class;

.field public final g:Lg/dvq;

.field public final h:Z

.field public final i:Ljava/lang/reflect/Method;

.field public final j:Z

.field public final k:Lg/eyn;

.field public final l:Lg/dpd;


# direct methods
.method public constructor <init>(Lg/xc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/xc;->s:Ljava/lang/Class;

    iput-object v0, p0, Lg/bku;->f:Ljava/lang/Class;

    iget-object v0, p1, Lg/xc;->w:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lg/bku;->i:Ljava/lang/reflect/Method;

    iget-object v0, p1, Lg/xc;->j:Lg/daw;

    iget-object v0, v0, Lg/daw;->a:Ljava/lang/Object;

    check-cast v0, Lg/eyn;

    iput-object v0, p0, Lg/bku;->k:Lg/eyn;

    iget-object v0, p1, Lg/xc;->e:Ljava/lang/String;

    iput-object v0, p0, Lg/bku;->c:Ljava/lang/String;

    iget-object v0, p1, Lg/xc;->o:Ljava/lang/String;

    iput-object v0, p0, Lg/bku;->e:Ljava/lang/String;

    iget-object v0, p1, Lg/xc;->v:Lg/dvq;

    iput-object v0, p0, Lg/bku;->g:Lg/dvq;

    iget-object v0, p1, Lg/xc;->k:Lg/dpd;

    iput-object v0, p0, Lg/bku;->l:Lg/dpd;

    iget-boolean v0, p1, Lg/xc;->p:Z

    iput-boolean v0, p0, Lg/bku;->a:Z

    iget-boolean v0, p1, Lg/xc;->u:Z

    iput-boolean v0, p0, Lg/bku;->h:Z

    iget-boolean v0, p1, Lg/xc;->z:Z

    iput-boolean v0, p0, Lg/bku;->j:Z

    iget-object v0, p1, Lg/xc;->m:[Lg/kj;

    iput-object v0, p0, Lg/bku;->b:[Lg/kj;

    iget-boolean p1, p1, Lg/xc;->x:Z

    iput-boolean p1, p0, Lg/bku;->d:Z

    return-void
.end method
