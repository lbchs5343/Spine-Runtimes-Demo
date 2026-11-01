.class public final Lg/cyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cem;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cyp;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/fragment/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lg/cyp;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
