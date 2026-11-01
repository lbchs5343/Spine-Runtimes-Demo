.class public final Lg/aan;
.super Lg/cwp;
.source "SourceFile"

# interfaces
.implements Lg/fwr;
.implements Lg/dko;


# static fields
.field public static final a:Lg/gzt;


# instance fields
.field public b:Lg/axs;

.field public d:Lg/cdq;

.field public final e:Landroid/os/Handler;

.field public final f:Lg/gzt;

.field public final g:Ljava/util/Set;

.field public final h:Landroid/content/Context;

.field public final i:Lg/daw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/ayc;->a:Lg/gzt;

    sput-object v0, Lg/aan;->a:Lg/gzt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/dae;Lg/daw;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lg/cwp;-><init>(I)V

    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    iput-object p1, p0, Lg/aan;->h:Landroid/content/Context;

    iput-object p2, p0, Lg/aan;->e:Landroid/os/Handler;

    iput-object p3, p0, Lg/aan;->i:Lg/daw;

    iget-object p1, p3, Lg/daw;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lg/aan;->g:Ljava/util/Set;

    sget-object p1, Lg/aan;->a:Lg/gzt;

    iput-object p1, p0, Lg/aan;->f:Lg/gzt;

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 8

    iget-object v0, p0, Lg/aan;->d:Lg/cdq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "<<default account>>"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v0, Lg/cdq;->ar:Lg/daw;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v4, v1, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lg/adw;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lg/abg;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v1}, Lg/ckd;->k(Ljava/lang/Object;)V

    sget-object v5, Lg/abg;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v6, Lg/abg;->a:Lg/abg;

    if-nez v6, :cond_0

    new-instance v6, Lg/abg;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Lg/abg;-><init>(Landroid/content/Context;)V

    sput-object v6, Lg/abg;->a:Lg/abg;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lg/abg;->a:Lg/abg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v5, "defaultGoogleSignInAccount"

    invoke-virtual {v1, v5}, Lg/abg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "googleSignInAccount:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lg/abg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zab(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    :cond_2
    :goto_2
    move-object v1, v3

    :goto_3
    new-instance v5, Lg/fty;

    iget-object v6, v0, Lg/cdq;->ap:Ljava/lang/Integer;

    invoke-static {v6}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v4, v6, v1}, Lg/fty;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {v0}, Lg/adw;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lg/cta;

    new-instance v1, Lg/eto;

    invoke-direct {v1, v2, v5}, Lg/eto;-><init>(ILg/fty;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iget-object v5, v0, Lg/ob;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v5, Lg/gui;->a:I

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v4, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, v0, Lg/ob;->_cb:Landroid/os/IBinder;

    const/16 v6, 0xc

    invoke-interface {v0, v6, v4, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    :try_start_7
    new-instance v1, Lg/gpi;

    new-instance v4, Lg/nk;

    const/16 v5, 0x8

    invoke-direct {v4, v5, v3}, Lg/nk;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v1, v2, v4, v3}, Lg/gpi;-><init>(ILg/nk;Lg/cnd;)V

    new-instance v2, Lg/efr;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3, v1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v1, p0, Lg/aan;->e:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    const-string v1, "SignInClientImpl"

    const-string v2, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public final onConnectionFailed(Lg/nk;)V
    .locals 1

    iget-object v0, p0, Lg/aan;->b:Lg/axs;

    invoke-virtual {v0, p1}, Lg/axs;->l(Lg/nk;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    iget-object v0, p0, Lg/aan;->b:Lg/axs;

    iget-object v1, v0, Lg/axs;->f:Ljava/lang/Object;

    check-cast v1, Lg/ecd;

    iget-object v1, v1, Lg/ecd;->g:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lg/axs;->d:Ljava/lang/Object;

    check-cast v0, Lg/dzu;

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fbd;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lg/fbd;->k:Z

    if-eqz v1, :cond_0

    new-instance p1, Lg/nk;

    const/16 v1, 0x11

    invoke-direct {p1, v1}, Lg/nk;-><init>(I)V

    invoke-virtual {v0, p1}, Lg/fbd;->w(Lg/nk;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lg/fbd;->onConnectionSuspended(I)V

    :cond_1
    return-void
.end method
