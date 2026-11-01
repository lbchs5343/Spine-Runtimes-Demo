.class public abstract Lg/doq;
.super Lg/efx;
.source "SourceFile"

# interfaces
.implements Lg/eha;


# static fields
.field public static final ac:Ljava/text/SimpleDateFormat;


# instance fields
.field public ad:Lg/eas;

.field public ae:Lg/auj;

.field public af:Lg/cgg;

.field public ag:Ljava/lang/String;

.field public ah:Lg/eqi;

.field public ai:Lg/sr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH-mm-ss SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/doq;->ac:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public _a()V
    .locals 2

    invoke-static {}, Lg/dyd;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/doq;->u()V

    return-void

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xca

    invoke-static {p0, v0, v1}, Lg/fyt;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public aa(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lg/doq;->x()V

    const v0, 0x7f09030f

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lg/doq;->ag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/doq;->ae:Lg/auj;

    iget-object v1, v1, Lg/auj;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/doq;->ae:Lg/auj;

    iget-object v2, v2, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/doq;->ag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lg/doq;->r()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const v1, 0x7f1203f6

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lg/anh;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3, p1}, Lg/anh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, -0x2

    const v3, 0x7f1203a1

    invoke-static {v0, v1, p1, v3, v2}, Lg/afo;->ar(Landroid/view/View;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;)Lg/sd;

    move-result-object p1

    iput-object p1, p0, Lg/efx;->ar:Lg/sd;

    return-void
.end method

.method public abstract ab()Ljava/lang/String;
.end method

.method public h(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lg/efx;->h(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lg/cro;->aj(Landroid/content/Intent;)Lg/cgg;

    move-result-object p1

    iput-object p1, p0, Lg/doq;->af:Lg/cgg;

    new-instance p1, Lg/eqi;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lg/eqi;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object p1, p0, Lg/doq;->ah:Lg/eqi;

    const-class p1, Lcom/google/android/accessibility/selecttospeak/SelectToSpeakService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/efx;->bg:Ljava/lang/String;

    const-class p1, Lb/a/d;

    iput-object p1, p0, Lg/efx;->bc:Ljava/lang/Class;

    new-instance p1, Lg/aoi;

    const/16 v0, 0xd

    invoke-direct {p1, v0, p0}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/efx;->ap:Lg/aoi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/efx;->am:Z

    return-void
.end method

.method public final initView()V
    .locals 4

    invoke-super {p0}, Lg/efx;->initView()V

    instance-of v0, p0, Lb/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lg/sr;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lg/sr;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/doq;->ai:Lg/sr;

    invoke-static {p0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/doq;->ai:Lg/sr;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "c.t.d.p.sf"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lg/fzn;->v(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    instance-of v0, p0, Lb/b/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/doq;->ai:Lg/sr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p0, Lg/doq;->ai:Lg/sr;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/doq;->ai:Lg/sr;

    :cond_0
    invoke-super {p0}, Lg/cms;->onDestroy()V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lg/dms;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0xca

    if-ne p1, p2, :cond_1

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg/doq;->u()V

    return-void

    :cond_0
    iget-object p1, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {p1}, Lg/fyt;->f(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public s()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/efx;->aw:Z

    iget-object v0, p0, Lg/efx;->ar:Lg/sd;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lg/cle;->ak(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/efx;->ar:Lg/sd;

    :cond_0
    iget-object v0, p0, Lg/doq;->ad:Lg/eas;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Lg/csm;->g:Z

    :cond_1
    iget-object v0, p0, Lg/efx;->as:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lg/efx;->az:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/efx;->ay:Landroid/widget/TextView;

    const v3, 0x7f1203f7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lg/efx;->bj:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public abstract t()V
.end method

.method public abstract u()V
.end method

.method public w(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public x()V
    .locals 3

    iget-object v0, p0, Lg/doq;->ad:Lg/eas;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lg/csm;->g:Z

    :cond_0
    iget-object v0, p0, Lg/efx;->as:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/efx;->az:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lg/efx;->bd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lg/efx;->bj:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/efx;->aw:Z

    return-void
.end method

.method public z(Lg/auj;)V
    .locals 0

    return-void
.end method
