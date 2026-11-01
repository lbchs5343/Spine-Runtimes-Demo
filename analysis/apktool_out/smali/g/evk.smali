.class public final Lg/evk;
.super Lg/apm;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/bez;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Lg/xd;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:Lg/ehj;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lg/xd;Ljava/util/concurrent/atomic/AtomicReference;Lg/ehj;Lg/bez;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/evk;->c:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lg/evk;->d:Lg/xd;

    iput-object p3, p0, Lg/evk;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lg/evk;->f:Lg/ehj;

    iput-object p5, p0, Lg/evk;->a:Lg/bez;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-object v0, p0, Lg/evk;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lg/evk;->d:Lg/xd;

    invoke-interface {v2}, Lg/xd;->apply()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/result/a;

    iget-object v3, p0, Lg/evk;->f:Lg/ehj;

    iget-object v4, p0, Lg/evk;->a:Lg/bez;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/activity/result/a;->h(Ljava/lang/String;Lg/iz;Lg/ehj;Lg/bez;)Lg/brp;

    move-result-object v0

    iget-object v1, p0, Lg/evk;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
