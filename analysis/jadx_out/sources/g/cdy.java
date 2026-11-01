package g;

import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.pangle.ZeusPluginEventCallback;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class cdy extends ghz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f12715a = 0;

    /* renamed from: b, reason: collision with root package name */
    public efc f12716b;

    /* renamed from: c, reason: collision with root package name */
    public fyl f12717c;

    /* renamed from: d, reason: collision with root package name */
    public fvy f12718d;

    /* renamed from: e, reason: collision with root package name */
    public cdy f12719e;

    /* renamed from: f, reason: collision with root package name */
    public bta f12720f;

    public static String g(elf elfVar, int i) {
        if (i >= 1500 && i <= 2500) {
            return "b" + (i + AVMDLDataLoader.AVMDLErrorIsInvalidContentLenth);
        }
        if (i != 1301) {
            return Integer.toString(i);
        }
        return i + "-" + elfVar.getString(R.string.network_error);
    }

    public static void h(cdy cdyVar, btp btpVar, int i) {
        cdyVar.getClass();
        btpVar.o(i);
    }

    public static void i(cdy cdyVar, btp btpVar) {
        cdyVar.getClass();
        btpVar.i(null);
    }

    public static int j(int i) {
        if (i == 1) {
            return 2001;
        }
        if (i == 2) {
            return 2002;
        }
        if (i == 3) {
            return 2003;
        }
        if (i == 4) {
            return 2004;
        }
        if (i == 5) {
            return 2005;
        }
        if (i == 6) {
            return 2006;
        }
        if (i == 7) {
            return 2007;
        }
        if (i == 8) {
            return 2008;
        }
        if (i == -1) {
            return 1999;
        }
        if (i == -2) {
            return 1998;
        }
        if (i == -3) {
            return 1997;
        }
        return ZeusPluginEventCallback.EVENT_START_LOAD;
    }

    public final void k(btp btpVar) {
        tq bpyVar;
        efc efcVar = this.f12716b;
        if (efcVar.f15423d != null) {
            return;
        }
        cdy cdyVar = efcVar.f15422c;
        feb febVar = new feb(cdyVar);
        febVar.f16644c = efcVar;
        febVar.f16642a = new cuf(8);
        if (cdyVar == null) {
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
        if (febVar.f16644c == null) {
            throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
        }
        if (febVar.f16642a == null) {
            throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
        }
        febVar.f16642a.getClass();
        if (febVar.f16644c != null) {
            cuf cufVar = febVar.f16642a;
            eoy eoyVar = febVar.f16644c;
            bpyVar = febVar.d() ? new bpy(cufVar, cdyVar, eoyVar, febVar) : new tq(cufVar, cdyVar, eoyVar, febVar);
        } else {
            cuf cufVar2 = febVar.f16642a;
            bpyVar = febVar.d() ? new bpy(cufVar2, cdyVar, febVar) : new tq(cufVar2, cdyVar, febVar);
        }
        efcVar.f15423d = bpyVar;
        bpyVar.ap(new eie(9, btpVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(btp btpVar) {
        edm edmVar;
        boolean z = false;
        vg vgVar = new vg(this, new AtomicInteger(0), new AtomicInteger(0), buj.be(0, 10000) + 892304, btpVar);
        fyl fylVar = this.f12717c;
        fylVar.getClass();
        if (TextUtils.isEmpty("a")) {
            fyl.e(vgVar, 1101, null);
        } else if (fyl.f17638a.contains("a")) {
            fyl.f(vgVar);
        } else {
            cdy cdyVar = fylVar.f17639b;
            if (cdyVar != null && !TextUtils.isEmpty("a")) {
                String bm = acr.bm(cdyVar.getSharedPreferences("TrineaAndroidCommon", 0).getString("dpa-ati", null));
                if (!TextUtils.isEmpty(bm)) {
                    try {
                        long parseLong = Long.parseLong(bm);
                        String aa = acr.aa(parseLong, cdyVar.getSharedPreferences("TrineaAndroidCommon", 0).getString("dpa-ame", null));
                        String ah = acr.ah(parseLong, aa, cdyVar.getSharedPreferences("TrineaAndroidCommon", 0).getString("dpa-ack", null));
                        edmVar = new edm();
                        edmVar.f15365c = ah;
                        edmVar.f15364b = parseLong;
                        edmVar.f15363a = aa;
                    } catch (Exception e2) {
                        erl.ai("is psd NumberFormatException", e2);
                    }
                    if (edmVar != null) {
                        String str = (String) edmVar.f15365c;
                        if (edmVar.f15364b >= 0 && !TextUtils.isEmpty((String) edmVar.f15363a) && !TextUtils.isEmpty(str)) {
                            fylVar.h(str, new fpd(fylVar, vgVar, edmVar, 1));
                        }
                    }
                    fyl.e(vgVar, 1000, null);
                }
            }
            edmVar = null;
            if (edmVar != null) {
            }
            fyl.e(vgVar, 1000, null);
        }
        efc efcVar = this.f12716b;
        efcVar.getClass();
        if (TextUtils.isEmpty("a")) {
            vgVar.o(1101);
            return;
        }
        if (efc.f15420a.contains("a")) {
            vgVar.i(null);
            return;
        }
        if (efcVar.f15423d == null) {
            vgVar.o(1991);
            return;
        }
        if (!TextUtils.isEmpty("a") && efc.f15420a.contains("a")) {
            vgVar.i(null);
            return;
        }
        tq tqVar = efcVar.f15423d;
        fdy fdyVar = new fdy(10, efcVar, vgVar, z);
        tqVar.getClass();
        if (tq.ae(new fal(tqVar, fdyVar), 30000L, new efr(19, tqVar, fdyVar, z), tqVar.ax(), tqVar.aw()) == null) {
            ejd au = tqVar.au();
            tqVar.ag(hm.MISSING_RESULT_FROM_EXECUTE_ASYNC, 9, au);
            duz duzVar = fkz.f16953g;
            fdyVar.i(au, fun.f17435a);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f12720f;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.f12719e = this;
        cdy cdyVar = this.f12719e;
        efc efcVar = new efc();
        efcVar.f15422c = cdyVar;
        this.f12716b = efcVar;
        cdy cdyVar2 = this.f12719e;
        fyl fylVar = new fyl();
        fylVar.f17639b = cdyVar2;
        boolean z = true;
        if (!eyt.ab(cdyVar2, "com.eg.android.AlipayGphone", true) && !cux.aj(cdyVar2) && !eyt.ab(cdyVar2, "com.tencent.mm", true) && !eyt.ab(cdyVar2, "com.taobao.taobao", true)) {
            z = false;
        }
        fylVar.f17640c = z;
        this.f12717c = fylVar;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        tq tqVar = this.f12716b.f15423d;
        if (tqVar != null) {
            tqVar.bb();
        }
        this.f12717c.getClass();
        super.onDestroy();
    }
}
