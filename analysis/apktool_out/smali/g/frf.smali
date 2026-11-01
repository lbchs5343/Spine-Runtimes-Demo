.class public final Lg/frf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Z

.field public final c:I

.field public d:Z

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lg/frf;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lg/frf;->e:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lg/frf;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lg/frf;->a:I

    return-void
.end method
