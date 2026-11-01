.class public final Lg/cjp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/flu;


# instance fields
.field public final a:I

.field public final synthetic b:Landroidx/fragment/app/v;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/v;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cjp;->b:Landroidx/fragment/app/v;

    iput p2, p0, Lg/cjp;->a:I

    return-void
.end method


# virtual methods
.method public final f(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    iget-object v0, p0, Lg/cjp;->b:Landroidx/fragment/app/v;

    iget-object v1, v0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/Fragment;

    iget v2, p0, Lg/cjp;->a:I

    if-eqz v1, :cond_0

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/v;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/v;->bk(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Landroidx/fragment/app/v;->ay(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    return p1
.end method
