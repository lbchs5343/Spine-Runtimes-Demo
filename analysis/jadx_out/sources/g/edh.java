package g;

import cn.trinea.android.developertools.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class edh {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList f15352a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f15353b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f15354c;

    /* renamed from: d, reason: collision with root package name */
    public final int f15355d;

    /* renamed from: e, reason: collision with root package name */
    public String f15356e;

    /* renamed from: f, reason: collision with root package name */
    public final int f15357f;

    static {
        ArrayList arrayList = new ArrayList();
        f15352a = arrayList;
        f15353b = false;
        arrayList.add(new edh(R.string.app_p_bangcle, 1, new String[]{"com.SecShell.SecShell.ApplicationWrapper", "com.secshell.shellwrapper.SecAppWrapper"}));
        arrayList.add(new edh(R.string.app_p_bangcle, 3, new String[]{"libsecexe.so", "libsecmain.so", "libSecShell.so", "libSecShell_x86.so", "libSecShell_art.so"}));
        arrayList.add(new edh(R.string.app_p_bangcle_enter, 1, new String[]{"com.secneo.apkwrapper.AW", "com.secneo.apkwrapper.ApplicationWrapper"}));
        arrayList.add(new edh(R.string.app_p_bangcle_enter, 3, new String[]{"libDexHelper.so", "libDexHelper-x86.so"}));
        arrayList.add(new edh(R.string.app_p_360, 1, new String[]{"com.stub.StubApp"}));
        arrayList.add(new edh(R.string.app_p_360, 3, new String[]{"libprotectClass.so", "libjiagu.so", "libjiagu_ls.so", "libjiagu_art.so", "libjiagu_x86.so", "libjiagu_a64.so", "libjiagu_x64.so", "libjgdtc.so", "libjgdtc_x86.so", "libjgdtc_a64.so", "libjgdtc_x64.so", "libjgdtc_art.so"}));
        arrayList.add(new edh(R.string.app_p_ijiami, 1, new String[]{"s.h.e.l.l.S", "com.shell.SuperApplication"}));
        arrayList.add(new edh(R.string.app_p_ijiami, 3, new String[]{"libexec.so", "libexecmain.so", "ijiami.dat"}));
        arrayList.add(new edh(R.string.app_p_tongfudun, 3, new String[]{"libegis.so", "libNSaferOnly.so"}));
        arrayList.add(new edh(R.string.app_p_najia, 3, new String[]{"libchaosvmp.so", "libcdog.so", "libddog.so", "libedog.so", "libfdog.so"}));
        arrayList.add(new edh(R.string.app_p_wangqin, 3, new String[]{"libnqshield.so"}));
        arrayList.add(new edh(R.string.app_p_qq, 1, new String[]{"com.tencent.StubShell.TxAppEntry"}));
        arrayList.add(new edh(R.string.app_p_qq, 3, new String[]{"liblegudb.so", "libtup.so", "libexec.so", "libshell.so"}));
        arrayList.add(new edh(R.string.app_p_baidu, 1, new String[]{"com.baidu.protect.StubApplication"}));
        arrayList.add(new edh(R.string.app_p_baidu, 3, new String[]{"libbaiduprotect.so", "libbaiduprotect_x86.so", "libbaiduprotect_art.so"}));
        arrayList.add(new edh(R.string.app_p_secidea, 1, new String[]{"c.b.c.b"}));
        arrayList.add(new edh(R.string.app_p_secidea, 3, new String[]{"libitsec.so"}));
        arrayList.add(new edh(R.string.app_p_jiwei, 1, new String[]{"com.Kiwisec.KiwiSecApplication", "com.Kiwisec.ProxyApplication"}));
        arrayList.add(new edh(R.string.app_p_jiwei, 3, new String[]{"libkwscmm.so", "libkwscr.so", "libkwslinker.so", "libkwslinker.dat"}));
        arrayList.add(new edh(R.string.app_p_dingxiang, 1, new String[]{"cn.securitystack.stee.AppStub"}));
        arrayList.add(new edh(R.string.app_p_dingxiang, 3, new String[]{"libx3g.so"}));
        arrayList.add(new edh(R.string.app_p_apktoolplus, 1, new String[]{"com.linchaolong.apktoolplus.jiagu.ProxyApplication"}));
        arrayList.add(new edh(R.string.app_p_apktoolplus, 3, new String[]{"libapktoolplus_jiagu.so"}));
        arrayList.add(new edh(R.string.app_p_coralsec, 1, new String[]{"com.coral.util.StubApplication"}));
        arrayList.add(new edh(R.string.app_p_coralsec, 3, new String[]{"libreincp_x86.so", "libreincp.so"}));
        arrayList.add(new edh(R.string.app_p_moguyun, 1, new String[]{"com.mogosec.AppMgr"}));
        arrayList.add(new edh(R.string.app_p_moguyun, 3, new String[]{"libcmvmp.so", "libmogosec_dex.so", "libmogosec_sodecrypt.so", "libmogosecurity.so"}));
        arrayList.add(new edh(R.string.app_p_tencent_yaq, 2, new String[]{"MyWrapperProxyApplication"}));
        arrayList.add(new edh(R.string.app_p_tencent_yaq, 3, new String[]{"libtosprotection.armeabi.so", "libtosprotection.armeabi-v7a.so", "libtosprotection.x86.so"}));
        arrayList.add(new edh(R.string.app_p_netease_yidun, 3, new String[]{"libnesec.so"}));
    }

    public edh(int i, int i2, String[] strArr) {
        this.f15355d = i;
        this.f15357f = i2;
        this.f15354c = strArr;
    }
}
