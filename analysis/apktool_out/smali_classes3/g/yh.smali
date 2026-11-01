.class public final Lg/yh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/cyg;


# direct methods
.method public constructor <init>(Lg/bsz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lg/bsz;->m:Lg/cyg;

    iput-object p1, p0, Lg/yh;->a:Lg/cyg;

    return-void
.end method

.method public synthetic constructor <init>(Lg/cyg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/yh;->a:Lg/cyg;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 5

    iget-object v0, p0, Lg/yh;->a:Lg/cyg;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-static {v2}, Lg/chk;->c(Landroid/content/Context;)Lg/ccb;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Failed to get PackageManager for Install Referrer Play Store compatibility check"

    invoke-virtual {v2, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    const-string v3, "com.android.vending"

    const/16 v4, 0x80

    invoke-virtual {v2, v4, v3}, Lg/ccb;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x4d17ab4

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :goto_0
    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Failed to retrieve Play Store version for Install Referrer"

    invoke-virtual {v0, v2, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method
