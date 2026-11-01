.class public Lcom/ss/android/downloadlib/addownload/no;
.super Ljava/lang/Object;


# static fields
.field private static cd:Lcom/ss/android/download/api/config/mp;

.field private static d:Landroid/content/Context;

.field public static final dq:Lorg/json/JSONObject;

.field private static f:Lcom/ss/android/download/api/config/i;

.field private static fw:Lcom/ss/android/download/api/config/q;

.field private static gh:Lcom/ss/android/download/api/config/f;

.field private static i:Lcom/ss/android/download/api/config/fw;

.field private static ia:Lcom/ss/android/download/api/config/o;

.field private static ig:Lcom/ss/android/download/api/config/p;

.field private static iw:Lcom/ss/android/download/api/config/ia;

.field private static jy:Lcom/ss/android/download/api/config/no;

.field private static kk:Lcom/ss/android/download/api/model/dq;

.field private static le:Lcom/ss/android/download/api/config/gh;

.field private static mn:Lcom/ss/android/download/api/config/kk;

.field private static mp:Lcom/ss/android/download/api/config/s;

.field private static no:Lcom/ss/android/socialbase/appdownloader/ox/ia;

.field private static o:Lcom/ss/android/download/api/config/d;

.field private static ox:Lcom/ss/android/download/api/config/mn;

.field private static p:Lcom/ss/android/download/api/config/ox;

.field private static q:Lcom/ss/android/download/api/config/jy;

.field private static r:Lcom/ss/android/download/api/d/dq;

.field private static s:Lcom/ss/android/download/api/config/ig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/no;->dq:Lorg/json/JSONObject;

    return-void
.end method

.method public static cd()Lcom/ss/android/download/api/config/fw;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->i:Lcom/ss/android/download/api/config/fw;

    return-object v0
.end method

.method public static d()Lcom/ss/android/download/api/config/ox;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->p:Lcom/ss/android/download/api/config/ox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/downloadlib/addownload/no$1;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/no$1;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/no;->p:Lcom/ss/android/download/api/config/ox;

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->p:Lcom/ss/android/download/api/config/ox;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->d:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static dq()Lcom/ss/android/download/api/config/mn;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->ox:Lcom/ss/android/download/api/config/mn;

    return-object v0
.end method

