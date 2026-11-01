.class public final Lg/bem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/gjn;

.field public b:Lg/bmr;

.field public c:Lg/afo;

.field public d:Lg/bmr;

.field public e:Lg/gjn;

.field public f:Lg/afo;

.field public g:Lg/gjn;

.field public h:Lg/bmr;

.field public i:Lg/afo;

.field public j:Lg/bmr;

.field public k:Lg/afo;

.field public l:Lg/gjn;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/eeu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bem;->f:Lg/afo;

    new-instance v0, Lg/eeu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bem;->i:Lg/afo;

    new-instance v0, Lg/eeu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bem;->k:Lg/afo;

    new-instance v0, Lg/eeu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bem;->c:Lg/afo;

    new-instance v0, Lg/ett;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/ett;-><init>(F)V

    iput-object v0, p0, Lg/bem;->e:Lg/gjn;

    new-instance v0, Lg/ett;

    invoke-direct {v0, v1}, Lg/ett;-><init>(F)V

    iput-object v0, p0, Lg/bem;->g:Lg/gjn;

    new-instance v0, Lg/ett;

    invoke-direct {v0, v1}, Lg/ett;-><init>(F)V

    iput-object v0, p0, Lg/bem;->l:Lg/gjn;

    new-instance v0, Lg/ett;

    invoke-direct {v0, v1}, Lg/ett;-><init>(F)V

    iput-object v0, p0, Lg/bem;->a:Lg/gjn;

    new-instance v0, Lg/bmr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    iput-object v0, p0, Lg/bem;->h:Lg/bmr;

    new-instance v0, Lg/bmr;

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    iput-object v0, p0, Lg/bem;->j:Lg/bmr;

    new-instance v0, Lg/bmr;

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    iput-object v0, p0, Lg/bem;->b:Lg/bmr;

    new-instance v0, Lg/bmr;

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    iput-object v0, p0, Lg/bem;->d:Lg/bmr;

    return-void
.end method

.method public static m(Lg/afo;)V
    .locals 1

    instance-of v0, p0, Lg/eeu;

    if-eqz v0, :cond_0

    check-cast p0, Lg/eeu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    instance-of v0, p0, Lg/gki;

    if-eqz v0, :cond_1

    check-cast p0, Lg/gki;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method


# virtual methods
.method public final n()Lg/cjg;
    .locals 2

    new-instance v0, Lg/cjg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lg/bem;->f:Lg/afo;

    iput-object v1, v0, Lg/cjg;->f:Lg/afo;

    iget-object v1, p0, Lg/bem;->i:Lg/afo;

    iput-object v1, v0, Lg/cjg;->i:Lg/afo;

    iget-object v1, p0, Lg/bem;->k:Lg/afo;

    iput-object v1, v0, Lg/cjg;->k:Lg/afo;

    iget-object v1, p0, Lg/bem;->c:Lg/afo;

    iput-object v1, v0, Lg/cjg;->c:Lg/afo;

    iget-object v1, p0, Lg/bem;->e:Lg/gjn;

    iput-object v1, v0, Lg/cjg;->e:Lg/gjn;

    iget-object v1, p0, Lg/bem;->g:Lg/gjn;

    iput-object v1, v0, Lg/cjg;->g:Lg/gjn;

    iget-object v1, p0, Lg/bem;->l:Lg/gjn;

    iput-object v1, v0, Lg/cjg;->l:Lg/gjn;

    iget-object v1, p0, Lg/bem;->a:Lg/gjn;

    iput-object v1, v0, Lg/cjg;->a:Lg/gjn;

    iget-object v1, p0, Lg/bem;->h:Lg/bmr;

    iput-object v1, v0, Lg/cjg;->h:Lg/bmr;

    iget-object v1, p0, Lg/bem;->j:Lg/bmr;

    iput-object v1, v0, Lg/cjg;->j:Lg/bmr;

    iget-object v1, p0, Lg/bem;->b:Lg/bmr;

    iput-object v1, v0, Lg/cjg;->b:Lg/bmr;

    iget-object v1, p0, Lg/bem;->d:Lg/bmr;

    iput-object v1, v0, Lg/cjg;->d:Lg/bmr;

    return-object v0
.end method
