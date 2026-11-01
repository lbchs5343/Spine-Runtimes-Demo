.class public final Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/xd;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mHost:Lg/fay;

    instance-of v2, v1, Lg/cdh;

    if-eqz v2, :cond_0

    check-cast v1, Lg/cdh;

    invoke-interface {v1}, Lg/cdh;->getActivityResultRegistry()Landroidx/activity/result/a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/a;

    move-result-object v0

    return-object v0
.end method
