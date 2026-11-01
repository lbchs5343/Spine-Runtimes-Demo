.class public final Lg/dwn;
.super Lg/bxx;
.source "SourceFile"

# interfaces
.implements Lg/ayv;


# static fields
.field public static final l:Lg/akj;


# instance fields
.field public final m:Lg/gna;

.field public final n:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/bmr;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lg/bmr;-><init>(I)V

    new-instance v1, Lg/gzt;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lg/gzt;-><init>(I)V

    new-instance v2, Lg/akj;

    const-string v3, "AppSet.API"

    invoke-direct {v2, v3, v1, v0}, Lg/akj;-><init>(Ljava/lang/String;Lg/egh;Lg/bmr;)V

    sput-object v2, Lg/dwn;->l:Lg/akj;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/gna;)V
    .locals 3

    sget-object v0, Lg/ama;->a:Lg/cud;

    sget-object v1, Lg/cqe;->a:Lg/cqe;

    sget-object v2, Lg/dwn;->l:Lg/akj;

    invoke-direct {p0, p1, v2, v0, v1}, Lg/bxx;-><init>(Landroid/content/Context;Lg/akj;Lg/ama;Lg/cqe;)V

    iput-object p1, p0, Lg/dwn;->n:Landroid/content/Context;

    iput-object p2, p0, Lg/dwn;->m:Lg/gna;

    return-void
.end method


# virtual methods
.method public final a()Lg/chw;
    .locals 6

    iget-object v0, p0, Lg/dwn;->n:Landroid/content/Context;

    const v1, 0xcaf1200

    iget-object v2, p0, Lg/dwn;->m:Lg/gna;

    invoke-virtual {v2, v0, v1}, Lg/gna;->l(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lg/cpq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/cpq;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/cpq;->e:Z

    const/4 v2, 0x0

    iput v2, v0, Lg/cpq;->d:I

    new-array v1, v1, [Lg/cqg;

    sget-object v3, Lg/vp;->a:Lg/cqg;

    aput-object v3, v1, v2

    iput-object v1, v0, Lg/cpq;->b:Ljava/lang/Object;

    new-instance v1, Lg/gpu;

    invoke-direct {v1, p0}, Lg/gpu;-><init>(Lg/dwn;)V

    iput-object v1, v0, Lg/cpq;->a:Ljava/lang/Object;

    iput-boolean v2, v0, Lg/cpq;->e:Z

    const/16 v1, 0x6bd1

    iput v1, v0, Lg/cpq;->d:I

    new-instance v1, Lg/cpq;

    iget-object v3, v0, Lg/cpq;->b:Ljava/lang/Object;

    check-cast v3, [Lg/cqg;

    iget-boolean v4, v0, Lg/cpq;->e:Z

    iget v5, v0, Lg/cpq;->d:I

    invoke-direct {v1, v0, v3, v4, v5}, Lg/cpq;-><init>(Lg/cpq;[Lg/cqg;ZI)V

    invoke-virtual {p0, v2, v1}, Lg/bxx;->k(ILg/cpq;)Lg/chw;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lg/dmw;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v0, v1}, Lg/dmw;-><init>(Lcom/google/android/gms/common/api/Status;)V

    new-instance v1, Lg/chw;

    invoke-direct {v1}, Lg/chw;-><init>()V

    invoke-virtual {v1, v0}, Lg/chw;->l(Ljava/lang/Exception;)V

    return-object v1
.end method
