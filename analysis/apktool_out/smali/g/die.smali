.class public final Lg/die;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/DialogInterface$OnClickListener;

.field public b:Ljava/lang/CharSequence;

.field public c:Lg/dgg;

.field public d:Lg/gnt;

.field public e:Landroid/content/DialogInterface$OnDismissListener;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/DialogInterface$OnClickListener;

.field public h:Landroid/view/View;

.field public final i:Landroid/view/ContextThemeWrapper;

.field public j:[Z

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/CharSequence;

.field public n:I

.field public o:[Ljava/lang/CharSequence;

.field public p:Z

.field public q:Ljava/lang/CharSequence;

.field public final r:Landroid/view/LayoutInflater;

.field public s:Landroid/content/DialogInterface$OnClickListener;

.field public t:Landroid/widget/ListAdapter;

.field public u:Landroid/view/View;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:I

.field public x:Ljava/lang/CharSequence;

.field public y:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/die;->w:I

    iput-object p1, p0, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/die;->p:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lg/die;->r:Landroid/view/LayoutInflater;

    return-void
.end method
