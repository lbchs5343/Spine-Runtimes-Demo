.class public final Lg/cdn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/hcr;
.implements Lg/gff;
.implements Lg/gyj;


# instance fields
.field public a:Lg/ajs;

.field public b:Lg/dyr;

.field public final c:Landroidx/fragment/app/Fragment;

.field public final d:Lg/wg;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lg/wg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cdn;->a:Lg/ajs;

    iput-object v0, p0, Lg/cdn;->b:Lg/dyr;

    iput-object p1, p0, Lg/cdn;->c:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lg/cdn;->d:Lg/wg;

    return-void
.end method


# virtual methods
.method public final e(Lg/dtn;)V
    .locals 1

    iget-object v0, p0, Lg/cdn;->a:Lg/ajs;

    invoke-virtual {v0, p1}, Lg/ajs;->k(Lg/dtn;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lg/cdn;->a:Lg/ajs;

    if-nez v0, :cond_0

    new-instance v0, Lg/ajs;

    invoke-direct {v0, p0}, Lg/ajs;-><init>(Lg/iz;)V

    iput-object v0, p0, Lg/cdn;->a:Lg/ajs;

    new-instance v0, Lg/dyr;

    invoke-direct {v0, p0}, Lg/dyr;-><init>(Lg/gff;)V

    iput-object v0, p0, Lg/cdn;->b:Lg/dyr;

    invoke-virtual {v0}, Lg/dyr;->d()V

    invoke-static {p0}, Lg/afo;->aj(Lg/gff;)V

    :cond_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Lg/bin;
    .locals 5

    iget-object v0, p0, Lg/cdn;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Lg/ewp;

    invoke-direct {v2}, Lg/ewp;-><init>()V

    iget-object v3, v2, Lg/bin;->b:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    sget-object v4, Lg/bfy;->g:Lg/bfy;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Lg/afo;->y:Lg/cuf;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/afo;->z:Lg/cfg;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lg/afo;->ab:Lg/bli;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public final getLifecycle()Lg/euu;
    .locals 1

    invoke-virtual {p0}, Lg/cdn;->f()V

    iget-object v0, p0, Lg/cdn;->a:Lg/ajs;

    return-object v0
.end method

.method public final getSavedStateRegistry()Lg/hbu;
    .locals 1

    invoke-virtual {p0}, Lg/cdn;->f()V

    iget-object v0, p0, Lg/cdn;->b:Lg/dyr;

    iget-object v0, v0, Lg/dyr;->b:Lg/hbu;

    return-object v0
.end method

.method public final getViewModelStore()Lg/wg;
    .locals 1

    invoke-virtual {p0}, Lg/cdn;->f()V

    iget-object v0, p0, Lg/cdn;->d:Lg/wg;

    return-object v0
.end method