.method public static dq(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->d:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dq(Lcom/ss/android/download/api/config/d;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->o:Lcom/ss/android/download/api/config/d;

    return-void
.end method

.method public static dq(Lcom/ss/android/download/api/config/fw;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->i:Lcom/ss/android/download/api/config/fw;

    return-void
.end method

.method public static dq(Lcom/ss/android/download/api/config/ia;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->iw:Lcom/ss/android/download/api/config/ia;

    return-void
.end method

.method public static dq(Lcom/ss/android/download/api/config/ig;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->s:Lcom/ss/android/download/api/config/ig;

    return-void
.end method

.method public static dq(Lcom/ss/android/download/api/config/kk;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->mn:Lcom/ss/android/download/api/config/kk;

    return-void
.end method

.method public static dq(Lcom/ss/android/download/api/config/mn;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->ox:Lcom/ss/android/download/api/config/mn;

    return-void
.end method

.method public static dq(Lcom/ss/android/download/api/config/o;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->ia:Lcom/ss/android/download/api/config/o;

    return-void
.end method

.method public static dq(Lcom/ss/android/download/api/d/dq;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->r:Lcom/ss/android/download/api/d/dq;

    return-void
.end method

.method public static dq(Lcom/ss/android/download/api/model/dq;)V
    .locals 0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/no;->kk:Lcom/ss/android/download/api/model/dq;

    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/appdownloader/p;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public static f()Lcom/ss/android/download/api/config/s;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->mp:Lcom/ss/android/download/api/config/s;

    return-object v0
.end method

.method public static fw()Lcom/ss/android/download/api/config/no;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->jy:Lcom/ss/android/download/api/config/no;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static gh()Lcom/ss/android/download/api/config/i;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->f:Lcom/ss/android/download/api/config/i;

    return-object v0
.end method

.method public static i()Lcom/ss/android/download/api/config/gh;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->le:Lcom/ss/android/download/api/config/gh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/downloadlib/addownload/no$5;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/no$5;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/no;->le:Lcom/ss/android/download/api/config/gh;

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->le:Lcom/ss/android/download/api/config/gh;

    return-object v0
.end method

.method public static ia()Lcom/ss/android/download/api/config/f;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->gh:Lcom/ss/android/download/api/config/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/downloadlib/addownload/no$3;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/no$3;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/no;->gh:Lcom/ss/android/download/api/config/f;

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->gh:Lcom/ss/android/download/api/config/f;

    return-object v0
.end method

.method public static ig()Lcom/ss/android/download/api/config/d;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->o:Lcom/ss/android/download/api/config/d;

    return-object v0
.end method

.method public static iw()Lcom/ss/android/socialbase/appdownloader/ox/ia;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->no:Lcom/ss/android/socialbase/appdownloader/ox/ia;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/downloadlib/addownload/no$2;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/no$2;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/no;->no:Lcom/ss/android/socialbase/appdownloader/ox/ia;

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->no:Lcom/ss/android/socialbase/appdownloader/ox/ia;

    return-object v0
.end method

.method public static jy()Lcom/ss/android/download/api/config/p;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->ig:Lcom/ss/android/download/api/config/p;

    return-object v0
.end method

.method public static k()Z
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->ox:Lcom/ss/android/download/api/config/mn;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->iw:Lcom/ss/android/download/api/config/ia;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->ia:Lcom/ss/android/download/api/config/o;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->o:Lcom/ss/android/download/api/config/d;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->i:Lcom/ss/android/download/api/config/fw;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static kk()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->ia:Lcom/ss/android/download/api/config/o;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ss/android/download/api/config/o;->dq()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->ia:Lcom/ss/android/download/api/config/o;

    invoke-interface {v0}, Lcom/ss/android/download/api/config/o;->dq()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->dq:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static le()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    if-ne v0, v2, :cond_0

    invoke-static {}, Lg/aft;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-le v0, v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "default_save_dir_name"

    const-string v3, "ByteDownload"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static mn()Lcom/ss/android/download/api/config/jy;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->q:Lcom/ss/android/download/api/config/jy;

    return-object v0
.end method

.method public static mp()Lcom/ss/android/download/api/config/q;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->fw:Lcom/ss/android/download/api/config/q;

    return-object v0
.end method

.method public static no()Lcom/ss/android/download/api/config/mp;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->cd:Lcom/ss/android/download/api/config/mp;

    return-object v0
.end method

.method public static o()Lcom/ss/android/download/api/model/dq;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->kk:Lcom/ss/android/download/api/model/dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/download/api/model/dq$dq;

    invoke-direct {v0}, Lcom/ss/android/download/api/model/dq$dq;-><init>()V

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/dq$dq;->dq()Lcom/ss/android/download/api/model/dq;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/addownload/no;->kk:Lcom/ss/android/download/api/model/dq;

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->kk:Lcom/ss/android/download/api/model/dq;

    return-object v0
.end method

.method public static ox()Lcom/ss/android/download/api/config/ig;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->s:Lcom/ss/android/download/api/config/ig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/download/api/dq/dq;

    invoke-direct {v0}, Lcom/ss/android/download/api/dq/dq;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/no;->s:Lcom/ss/android/download/api/config/ig;

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->s:Lcom/ss/android/download/api/config/ig;

    return-object v0
.end method

.method public static p()Lcom/ss/android/download/api/config/ia;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->iw:Lcom/ss/android/download/api/config/ia;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    const-string v0, "1.7.0"

    return-object v0
.end method

.method public static r()Lcom/ss/android/download/api/d/dq;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->r:Lcom/ss/android/download/api/d/dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/downloadlib/addownload/no$4;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/no$4;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/no;->r:Lcom/ss/android/download/api/d/dq;

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->r:Lcom/ss/android/download/api/d/dq;

    return-object v0
.end method

.method public static s()Lcom/ss/android/download/api/config/kk;
    .locals 1

    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->mn:Lcom/ss/android/download/api/config/kk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/download/api/dq/d;

    invoke-direct {v0}, Lcom/ss/android/download/api/dq/d;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/no;->mn:Lcom/ss/android/download/api/config/kk;

    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/addownload/no;->mn:Lcom/ss/android/download/api/config/kk;

    return-object v0
.end method
