.class public final synthetic Landroidx/fragment/app/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fet;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/u;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/u;

    return-void
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->markFragmentsCreated()V

    iget-object v0, v0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lg/ajs;

    sget-object v1, Lg/dtn;->ON_STOP:Lg/dtn;

    invoke-virtual {v0, v1}, Lg/ajs;->k(Lg/dtn;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
