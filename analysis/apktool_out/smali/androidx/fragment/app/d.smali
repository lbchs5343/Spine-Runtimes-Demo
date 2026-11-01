.class public final synthetic Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/buv;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/u;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/u;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/activity/ComponentActivity;)V
    .locals 2

    iget-object p1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/u;

    iget-object p1, p1, Landroidx/fragment/app/u;->mFragments:Lg/eyr;

    iget-object p1, p1, Lg/eyr;->a:Landroidx/fragment/app/p;

    iget-object v0, p1, Lg/fay;->f:Lg/dmi;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Landroidx/fragment/app/v;->by(Lg/fay;Lg/egk;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
