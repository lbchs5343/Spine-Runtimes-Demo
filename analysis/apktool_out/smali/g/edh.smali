.class public final Lg/edh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;

.field public static b:Z


# instance fields
.field public final c:[Ljava/lang/String;

.field public final d:I

.field public e:Ljava/lang/String;

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/edh;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    sput-boolean v1, Lg/edh;->b:Z

    new-instance v1, Lg/edh;

    const-string v2, "com.SecShell.SecShell.ApplicationWrapper"

    const-string v3, "com.secshell.shellwrapper.SecAppWrapper"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200c5

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libSecShell_x86.so"

    const-string v5, "libSecShell_art.so"

    const-string v6, "libsecexe.so"

    const-string v7, "libsecmain.so"

    const-string v8, "libSecShell.so"

    filled-new-array {v6, v7, v8, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "com.secneo.apkwrapper.AW"

    const-string v3, "com.secneo.apkwrapper.ApplicationWrapper"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200c6

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libDexHelper.so"

    const-string v6, "libDexHelper-x86.so"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "com.stub.StubApp"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200c2

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v16, "libjgdtc_x64.so"

    const-string v17, "libjgdtc_art.so"

    const-string v6, "libprotectClass.so"

    const-string v7, "libjiagu.so"

    const-string v8, "libjiagu_ls.so"

    const-string v9, "libjiagu_art.so"

    const-string v10, "libjiagu_x86.so"

    const-string v11, "libjiagu_a64.so"

    const-string v12, "libjiagu_x64.so"

    const-string v13, "libjgdtc.so"

    const-string v14, "libjgdtc_x86.so"

    const-string v15, "libjgdtc_a64.so"

    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "s.h.e.l.l.S"

    const-string v3, "com.shell.SuperApplication"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200c9

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libexecmain.so"

    const-string v6, "ijiami.dat"

    const-string v7, "libexec.so"

    filled-new-array {v7, v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libegis.so"

    const-string v3, "libNSaferOnly.so"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200d1

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libedog.so"

    const-string v3, "libfdog.so"

    const-string v6, "libchaosvmp.so"

    const-string v8, "libcdog.so"

    const-string v9, "libddog.so"

    filled-new-array {v6, v8, v9, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200cc

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libnqshield.so"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200d2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "com.tencent.StubShell.TxAppEntry"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200ce

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libtup.so"

    const-string v6, "libshell.so"

    const-string v8, "liblegudb.so"

    filled-new-array {v8, v2, v7, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "com.baidu.protect.StubApplication"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200c4

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libbaiduprotect_x86.so"

    const-string v6, "libbaiduprotect_art.so"

    const-string v7, "libbaiduprotect.so"

    filled-new-array {v7, v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "c.b.c.b"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200cf

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libitsec.so"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "com.Kiwisec.KiwiSecApplication"

    const-string v3, "com.Kiwisec.ProxyApplication"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200ca

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libkwslinker.so"

    const-string v6, "libkwslinker.dat"

    const-string v7, "libkwscmm.so"

    const-string v8, "libkwscr.so"

    filled-new-array {v7, v8, v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "cn.securitystack.stee.AppStub"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200c8

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libx3g.so"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "com.linchaolong.apktoolplus.jiagu.ProxyApplication"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200c3

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libapktoolplus_jiagu.so"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "com.coral.util.StubApplication"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200c7

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libreincp_x86.so"

    const-string v6, "libreincp.so"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "com.mogosec.AppMgr"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200cb

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libmogosec_sodecrypt.so"

    const-string v4, "libmogosecurity.so"

    const-string v6, "libcmvmp.so"

    const-string v7, "libmogosec_dex.so"

    filled-new-array {v6, v7, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "MyWrapperProxyApplication"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200d0

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libtosprotection.armeabi-v7a.so"

    const-string v4, "libtosprotection.x86.so"

    const-string v6, "libtosprotection.armeabi.so"

    filled-new-array {v6, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg/edh;

    const-string v2, "libnesec.so"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200cd

    invoke-direct {v1, v3, v5, v2}, Lg/edh;-><init>(II[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/edh;->d:I

    iput p2, p0, Lg/edh;->f:I

    iput-object p3, p0, Lg/edh;->c:[Ljava/lang/String;

    return-void
.end method
