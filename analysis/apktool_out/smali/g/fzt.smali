.class public final Lg/fzt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/fqv;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lg/fqv;

.field public g:Landroidx/fragment/app/Fragment;

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(ILandroidx/fragment/app/Fragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/fzt;->d:I

    iput-object p2, p0, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/fzt;->h:Z

    sget-object p1, Lg/fqv;->RESUMED:Lg/fqv;

    iput-object p1, p0, Lg/fzt;->a:Lg/fqv;

    iput-object p1, p0, Lg/fzt;->f:Lg/fqv;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg/fzt;->d:I

    iput-object p1, p0, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/fzt;->h:Z

    sget-object p1, Lg/fqv;->RESUMED:Lg/fqv;

    iput-object p1, p0, Lg/fzt;->a:Lg/fqv;

    iput-object p1, p0, Lg/fzt;->f:Lg/fqv;

    return-void
.end method
