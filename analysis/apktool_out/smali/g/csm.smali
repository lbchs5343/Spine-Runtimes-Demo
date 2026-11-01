.class public abstract Lg/csm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekf;


# static fields
.field public static final d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final e:Lg/efx;

.field public final f:Z

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lg/csm;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lg/efx;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/csm;->e:Lg/efx;

    iput-boolean p2, p0, Lg/csm;->f:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/csm;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/p;
    .locals 3

    new-instance v0, Lg/bcq;

    iget-boolean v1, p0, Lg/csm;->f:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0c0060

    goto :goto_0

    :cond_0
    const v1, 0x7f0c005b

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/bcq;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final b(Landroidx/recyclerview/widget/p;Lg/cng;)V
    .locals 0

    check-cast p1, Lg/bcq;

    check-cast p2, Lg/auj;

    invoke-virtual {p0, p1, p2}, Lg/csm;->c(Lg/bcq;Lg/auj;)V

    return-void
.end method

.method public abstract c(Lg/bcq;Lg/auj;)V
.end method
