.class public abstract Lg/cwg;
.super Lcom/google/android/gms/internal/ads/zzbtf;
.source "SourceFile"


# static fields
.field public static final b:I


# instance fields
.field public c:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public d:Z

.field public e:Z

.field public f:Landroid/widget/FrameLayout;

.field public g:I

.field public h:Lg/aku;

.field public i:Z

.field public j:Lcom/google/android/gms/internal/ads/zzcfk;

.field public k:Z

.field public m:Lg/ats;

.field public n:Landroid/widget/Toolbar;

.field public o:Z

.field public p:Lg/fkn;

.field public q:Lg/czm;

.field public r:Z

.field public final s:Landroid/app/Activity;

.field public t:Z

.field public u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field public final v:Lg/get;

.field public w:Z

.field public final x:Ljava/lang/Object;

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lg/cwg;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtf;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/cwg;->y:Z

    iput-boolean v0, p0, Lg/cwg;->t:Z

    iput-boolean v0, p0, Lg/cwg;->i:Z

    iput-boolean v0, p0, Lg/cwg;->k:Z

    const/4 v1, 0x1

    iput v1, p0, Lg/cwg;->g:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lg/cwg;->x:Ljava/lang/Object;

    new-instance v2, Lg/get;

    const/16 v3, 0x11

    invoke-direct {v2, v3, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lg/cwg;->v:Lg/get;

    iput-boolean v0, p0, Lg/cwg;->r:Z

    iput-boolean v0, p0, Lg/cwg;->o:Z

    iput-boolean v1, p0, Lg/cwg;->e:Z

    iput-object p1, p0, Lg/cwg;->s:Landroid/app/Activity;

    return-void
.end method

.method public static final z(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeew;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfd:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeew;->zzb()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeew;->zza()Lcom/google/android/gms/internal/ads/zzfmw;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzeer;->zzj(Lcom/google/android/gms/internal/ads/zzfmw;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final aa(Landroid/content/res/Configuration;)V
    .locals 5

    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzo:Lg/fbp;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lg/fbp;->zzb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->k:Lg/lp;

    iget-object v4, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lg/feo;->i(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    iget-boolean v3, p0, Lg/cwg;->i:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzaN:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzaM:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v0, Lg/edt;->a:Lg/edt;

    iget-object v0, v0, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_3
    iget-object p1, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzo:Lg/fbp;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Lg/fbp;->zzg:Z

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzbl:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_5

    const/16 v0, 0x1706

    goto :goto_3

    :cond_5
    const/16 v0, 0x1504

    goto :goto_3

    :cond_6
    const/16 v0, 0x100

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_7
    const/16 v0, 0x800

    const/16 v3, 0x400

    if-eqz v1, :cond_9

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public final ab(I)V
    .locals 5

    iget-object v0, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzfR:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzfS:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzfT:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzfU:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    const-string v1, "AdOverlay.setRequestedOrientation"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbzz;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final ac(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfe:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzP()Lcom/google/android/gms/internal/ads/zzeeu;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeeu;->zza(Landroid/view/View;)V

    return-void

    :cond_2
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfd:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzQ()Lcom/google/android/gms/internal/ads/zzeew;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeew;->zzb()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeew;->zza()Lcom/google/android/gms/internal/ads/zzfmw;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(Lcom/google/android/gms/internal/ads/zzfmw;Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final ad(ZZ)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzbf:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzo:Lg/fbp;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lg/fbp;->zzh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzbg:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v5, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzo:Lg/fbp;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lg/fbp;->zzi:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbsk;

    iget-object v5, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v6, "useCustomClose"

    invoke-direct {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzbsk;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;Ljava/lang/String;)V

    const-string v5, "Custom close has been disabled for interstitial ads in this ad slot."

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lg/cwg;->q:Lg/czm;

    if-eqz p1, :cond_6

    if-nez v4, :cond_4

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    iget-object p1, p1, Lg/czm;->a:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcn;->zzbj:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v0, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public final ae(Z)V
    .locals 32

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lg/cwg;->w:Z

    const/4 v2, 0x1

    iget-object v3, v1, Lg/cwg;->s:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-virtual {v3, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v4, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzchc;->zzS()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    iput-boolean v6, v1, Lg/cwg;->k:Z

    if-eqz v11, :cond_6

    iget-object v4, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzj:I

    const/4 v7, 0x6

    if-ne v4, v7, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v1, Lg/cwg;->k:Z

    goto :goto_4

    :cond_4
    const/4 v7, 0x7

    if-ne v4, v7, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v1, Lg/cwg;->k:Z

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Delay onShow to next orientation change: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lg/agd;->c(Ljava/lang/String;)V

    iget-object v4, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzj:I

    invoke-virtual {v1, v4}, Lg/cwg;->ab(I)V

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lg/agd;->c(Ljava/lang/String;)V

    iget-boolean v0, v1, Lg/cwg;->i:Z

    if-nez v0, :cond_7

    iget-object v0, v1, Lg/cwg;->m:Lg/ats;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    :cond_7
    iget-object v0, v1, Lg/cwg;->m:Lg/ats;

    sget v4, Lg/cwg;->b:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_5
    iget-object v0, v1, Lg/cwg;->m:Lg/ats;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v2, v1, Lg/cwg;->w:Z

    if-eqz p1, :cond_e

    :try_start_0
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->h:Lcom/google/android/gms/internal/ads/zzcfx;

    iget-object v7, v1, Lg/cwg;->s:Landroid/app/Activity;

    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v0

    move-object v8, v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_8
    move-object v8, v5

    :goto_6
    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzU()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_7

    :cond_9
    move-object v9, v5

    :goto_7
    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzm:Lg/akx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzj()Lg/gfo;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_8

    :cond_a
    move-object/from16 v17, v5

    :goto_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbl;->zza()Lcom/google/android/gms/internal/ads/zzbbl;

    move-result-object v18

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v7 .. v22}, Lcom/google/android/gms/internal/ads/zzcfx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzche;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzavc;Lcom/google/android/gms/internal/ads/zzbdu;Lg/akx;Lcom/google/android/gms/internal/ads/zzbdc;Lg/fjn;Lg/gfo;Lcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;Lcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzffs;)Lcom/google/android/gms/internal/ads/zzcfk;

    move-result-object v0

    iput-object v0, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v12

    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzp:Lcom/google/android/gms/internal/ads/zzbih;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zze:Lcom/google/android/gms/internal/ads/zzbij;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzi:Lg/gst;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzchc;->zzd()Lg/cui;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_9

    :cond_b
    move-object/from16 v20, v5

    :goto_9
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    invoke-interface/range {v12 .. v31}, Lcom/google/android/gms/internal/ads/zzchc;->zzU(Lg/evo;Lcom/google/android/gms/internal/ads/zzbih;Lg/fim;Lcom/google/android/gms/internal/ads/zzbij;Lg/gst;ZLcom/google/android/gms/internal/ads/zzbju;Lg/cui;Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzbyh;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzflr;Lcom/google/android/gms/internal/ads/zzdsm;Lcom/google/android/gms/internal/ads/zzbkl;Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzbkk;Lcom/google/android/gms/internal/ads/zzbke;Lcom/google/android/gms/internal/ads/zzbjs;Lcom/google/android/gms/internal/ads/zzcnb;)V

    iget-object v0, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v0

    new-instance v4, Lg/eap;

    const/4 v7, 0x0

    invoke-direct {v4, v7, v1}, Lg/eap;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzchc;->zzB(Lcom/google/android/gms/internal/ads/zzcha;)V

    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzl:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v0, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzcfk;->loadUrl(Ljava/lang/String;)V

    goto :goto_a

    :cond_c
    iget-object v14, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzh:Ljava/lang/String;

    if-eqz v14, :cond_d

    iget-object v12, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzf:Ljava/lang/String;

    const-string v16, "UTF-8"

    const/16 v17, 0x0

    const-string v15, "text/html"

    invoke-interface/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzcfk;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_f

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaw(Lg/cwg;)V

    goto :goto_c

    :cond_d
    new-instance v0, Lg/bij;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_b
    const-string v2, "Error obtaining webview."

    invoke-static {v2, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lg/bij;

    const-string v3, "Could not obtain webview for the overlay."

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_e
    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object v0, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzan(Landroid/content/Context;)V

    :cond_f
    :goto_c
    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzw:Z

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v4, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfk;->zzG()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_10
    iget-object v0, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzai(Lg/cwg;)V

    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzQ()Lcom/google/android/gms/internal/ads/zzeew;

    move-result-object v0

    iget-object v4, v1, Lg/cwg;->m:Lg/ats;

    invoke-static {v4, v0}, Lg/cwg;->z(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeew;)V

    :cond_11
    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_15

    iget-object v0, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_12

    instance-of v7, v0, Landroid/view/ViewGroup;

    if-eqz v7, :cond_12

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v7, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12
    iget-boolean v0, v1, Lg/cwg;->i:Z

    if-eqz v0, :cond_13

    iget-object v0, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzam()V

    :cond_13
    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzw:Z

    const/4 v7, -0x1

    if-eqz v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v0, v8, :cond_14

    new-instance v0, Landroid/widget/Toolbar;

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lg/cwg;->n:Landroid/widget/Toolbar;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setId(I)V

    iget-object v0, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setId(I)V

    iget-object v0, v1, Lg/cwg;->n:Landroid/widget/Toolbar;

    const v8, -0xbbbbbc

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v1, Lg/cwg;->n:Landroid/widget/Toolbar;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :try_start_1
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zze()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f080086

    invoke-virtual {v0, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, v1, Lg/cwg;->n:Landroid/widget/Toolbar;

    invoke-virtual {v5, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    invoke-static {}, Lg/agd;->h()Z

    :goto_d
    iget-object v0, v1, Lg/cwg;->n:Landroid/widget/Toolbar;

    iget-object v5, v1, Lg/cwg;->v:Lg/get;

    invoke-virtual {v0, v5}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lg/cwg;->n:Landroid/widget/Toolbar;

    invoke-static {v0}, Lg/fid;->b(Landroid/widget/Toolbar;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, v1, Lg/cwg;->m:Lg/ats;

    iget-object v8, v1, Lg/cwg;->n:Landroid/widget/Toolbar;

    invoke-virtual {v6, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, v1, Lg/cwg;->n:Landroid/widget/Toolbar;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, v1, Lg/cwg;->m:Lg/ats;

    iget-object v6, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lg/cwg;->n:Landroid/widget/Toolbar;

    invoke-virtual {v1, v0}, Lg/cwg;->ac(Landroid/view/View;)V

    goto :goto_e

    :cond_14
    iget-object v0, v1, Lg/cwg;->m:Lg/ats;

    iget-object v5, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_15
    :goto_e
    if-nez p1, :cond_16

    iget-boolean v0, v1, Lg/cwg;->k:Z

    if-nez v0, :cond_16

    iget-object v0, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaa()V

    :cond_16
    iget-object v0, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    if-eq v0, v4, :cond_17

    invoke-virtual {v1, v11}, Lg/cwg;->af(Z)V

    iget-object v0, v1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaB()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1, v11, v2}, Lg/cwg;->ad(ZZ)V

    return-void

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeec;->zze()Lcom/google/android/gms/internal/ads/zzeeb;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzeeb;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzeeb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeeb;->zzb(Lg/cwg;)Lcom/google/android/gms/internal/ads/zzeeb;

    iget-object v2, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeeb;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeeb;

    iget-object v2, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeeb;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeeb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeb;->zze()Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object v0

    :try_start_2
    iget-object v2, v1, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v2, :cond_19

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzv:Lcom/google/android/gms/internal/ads/zzbsz;

    if-eqz v2, :cond_19

    new-instance v3, Lg/bpp;

    invoke-direct {v3, v0}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbsz;->zzg(Lg/bjq;)V

    :cond_18
    return-void

    :cond_19
    new-instance v0, Lg/bij;

    const-string v2, "noioou"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lg/bij; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    :goto_f
    new-instance v2, Lg/bij;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1a
    new-instance v0, Lg/bij;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final af(Z)V
    .locals 6

    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzeU:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v2, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzbh:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v4, Lg/bwg;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v2, v4, Lg/bwg;->b:I

    iput v2, v4, Lg/bwg;->c:I

    iput v2, v4, Lg/bwg;->d:I

    const/16 v5, 0x32

    iput v5, v4, Lg/bwg;->a:I

    if-eq v3, v1, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    iput v5, v4, Lg/bwg;->b:I

    if-eq v3, v1, :cond_4

    move v2, v0

    :cond_4
    iput v2, v4, Lg/bwg;->c:I

    iput v0, v4, Lg/bwg;->d:I

    new-instance v0, Lg/czm;

    iget-object v2, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-direct {v0, v2, v4, p0}, Lg/czm;-><init>(Landroid/content/Context;Lg/bwg;Lg/cwg;)V

    iput-object v0, p0, Lg/cwg;->q:Lg/czm;

    const/4 v0, -0x2

    const/16 v2, 0xa

    invoke-static {v0, v0, v2}, Lg/tn;->q(III)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eq v3, v1, :cond_5

    const/16 v1, 0x9

    goto :goto_2

    :cond_5
    const/16 v1, 0xb

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzg:Z

    invoke-virtual {p0, p1, v1}, Lg/cwg;->ad(ZZ)V

    iget-object p1, p0, Lg/cwg;->m:Lg/ats;

    iget-object v1, p0, Lg/cwg;->q:Lg/czm;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lg/cwg;->q:Lg/czm;

    invoke-virtual {p0, p1}, Lg/cwg;->ac(Landroid/view/View;)V

    return-void
.end method

.method public final zzE()V
    .locals 3

    iget-object v0, p0, Lg/cwg;->x:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lg/cwg;->d:Z

    iget-object v1, p0, Lg/cwg;->h:Lg/aku;

    if-eqz v1, :cond_0

    sget-object v2, Lg/esy;->a:Lg/gfx;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lg/cwg;->h:Lg/aku;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzF()V
    .locals 6

    iget-object v0, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lg/cwg;->r:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cwg;->r:Z

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_3

    iget v1, p0, Lg/cwg;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzZ(I)V

    iget-object v0, p0, Lg/cwg;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/cwg;->d:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaC()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzeP:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lg/cwg;->o:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lg/fim;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lg/fim;->zzdq()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lg/aku;

    const/4 v3, 0x3

    invoke-direct {v1, v3, p0}, Lg/aku;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lg/cwg;->h:Lg/aku;

    sget-object v3, Lg/esy;->a:Lg/gfx;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzbe:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lg/cwg;->zzc()V

    :cond_4
    :goto_3
    return-void
.end method

.method public final zzH()Z
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lg/cwg;->g:I

    iget-object v1, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zziz:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->goBack()V

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaH()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v2, "onbackblocked"

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return v0
.end method

.method public final zzb()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lg/cwg;->g:I

    iget-object v0, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v1, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 5

    iget-boolean v0, p0, Lg/cwg;->o:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cwg;->o:Z

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lg/cwg;->m:Lg/ats;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lg/cwg;->p:Lg/fkn;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v0, v0, Lg/fkn;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzan(Landroid/content/Context;)V

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaq(Z)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzmq:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lg/cwg;->p:Lg/fkn;

    iget-object v0, v0, Lg/fkn;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lg/cwg;->p:Lg/fkn;

    iget v4, v3, Lg/fkn;->b:I

    iget-object v3, v3, Lg/fkn;->c:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lg/cwg;->p:Lg/fkn;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzan(Landroid/content/Context;)V

    :cond_3
    :goto_0
    iput-object v1, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    :cond_4
    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lg/fim;

    if-eqz v0, :cond_5

    iget v1, p0, Lg/cwg;->g:I

    invoke-interface {v0, v1}, Lg/fim;->zzdu(I)V

    :cond_5
    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzQ()Lcom/google/android/gms/internal/ads/zzeew;

    move-result-object v0

    iget-object v1, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lg/cwg;->z(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeew;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final zzg()V
    .locals 3

    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lg/cwg;->y:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzj:I

    invoke-virtual {p0, v0}, Lg/cwg;->ab(I)V

    :cond_0
    iget-object v0, p0, Lg/cwg;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/cwg;->s:Landroid/app/Activity;

    iget-object v2, p0, Lg/cwg;->m:Lg/ats;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cwg;->w:Z

    iget-object v0, p0, Lg/cwg;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lg/cwg;->f:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lg/cwg;->c:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lg/cwg;->c:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/cwg;->y:Z

    return-void
.end method

.method public final zzh(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final zzi()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/cwg;->g:I

    return-void
.end method

.method public final zzk(Lg/bjq;)V
    .locals 0

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lg/cwg;->aa(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public zzl(Landroid/os/Bundle;)V
    .locals 8

    iget-boolean v0, p0, Lg/cwg;->w:Z

    const/4 v1, 0x1

    iget-object v2, p0, Lg/cwg;->s:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v3, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lg/cwg;->t:Z

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v4

    iput-object v4, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v4, :cond_11

    iget-boolean v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzw:Z

    if-eqz v4, :cond_3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_2

    invoke-static {v2}, Lg/bbd;->g(Landroid/app/Activity;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x80000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    :goto_1
    iget-object v4, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzm:Lg/akx;

    iget v4, v4, Lg/akx;->clientJarVersion:I

    const v5, 0x7270e0

    if-le v4, v5, :cond_4

    iput v3, p0, Lg/cwg;->g:I

    :cond_4
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "shouldCallOnOverlayOpened"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lg/cwg;->e:Z

    :cond_5
    iget-object v4, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzo:Lg/fbp;

    const/4 v6, 0x5

    if-eqz v5, :cond_6

    iget-boolean v7, v5, Lg/fbp;->zza:Z

    iput-boolean v7, p0, Lg/cwg;->i:Z

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_6
    iget v7, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    if-ne v7, v6, :cond_7

    iput-boolean v1, p0, Lg/cwg;->i:Z

    :goto_2
    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    if-eq v4, v6, :cond_8

    iget v4, v5, Lg/fbp;->zzf:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    new-instance v4, Lg/bbu;

    const/4 v5, 0x2

    invoke-direct {v4, v5, p0}, Lg/bbu;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4}, Lg/bgf;->zzb()Lg/dcy;

    goto :goto_3

    :cond_7
    iput-boolean v0, p0, Lg/cwg;->i:Z

    :cond_8
    :goto_3
    if-nez p1, :cond_c

    iget-boolean p1, p0, Lg/cwg;->e:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzt:Lcom/google/android/gms/internal/ads/zzcwz;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwz;->zze()V

    :cond_9
    iget-object p1, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lg/fim;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lg/fim;->zzdr()V

    :cond_a
    iget-object p1, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    if-eq v4, v1, :cond_c

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzb:Lg/evo;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lg/evo;->onAdClicked()V

    :cond_b
    iget-object p1, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzu:Lcom/google/android/gms/internal/ads/zzdel;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdel;->zzdG()V

    :cond_c
    new-instance p1, Lg/ats;

    iget-object v4, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzn:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzm:Lg/akx;

    iget-object v7, v7, Lg/akx;->afmaVersion:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzs:Ljava/lang/String;

    invoke-direct {p1, v2, v5, v7, v4}, Lg/ats;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lg/cwg;->m:Lg/ats;

    const/16 v4, 0x3e8

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->k:Lg/lp;

    invoke-virtual {p1, v2}, Lg/feo;->h(Landroid/app/Activity;)V

    iget-object p1, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    if-eq v4, v1, :cond_10

    const/4 v5, 0x2

    if-eq v4, v5, :cond_f

    const/4 p1, 0x3

    if-eq v4, p1, :cond_e

    if-ne v4, v6, :cond_d

    invoke-virtual {p0, v0}, Lg/cwg;->ae(Z)V

    return-void

    :cond_d
    new-instance p1, Lg/bij;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-virtual {p0, v1}, Lg/cwg;->ae(Z)V

    return-void

    :cond_f
    new-instance v1, Lg/fkn;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-direct {v1, p1}, Lg/fkn;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;)V

    iput-object v1, p0, Lg/cwg;->p:Lg/fkn;

    invoke-virtual {p0, v0}, Lg/cwg;->ae(Z)V

    return-void

    :cond_10
    invoke-virtual {p0, v0}, Lg/cwg;->ae(Z)V

    return-void

    :cond_11
    new-instance p1, Lg/bij;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lg/bij; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    iput v3, p0, Lg/cwg;->g:I

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zzm()V
    .locals 2

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lg/cwg;->m:Lg/ats;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzF()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Lg/cwg;->zzF()V

    return-void
.end method

.method public final zzo()V
    .locals 2

    invoke-virtual {p0}, Lg/cwg;->zzg()V

    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lg/fim;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/fim;->zzdk()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzeR:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/cwg;->p:Lg/fkn;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->onPause()V

    :cond_2
    invoke-virtual {p0}, Lg/cwg;->zzF()V

    return-void
.end method

.method public final zzp(I[Ljava/lang/String;[I)V
    .locals 2

    const/16 v0, 0x3039

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeec;->zze()Lcom/google/android/gms/internal/ads/zzeeb;

    move-result-object p1

    iget-object v0, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeeb;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzeeb;

    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeeb;->zzb(Lg/cwg;)Lcom/google/android/gms/internal/ads/zzeeb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeb;->zze()Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzv:Lcom/google/android/gms/internal/ads/zzbsz;

    new-instance v1, Lg/bpp;

    invoke-direct {v1, p1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzbsz;->zzf([Ljava/lang/String;[ILg/bjq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final zzq()V
    .locals 0

    return-void
.end method

.method public final zzr()V
    .locals 2

    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lg/fim;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/fim;->zzdH()V

    :cond_0
    iget-object v0, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/cwg;->aa(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzeR:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaE()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->onResume()V

    return-void

    :cond_1
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final zzs(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lg/cwg;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final zzt()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzeR:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->onResume()V

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzu()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzeR:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/cwg;->s:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/cwg;->p:Lg/fkn;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->onPause()V

    :cond_1
    invoke-virtual {p0}, Lg/cwg;->zzF()V

    return-void
.end method

.method public final zzv()V
    .locals 1

    iget-object v0, p0, Lg/cwg;->u:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lg/fim;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/fim;->zzdt()V

    :cond_0
    return-void
.end method

.method public final zzx()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cwg;->w:Z

    return-void
.end method
