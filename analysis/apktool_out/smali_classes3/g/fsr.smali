.class public final Lg/fsr;
.super Lg/cwp;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/Handler;


# instance fields
.field public final b:Landroid/content/ComponentName;

.field public d:Z

.field public final e:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lg/fsr;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lg/ajy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lg/cwp;-><init>(I)V

    const-string v0, "moe.shizuku.server.IShizukuServiceConnection"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/fsr;->e:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fsr;->d:Z

    iget-object p1, p1, Lg/ajy;->c:Landroid/content/ComponentName;

    iput-object p1, p0, Lg/fsr;->b:Landroid/content/ComponentName;

    return-void
.end method
